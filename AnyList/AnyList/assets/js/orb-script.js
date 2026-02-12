Orb.hooks = {};

function Orb() {}

function Ouroboros() {

	'use strict';

	let subscribersList = [];

	const Instigation = Object.freeze({
		Trigger: 	1,
		Navigate: 	2
	});

	/* close all event sources when navigating away */
	window.onbeforeunload = function() {
		for (const sub of subscribersList) {
			sub.destroy();
		}
		//subscribersList.length = 0;
	}

  function shouldScroll(subElem) {
    const scroll = subElem.getAttribute('data-orb-live-scroll');
    if (scroll !== null) {
      if (scroll === "false") {
        return false;
      }
    }
    return true;
  }

	/* object that handles live updates */
	function Subscriber(subElem, subUrl) {
		this.url = subUrl;
		this.elem = subElem;
		this.eventSource = new EventSource(this.url, { withCredentials: true });

		this.eventSource.onerror = function() {
			ouroborosShowError("Live connection lost. Try refreshing the page.");
		}

		this.eventSource.onopen = function() {
			ouroborosHideMessage();
		}

		this.destroy = function () {
			this.eventSource.close();
		}

		async function doAddEvent(rootElem, html) {
			rootElem.insertAdjacentHTML('beforeend', html);
			const last = rootElem.lastElementChild;
			armEvents(last);
			const options = {
				block : "end", inline: "nearest", // default options of 'alignToTop' parameter being false
				behavior: "smooth"				  // add smooth scrolling
			};
			if (shouldScroll(rootElem))
				last.scrollIntoView(options);
		}

		async function doUpdateEvent(rootElem, html) {
			// create a shadow template to hold the new html
			const template = document.createElement('template');
			template.innerHTML = html;

			// the first child of the template should be
			// the root container of the new html
			const newElem = template.content.firstChild;

			// if the new container has an id we can replace any existing containers
			const elemId = newElem.getAttribute('data-orb-id');
			if (elemId != null) {
				const existingElements = rootElem.querySelectorAll('[data-orb-id="' + elemId + '"]');
				for (const existingElement of existingElements) {
					existingElement.replaceWith(newElem);
					armEvents(newElem);
				}
			}
		}

		async function doRemoveEvent(rootElem, content) {
			// this one is special, it only gets the id, not html
			const elemId = content;
			const existingElements = rootElem.querySelectorAll('[data-orb-id="' + elemId + '"]');
			for (const existingElement of existingElements) {
				existingElement.remove();
			}
		}

		async function doBeatEvent() {
			// noop
		}

		this.attachListeners = function () {
			this.eventSource.addEventListener('add', (event) => {
				doAddEvent(this.elem, event.data);
			});

			this.eventSource.addEventListener('update', (event) => {
				doUpdateEvent(this.elem, event.data);
			});

			this.eventSource.addEventListener('remove', (event) => {
				doRemoveEvent(this.elem, event.data);
			});

			this.eventSource.addEventListener('beat', (event) => {
				doBeatEvent();
			});

			let observer = new MutationObserver((mutations, observer) => {
				if (!document.contains(this.elem)) {
					// live element was removed by a trigger
					// it can no longer see updates, so destroy it
					this.destroy();

					// remove it from the list so it won't get reattached
					let idx = subscribersList.indexOf(this);
					if (idx > -1) {
						subscribersList.splice(idx, 1);
					}

					// we can stop watching this now
					observer.disconnect();
				}
			});
			observer.observe(document.body, {childList: true, subtree: true});
		}

		this.attachListeners();

		const last = subElem.lastElementChild;
		if (last !== null && shouldScroll(subElem)) {
			last.scrollIntoView(false); // jump to bottom of elem
		}
	}

	/* object that handles sending updates */
	function Publisher(pubForm, pubUrl) {
		const headers = new Headers({"X-Ouroboros-Action" : "Trigger"});
		async function sendMessage(message) {
			const response = await fetch (pubUrl, {
				method: 'POST',
				body: message,
				headers: headers
			});

			if (response.status === 204) {
				// special case for triggers to be able to redirect
				// eg. if a user has been logged out it can send them to the login page
				const url = response.headers.get('X-Ouroboros-Move');
				if (url !== null) {
					window.location.replace(url);
				}
			}
			else if (response.ok) {
				const html = await response.text();
				const template = document.createElement('template');
				template.innerHTML = html;

				await replaceExistingElements(template.content.children);
			}
		}

		pubForm.onsubmit = function() {
			const inputs = pubForm.querySelectorAll('input');
			const textareas = pubForm.querySelectorAll('textarea');
			const selects = pubForm.querySelectorAll('select');
			const elems = [...inputs, ...textareas, ...selects];
			const formData = new FormData();
			for (const elem of elems) {
				if (elem.name === '') {
					continue;
				}

				switch (elem.type) {
					case "file":
						// add all files, for multi-file selections
						for (let i = 0; i < elem.files.length; i++) {
							formData.append(elem.name, elem.files[i]);
						}
						break;
					case "radio":
					case "checkbox":
						// only add radio/checkbox if it's the selected one
						if (elem.checked)
							formData.append(elem.name, elem.value);
						break;
					default:
						// add all other <input>s normally
						formData.append(elem.name, elem.value);
				}

				const action = elem.getAttribute('data-orb-post');
				switch (action) {
					case "clear":
						elem.value = '';
						break;
					default: ;
				}
			}
			const fakeInputs = pubForm.querySelectorAll('[data-orb-input]');
			for (const elem of fakeInputs) {
				const fakeName = elem.attributes['data-orb-input'].value;
				const content = elem.innerText;
				formData.append(fakeName, content);

				const action = elem.getAttribute('data-orb-post');
				switch (action) {
					case "clear":
						elem.innerText = '';
						break;
					default: ;
				}
			}
			if (formData) {
				sendMessage(formData);
			}
			// stop the browser from submitting the form itself
			return false;
		};
	}

	/* object that responds to user actions */
	function Instigator(trigger, identifier, instigation) {
		async function doAftermath(headers, html) {
			const template = document.createElement('template');
			template.innerHTML = html;

			const replacingPromise = replaceExistingElements(template.content.children);

			const newTitle = headers.get('X-Ouroboros-Title');
			if (newTitle !== null) {
				document.title = newTitle;
			}

			if (instigation === Instigation.Navigate) {
				window.history.pushState({identifier: identifier}, "", identifier);
			}

			await replacingPromise;
		}

		function hasData(formData) {
			for (const _ of formData) {
				return true;
			}
			return false;
		}

		async function findTriggerData(elem) {
			const prefix = 'data-orb-trigger-';
			const formData = new FormData();
			for (const attr of elem.attributes) {
				if (attr.name.startsWith(prefix)) {
					const key = attr.name.substring(prefix.length);
					const value = attr.value;
					formData.append(key, value);
				}
			}
			if (hasData(formData))
				return formData;
			return null;
		}

		async function fireTrigger(identifier, data) {
			const headers = new Headers({"X-Ouroboros-Action" : "Trigger"});
			const response = await fetch(identifier, { method: 'POST', body : data, headers: headers });
			if (response.status === 204) {
				// special case for triggers to be able to redirect
				// eg. if a user has been logged out it can send them to the login page
				const url = response.headers.get('X-Ouroboros-Move');
				if (url !== null) {
					window.location.replace(url);
				}
			}
			else if (response.ok) {
				const html = await response.text();
				const headers = response.headers;
				await doAftermath(headers, html);
			}
		}

		async function actionClick(trigger, identifier) {
			const data = await findTriggerData(trigger);
			await fireTrigger(identifier, data);
		}

		this.fireTrigger = fireTrigger;

		if (trigger !== null) {
			trigger.onclick = function(event) {
				// stop the browser navigating if the link has an href (which it might for mouseover reasons)
				event.preventDefault();

				actionClick(trigger, identifier);
			};
		}
	}

	async function replaceExistingElements(newElems) {
		const arrElems = Array.from(newElems);
		for (const newElem of arrElems) {
			const newId = newElem.id;
			if (newId !== undefined) {
				const existingElement = document.getElementById(newId);
				if (existingElement !== null) {
					existingElement.replaceWith(newElem);
					armEvents(newElem);
				}
			}
		}
	}

	function armEvents(parentElem) {
		function doArmOrb() {
			const liveElems = parentElem.querySelectorAll('[data-orb-live]');
			for (const elem of liveElems) {
				const orbPath = elem.attributes['data-orb-live'].value;
				const sub = new Subscriber(elem, orbPath);
				subscribersList.push(sub);
			}

			const subElems = parentElem.querySelectorAll('[data-orb-submit]');
			for (const elem of subElems) {
				const path = elem.attributes['data-orb-submit'].value;
				new Publisher(elem, path);
			}

			const triggerElems = parentElem.querySelectorAll('[data-orb-trigger]');
			for (const elem of triggerElems) {
				const identifier = elem.attributes['data-orb-trigger'].value;
				new Instigator(elem, identifier, Instigation.Trigger);
			}
			if (parentElem !== document) {
				if (parentElem.hasAttribute !== undefined && parentElem.hasAttribute('data-orb-trigger')) {
					const identifier = parentElem.attributes['data-orb-trigger'].value;
					new Instigator(parentElem, identifier);
				}
			}

			const navigateElems = parentElem.querySelectorAll('[data-orb-navigate]');
			for (const elem of navigateElems) {
				const identifier = elem.attributes['data-orb-navigate'].value;
				new Instigator(elem, identifier, Instigation.Navigate);
			}

			let hookElems = parentElem.querySelectorAll('[data-orb-hook]');
			if (parentElem.hasAttribute !== undefined && parentElem.hasAttribute('data-orb-hook')) {
				hookElems = [parentElem, ...hookElems];
			}
			for (const elem of hookElems) {
				const hookName = elem.attributes['data-orb-hook'].value;
				const userHook = Orb.hooks[hookName];
				if (userHook === undefined || userHook === null) {
					console.error("Orb: user hook \"" + hookName + "\" not found");
				} else {
					// execute user hook
					try
					{
						userHook();
					} catch (e) {
						console.error("Orb: user hook \"" + hookName + "\" caused exception:" + e);
					}
				}
			}
		}

		doArmOrb();
	}

	async function decache(reconnect) {
		// nothing to reconnect if there's no subscribers
		if (subscribersList.length === 0)
			return;

		ouroborosShowMessage("Reconnecting");

		const headers = new Headers({"X-Ouroboros-Action" : "Resync"});

		for (const sub of subscribersList) {
			const promise = fetch(sub.url, { headers: headers });

			const elem = sub.elem;
			const template = document.createElement('template');

			const response = await promise;

			if (response.ok) {
				const html = await response.text();

				template.innerHTML = html;

				elem.replaceChildren(... template.content.children);

				const last = elem.lastElementChild;
        if (last !== null && shouldScroll(elem)) {
					last.scrollIntoView(false); // jump to the end, no smooth-scroll
				}
			}

			if (reconnect) {
				sub.eventSource = new EventSource(sub.url, { withCredentials: true });
				sub.attachListeners();
			}
			armEvents(elem);
		}
		ouroborosHideMessage();
		ouroborosShowMessage("Reconnected");

		setTimeout(ouroborosHideMessage, 1 * 1000);
	}

	window.onpageshow = function(event) {
		if (event.persisted) {
			decache(true);
		} else {
			const currentNav = performance.getEntriesByType("navigation")[0];
			if (currentNav !== null) {
				if (currentNav.transferSize === 0) {
					decache(false);
				}
			}
		}
	}

	window.onpopstate = function(event) {
		//window.location.reload();
		if (event.state) {
			const inst = new Instigator(null, null, null);
			inst.fireTrigger(event.state.identifier, null);
		} else {
			window.location.reload();
		}
	}

	function ouroborosShowMessage(message) {
		ouroborosHideMessage();
		document.body.insertAdjacentHTML('afterbegin', '<div id="orb-message" class="orb-message">' + message + '</div>');
	}

	function ouroborosShowError(message) {
		ouroborosHideMessage();
		document.body.insertAdjacentHTML('afterbegin', '<div id="orb-message" class="orb-error">' + message + '</div>');
	}

	function ouroborosHideMessage() {
		let msgDiv = document.getElementById("orb-message");
		if (msgDiv !== null) {
			msgDiv.remove();
		}
	}

	armEvents(document);

}

document.addEventListener('DOMContentLoaded', () => {
	Ouroboros();
});
