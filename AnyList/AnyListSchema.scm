jadeVersionNumber "25.0.01";
schemaDefinition
AnyListSchema subschemaOf RootSchema completeDefinition;
importedPackageDefinitions
	JadeOrbPackage is JadeOrbSchema::JadeOrbPackage
	(
	importedClassDefinitions
		Orb
	importedInterfaceDefinitions
		IOrbErrorHandler
		IOrbRoute
		IOrbSessionCursor
		IOrbTemplate
		IOrbTemplateCursor
		IOrbViewController
	)

localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
typeHeaders
	AnyListSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	Controllers subclassOf Object;
	ModelController subclassOf Controllers;
	ViewController subclassOf Controllers;
	GAnyListSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	Items subclassOf Object;
	Activity subclassOf Items;
	Content subclassOf Items;
	ContentState subclassOf Items;
	User subclassOf Items;
	ItemsTransient subclassOf Object transient;
	Error subclassOf ItemsTransient transient;
	Routes subclassOf Object;
	RouteBrowse subclassOf Routes;
	RouteBrowseLatest subclassOf Routes;
	RouteBrowseTop subclassOf Routes;
	RouteContent subclassOf Routes;
	RouteCreateActivityPOST subclassOf Routes;
	RouteCreateContent subclassOf Routes;
	RouteCreateContentPOST subclassOf Routes;
	RouteEditContent subclassOf Routes;
	RouteEditContentPOST subclassOf Routes;
	RouteHome subclassOf Routes;
	RouteImageContentCover subclassOf Routes;
	RouteImageContentHeader subclassOf Routes;
	RouteLogin subclassOf Routes;
	RouteLoginPOST subclassOf Routes;
	RouteLogout subclassOf Routes;
	RouteRegister subclassOf Routes;
	RouteRegisterPOST subclassOf Routes;
	RouteStateDeletePOST subclassOf Routes;
	RouteStatePopupPOST subclassOf Routes;
	RouteStateUpdatePOST subclassOf Routes;
	RouteUser subclassOf Routes;
	RouteWatching subclassOf Routes;
	SAnyListSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	ActivityByTimeAdded subclassOf DynaDictionary loadFactor = 66;
	ContentByRating subclassOf DynaDictionary loadFactor = 66;
	ContentByTimeAdded subclassOf DynaDictionary loadFactor = 66;
	ContentStateByRating subclassOf DynaDictionary loadFactor = 66;
	ActivityByUser subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	ContentByID subclassOf MemberKeyDictionary loadFactor = 66;
	ContentStateByContent subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	ContentStateByContentAndUser subclassOf MemberKeyDictionary loadFactor = 66;
	ContentStateByStatus subclassOf MemberKeyDictionary loadFactor = 66;
	UserByUsername subclassOf MemberKeyDictionary loadFactor = 66;
membershipDefinitions
	ActivityByTimeAdded of Object;
	ContentByRating of Object;
	ContentByTimeAdded of Object;
	ContentStateByRating of Object;
	ActivityByUser of Activity;
	ContentByID of Content;
	ContentStateByContent of ContentState;
	ContentStateByContentAndUser of ContentState;
	ContentStateByStatus of ContentState;
	UserByUsername of User;
typeDefinitions
	JadeOrbPackage::Orb completeDefinition
	(
	)
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	AnyListSchema completeDefinition
	(
	referenceDefinitions
		controllerView:                ViewController ;
	jadeMethodDefinitions
		init();
	)
	Controllers completeDefinition
	(
	)
	ModelController completeDefinition
	(
	referenceDefinitions
		activityByUser:                ActivityByUser   explicitInverse;
		contentByID:                   ContentByID   explicitInverse;
		userByUsername:                UserByUsername   explicitInverse;
	jadeMethodDefinitions
		getActivityByTimeAdded(limit: Integer): ActivityByTimeAdded;
		getContentByRating(limit: Integer): ContentByRating;
		getContentByTimeAdded(limit: Integer): ContentByTimeAdded;
	)
	ViewController completeDefinition
	(
	attributeDefinitions
		username:                      StringUtf8[64];
		view:                          Binary;
	jadeMethodDefinitions
		content(): Binary;
		full(): Binary updating;
		get(): ViewController updating;
		partial(): Binary;
	implementInterfaces
		JadeOrbPackage::IOrbViewController
		(
			content is content;
			full is full;
			partial is partial;
		)
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GAnyListSchema completeDefinition
	(
	)
	Items completeDefinition
	(
	)
	Activity completeDefinition
	(
	constantDefinitions
		TypeContentAdd:                StringUtf8 = "contentAdd";
		TypePost:                      StringUtf8 = "post";
		TypeProgressEpisode:           StringUtf8 = "progressEpisode";
		TypeProgressMovie:             StringUtf8 = "progressMovie";
	attributeDefinitions
		message:                       StringUtf8 protected;
		progressEpisode:               Integer protected;
		timestamp:                     Integer64;
		type:                          StringUtf8[30] protected;
	referenceDefinitions
		myContent:                     Content ;
		myController:                  ModelController   explicitEmbeddedInverse, protected;
		myUser:                        User ;
	jadeMethodDefinitions
		create(
			setUser: User; 
			setContent: Content) updating;
		getContentID(): StringUtf8;
		getContentTitle(): StringUtf8;
		getMessage(): StringUtf8;
		getUsername(): StringUtf8;
		makePost(newMessage: StringUtf8) updating;
		makeProgressEpisode(newProgressEpisode: Integer) updating;
		makeProgressMovie() updating;
	)
	Content completeDefinition
	(
	constantDefinitions
		TypeMovie:                     StringUtf8 = "Movie";
		TypeShow:                      StringUtf8 = "Show";
	attributeDefinitions
		cover:                         Binary;
		description:                   StringUtf8;
		header:                        Binary;
		id:                            StringUtf8[36];
		rating:                        Decimal[3,1] readonly;
		timeAdded:                     Integer64;
		title:                         StringUtf8;
		trailer:                       StringUtf8;
		type:                          StringUtf8[30];
	referenceDefinitions
		allMyContentState:             ContentStateByContentAndUser   explicitInverse, protected;
		myController:                  ModelController   explicitEmbeddedInverse, protected;
	jadeMethodDefinitions
		create(
			setTitle: StringUtf8; 
			setDescription: StringUtf8; 
			setType: StringUtf8; 
			setCover: String; 
			setHeader: String) updating;
		getContentState(): ContentState;
		getRating(): StringUtf8;
		getRatingCount(rating: Integer): Integer;
		getRatingInteger(): Integer;
		rating(
			set: Boolean; 
			_value: Decimal io) mapping;
	)
	ContentState completeDefinition
	(
	constantDefinitions
		StatusDropped:                 StringUtf8 = "Dropped";
		StatusFinished:                StringUtf8 = "Finished";
		StatusPlanning:                StringUtf8 = "Planning";
		StatusWatching:                StringUtf8 = "Watching";
	attributeDefinitions
		notes:                         StringUtf8;
		progress:                      Integer;
		rating:                        Integer;
		status:                        StringUtf8[30];
	referenceDefinitions
		myContent:                     Content   explicitEmbeddedInverse;
		myController:                  ModelController  protected;
		myUser:                        User   explicitEmbeddedInverse;
	jadeMethodDefinitions
		create(
			setUser: User; 
			setContent: Content; 
			setProgressNumber: Integer; 
			setProgressState: StringUtf8; 
			setRating: Integer; 
			setNote: StringUtf8) updating;
		getContentID(): StringUtf8;
		getContentTitle(): StringUtf8;
		getContentType(): StringUtf8;
		isDropped(): Boolean condition;
		isFinished(): Boolean condition;
		isPlanning(): Boolean condition;
		isWatching(): Boolean condition;
		sendActivity(
			setProgressNumber: Integer; 
			setProgressState: StringUtf8);
		update(
			setProgressNumber: Integer; 
			setProgressState: StringUtf8; 
			setRating: Integer; 
			setNotes: StringUtf8) updating;
	)
	User completeDefinition
	(
	attributeDefinitions
		password:                      StringUtf8;
		documentationText
`Stored in plain text, very insecure.
This should be hashed safely using something like Argon2id, but I have no idea how to do it in Jade.`
		username:                      StringUtf8[64];
	referenceDefinitions
		allContentState:               ContentStateByContent   explicitInverse;
		allDropped:                    ContentStateByContent  where ContentState::isDropped explicitInverse;
		allFinished:                   ContentStateByContent  where ContentState::isFinished explicitInverse;
		allPlanning:                   ContentStateByContent  where ContentState::isPlanning explicitInverse;
		allWatching:                   ContentStateByContent  where ContentState::isWatching explicitInverse;
		myController:                  ModelController   explicitEmbeddedInverse, protected;
	jadeMethodDefinitions
		create(
			setUsername: StringUtf8; 
			setPassword: StringUtf8) updating;
	)
	ItemsTransient completeDefinition
	(
	)
	Error completeDefinition
	(
	attributeDefinitions
		id:                            StringUtf8;
		message:                       StringUtf8;
	jadeMethodDefinitions
		create(
			setID: StringUtf8; 
			setMessage: StringUtf8) updating;
	)
	Routes completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	implementInterfaces
		JadeOrbPackage::IOrbRoute
		(
			execute is execute;
			render is render;
		)
	)
	RouteBrowse completeDefinition
	(
	referenceDefinitions
		contentByRating:               DynaDictionary ;
		contentByTimeAdded:            DynaDictionary ;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteBrowseLatest completeDefinition
	(
	attributeDefinitions
		heading:                       StringUtf8;
	referenceDefinitions
		allContent:                    DynaDictionary ;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteBrowseTop completeDefinition
	(
	attributeDefinitions
		heading:                       StringUtf8;
	referenceDefinitions
		allContent:                    ContentByRating ;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteContent completeDefinition
	(
	attributeDefinitions
		contentDescription:            StringUtf8;
		contentID:                     StringUtf8;
		contentStatus:                 StringUtf8[30];
		contentTitle:                  StringUtf8;
	referenceDefinitions
		content:                       Content ;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteCreateActivityPOST completeDefinition
	(
	attributeDefinitions
		message:                       StringUtf8;
	jadeMethodDefinitions
		execute(): Integer updating;
	)
	RouteCreateContent completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteCreateContentPOST completeDefinition
	(
	constantDefinitions
		ErrorID:                       StringUtf8 = "ErrorContent";
	attributeDefinitions
		cover:                         String;
		description:                   StringUtf8;
		header:                        String;
		title:                         StringUtf8;
		trailer:                       StringUtf8;
		type:                          StringUtf8;
	referenceDefinitions
		content:                       Content  protected;
		myError:                       Error ;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	RouteEditContent completeDefinition
	(
	attributeDefinitions
		contentID:                     StringUtf8;
	)
	RouteEditContentPOST completeDefinition
	(
	attributeDefinitions
		contentID:                     StringUtf8;
	)
	RouteHome completeDefinition
	(
	referenceDefinitions
		activityByTimeAdded:           ActivityByTimeAdded ;
		contentByRating:               ContentByRating ;
		contentByTimeAdded:            ContentByTimeAdded ;
		modelController:               ModelController ;
		user:                          User ;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteImageContentCover completeDefinition
	(
	attributeDefinitions
		contentID:                     StringUtf8;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteImageContentHeader completeDefinition
	(
	attributeDefinitions
		contentID:                     StringUtf8;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteLogin completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteLoginPOST completeDefinition
	(
	constantDefinitions
		ErrorID:                       StringUtf8 = "ErrorLogin";
	attributeDefinitions
		password:                      StringUtf8;
		username:                      StringUtf8;
	referenceDefinitions
		myError:                       Error ;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	RouteLogout completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	RouteRegister completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteRegisterPOST completeDefinition
	(
	constantDefinitions
		ErrorID:                       StringUtf8 = "ErrorRegister";
	attributeDefinitions
		password:                      StringUtf8;
		passwordRepeat:                StringUtf8;
		username:                      StringUtf8;
	referenceDefinitions
		myError:                       Error ;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	RouteStateDeletePOST completeDefinition
	(
	attributeDefinitions
		contentID:                     StringUtf8;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	RouteStatePopupPOST completeDefinition
	(
	attributeDefinitions
		contentID:                     StringUtf8;
		contentTitle:                  StringUtf8;
		stateNotes:                    StringUtf8;
		stateProgress:                 Integer;
		stateRating:                   Integer;
		stateStatus:                   StringUtf8[30];
	jadeMethodDefinitions
		execute(): Integer updating;
		isStatusEqual(status: StringUtf8): StringUtf8;
		render(executeResult: Integer): Binary updating;
	)
	RouteStateUpdatePOST completeDefinition
	(
	constantDefinitions
		ErrorID:                       StringUtf8 = "ErrorStatePopup";
	attributeDefinitions
		contentID:                     StringUtf8;
		notes:                         StringUtf8;
		progress:                      Integer;
		rating:                        Integer;
		status:                        StringUtf8;
	referenceDefinitions
		myError:                       Error ;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	RouteUser completeDefinition
	(
	attributeDefinitions
		username:                      StringUtf8;
	referenceDefinitions
		allDropped:                    ContentStateByRating ;
		allFinished:                   ContentStateByRating ;
		allPlanning:                   ContentStateByRating ;
		allWatching:                   ContentStateByRating ;
		user:                          User ;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	RouteWatching completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary updating;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SAnyListSchema completeDefinition
	(
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	DynaDictionary completeDefinition
	(
	)
	ActivityByTimeAdded completeDefinition
	(
	jadeMethodDefinitions
		create() updating, lockReceiver;
	)
	ContentByRating completeDefinition
	(
	jadeMethodDefinitions
		create() updating, lockReceiver;
	)
	ContentByTimeAdded completeDefinition
	(
	jadeMethodDefinitions
		create() updating, lockReceiver;
	)
	ContentStateByRating completeDefinition
	(
	jadeMethodDefinitions
		create() updating, lockReceiver;
	)
	MemberKeyDictionary completeDefinition
	(
	)
	ActivityByUser completeDefinition
	(
	)
	ContentByID completeDefinition
	(
	)
	ContentStateByContent completeDefinition
	(
	)
	ContentStateByContentAndUser completeDefinition
	(
	)
	ContentStateByStatus completeDefinition
	(
	)
	UserByUsername completeDefinition
	(
	)
memberKeyDefinitions
	ActivityByUser completeDefinition
	(
		myUser;
	)
	ContentByID completeDefinition
	(
		id;
	)
	ContentStateByContent completeDefinition
	(
		myContent;
	)
	ContentStateByContentAndUser completeDefinition
	(
		myContent;
		myUser;
	)
	ContentStateByStatus completeDefinition
	(
		myContent;
		status;
	)
	UserByUsername completeDefinition
	(
		username;
	)
inverseDefinitions
	activityByUser of ModelController automatic peerOf myController of Activity manual;
	contentByID of ModelController automatic peerOf myController of Content manual;
	userByUsername of ModelController automatic peerOf myController of User manual;
	allMyContentState of Content automatic parentOf myContent of ContentState manual;
	allContentState of User automatic parentOf myUser of ContentState manual;
	allWatching of User automatic parentOf myUser of ContentState manual;
	allFinished of User automatic parentOf myUser of ContentState manual;
	allPlanning of User automatic parentOf myUser of ContentState manual;
	allDropped of User automatic parentOf myUser of ContentState manual;

databaseDefinitions
	AnyListSchemaDb
	(
	databaseFileDefinitions
		"anylistschema";
	defaultFileDefinition "anylistschema";
	classMapDefinitions
		Activity in "anylistschema";
		ActivityByTimeAdded in "anylistschema";
		ActivityByUser in "anylistschema";
		AnyListSchema in "_usergui";
		Content in "anylistschema";
		ContentByID in "anylistschema";
		ContentByRating in "anylistschema";
		ContentByTimeAdded in "anylistschema";
		ContentState in "anylistschema";
		ContentStateByContent in "anylistschema";
		ContentStateByContentAndUser in "anylistschema";
		ContentStateByRating in "anylistschema";
		ContentStateByStatus in "anylistschema";
		Controllers in "anylistschema";
		Error in "anylistschema";
		GAnyListSchema in "anylistschema";
		Items in "anylistschema";
		ItemsTransient in "anylistschema";
		ModelController in "anylistschema";
		RouteBrowse in "anylistschema";
		RouteBrowseLatest in "anylistschema";
		RouteBrowseTop in "anylistschema";
		RouteContent in "anylistschema";
		RouteCreateActivityPOST in "anylistschema";
		RouteCreateContent in "anylistschema";
		RouteCreateContentPOST in "anylistschema";
		RouteEditContent in "anylistschema";
		RouteEditContentPOST in "anylistschema";
		RouteHome in "anylistschema";
		RouteImageContentCover in "anylistschema";
		RouteImageContentHeader in "anylistschema";
		RouteLogin in "anylistschema";
		RouteLoginPOST in "anylistschema";
		RouteLogout in "anylistschema";
		RouteRegister in "anylistschema";
		RouteRegisterPOST in "anylistschema";
		RouteStateDeletePOST in "anylistschema";
		RouteStatePopupPOST in "anylistschema";
		RouteStateUpdatePOST in "anylistschema";
		RouteUser in "anylistschema";
		RouteWatching in "anylistschema";
		Routes in "anylistschema";
		SAnyListSchema in "_environ";
		User in "anylistschema";
		UserByUsername in "anylistschema";
		ViewController in "anylistschema";
	)
typeSources
	AnyListSchema (
	jadeMethodSources
init
{
init();

constants
	Root = "C:/Users/cnwdp5/Projects/AnyList";

vars
	modelController: ModelController;

begin
	if ModelController.instances.size = 0 then
		beginTransaction;
		modelController := create ModelController persistent;
		commitTransaction;
	endif;

	create app.controllerView transient;

	Orb@init(appContext);
	Orb@setDebug(true);

	Orb@addVirtualDirectory("/assets", Root & "/assets");
	Orb@addHtmlTemplate("base", Root & "/base.html");
	Orb@addHtmlTemplate("error", Root & "/error.html");

	Orb@addHtmlTemplate("browse", Root & "/browse.html");
	Orb@addHtmlTemplate("browseAll", Root & "/browseAll.html");
	Orb@addHtmlTemplate("browseContent", Root & "/browseContent.html");
	Orb@addHtmlTemplate("browseWrapper", Root & "/browseWrapper.html");
	Orb@addHtmlTemplate("content", Root & "/content.html");
	Orb@addHtmlTemplate("contentInfo", Root & "/contentInfo.html");
	Orb@addHtmlTemplate("createContent", Root & "/createContent.html");
	Orb@addHtmlTemplate("editContent", Root & "/editContent.html");
	Orb@addHtmlTemplate("homeActivity", Root & "/homeActivity.html");
	Orb@addHtmlTemplate("homeActivityWrapper", Root & "/homeActivityWrapper.html");
	Orb@addHtmlTemplate("homeLoggedIn", Root & "/homeLoggedIn.html");
	Orb@addHtmlTemplate("homeLoggedOut", Root & "/homeLoggedOut.html");
	Orb@addHtmlTemplate("homeWatching", Root & "/homeWatching.html");
	Orb@addHtmlTemplate("homeWatchingWrapper", Root & "/homeWatchingWrapper.html");
	Orb@addHtmlTemplate("login", Root & "/login.html");
	Orb@addHtmlTemplate("register", Root & "/register.html");
	Orb@addHtmlTemplate("statePopup", Root & "/statePopup.html");
	Orb@addHtmlTemplate("statePopupOpen", Root & "/statePopupOpen.html");
	Orb@addHtmlTemplate("user", Root & "/user.html");
	Orb@addHtmlTemplate("userList", Root & "/userList.html");
	Orb@addHtmlTemplate("userListHeader", Root & "/userListHeader.html");

	Orb@addView("/", RouteHome);
	Orb@addLiveRoute("/activity", ModelController.firstInstance.activityByUser, "homeActivity", null, null);
	Orb@addRoute("GET", "/watching", RouteWatching);

	Orb@addView("/browse", RouteBrowse);
	Orb@addView("/browse/latest", RouteBrowseLatest);
	Orb@addView("/browse/top", RouteBrowseTop);
	Orb@addViewWithParameters("/user", RouteUser, "username");

	Orb@addView("/login", RouteLogin);
	Orb@addRoute("POST", "/login/submit", RouteLoginPOST);
	Orb@addView("/register", RouteRegister);
	Orb@addRoute("POST", "/register/submit", RouteRegisterPOST);
	Orb@addRoute("GET", "/logout", RouteLogout);

	Orb@addView("/create/content", RouteCreateContent);
	Orb@addRoute("POST", "/create/content/submit", RouteCreateContentPOST);
	Orb@addView("/edit/content", RouteEditContent);
	Orb@addRoute("POST", "/edit/content/submit", RouteEditContentPOST);
	Orb@addRoute("POST", "/create/activity/submit", RouteCreateActivityPOST);

	Orb@addRouteWithParameters("POST", "/state/delete", RouteStateDeletePOST, "contentID");
	Orb@addRouteWithParameters("POST", "/state/update", RouteStateUpdatePOST, "contentID");
	Orb@addRouteWithParameters("POST", "/state/popup", RouteStatePopupPOST, "contentID");

	Orb@addViewWithParameters("/content", RouteContent, "contentID");
	Orb@addRouteWithParameters("GET", "/image/content/cover", RouteImageContentCover, "contentID");
	Orb@addRouteWithParameters("GET", "/image/content/header", RouteImageContentHeader, "contentID");

end;
}
	)
	ModelController (
	jadeMethodSources
getActivityByTimeAdded
{
getActivityByTimeAdded(limit: Integer): ActivityByTimeAdded;

vars
	iter: Iterator;
	activity: Activity;
	fullActivityByTimeAdded: ActivityByTimeAdded;
	activityByTimeAdded: ActivityByTimeAdded;

begin
	create fullActivityByTimeAdded transient;
	iter := self.activityByUser.createIterator();
	while iter.back(activity) do
		fullActivityByTimeAdded.add(activity);
	endwhile;

	if limit <> null then
		create activityByTimeAdded transient;
		iter := fullActivityByTimeAdded.createIterator();
		while iter.back(activity) and activityByTimeAdded.size < limit do
			activityByTimeAdded.add(activity);
		endwhile;
		delete fullActivityByTimeAdded;
		return activityByTimeAdded;
	else
		return fullActivityByTimeAdded;
	endif;

end;
}
getContentByRating
{
getContentByRating(limit: Integer): ContentByRating;

vars
	iter: Iterator;
	content: Content;
	fullContentByRating: ContentByRating;
	contentByRating: ContentByRating;

begin
	create fullContentByRating transient;
	iter := self.contentByID.createIterator();
	while iter.next(content) do
		fullContentByRating.add(content);
	endwhile;

	if limit <> null then
		create contentByRating transient;
		iter := fullContentByRating.createIterator();
		while iter.next(content) and contentByRating.size < limit do
			contentByRating.add(content);
		endwhile;
		delete fullContentByRating;
		return contentByRating;
	else
		return fullContentByRating;
	endif;

end;
}
getContentByTimeAdded
{
getContentByTimeAdded(limit: Integer): ContentByTimeAdded;

vars
	iter: Iterator;
	content: Content;
	fullContentByTimeAdded: ContentByTimeAdded;
	contentByTimeAdded: ContentByTimeAdded;

begin
	create fullContentByTimeAdded transient;
	iter := self.contentByID.createIterator();
	while iter.next(content) do
		fullContentByTimeAdded.add(content);
	endwhile;

	if limit <> null then
		create contentByTimeAdded transient;
		iter := fullContentByTimeAdded.createIterator();
		while iter.next(content) and contentByTimeAdded.size < limit do
			contentByTimeAdded.add(content);
		endwhile;
		delete fullContentByTimeAdded;
		return contentByTimeAdded;
	else
		return fullContentByTimeAdded;
	endif;

end;
}
	)
	ViewController (
	jadeMethodSources
content
{
content(): Binary;

vars

begin
	return self.view;

end;
}
full
{
full(): Binary updating;

vars

begin
	return Orb@bindRaw("base", self);

end;
}
get
{
get(): ViewController updating;

vars
	myUser: User;

begin
	self.view := @''.Binary;
	if Orb@sessionData(myUser) then
		self.username := myUser.username;
	else
		self.username := null;
	endif;
	return self;

end;
}
partial
{
partial(): Binary;

vars

begin
	return null;

end;
}
	)
	Activity (
	jadeMethodSources
create
{
create(setUser: User; setContent: Content) updating;

vars
	newTimestamp: TimeStamp;

begin
	self.timestamp := newTimestamp.localToUTCTime().getSecondsFromUnixEpoch();
	self.myController := ModelController.firstInstance;
	self.myUser := setUser;
	self.myContent := setContent;

end;
}
getContentID
{
getContentID(): StringUtf8;

vars

begin
	if self.myContent <> null then
		return self.myContent.id;
	endif;
	return "";

end;
}
getContentTitle
{
getContentTitle(): StringUtf8;

vars

begin
	if self.myContent <> null then
		return self.myContent.title;
	endif;
	return "";

end;
}
getMessage
{
getMessage(): StringUtf8;

vars

begin
	if self.type = self.TypeProgressMovie then
		return "has watched ";
	elseif self.type = self.TypeProgressEpisode then
		return "has watched episode " & self.progressEpisode.StringUtf8 & " of ";
	else
		return self.message;
	endif;

end;
}
getUsername
{
getUsername(): StringUtf8;

vars

begin
	return self.myUser.username;

end;
}
makePost
{
makePost(newMessage: StringUtf8) updating;

vars

begin
	self.message := newMessage;
	self.type := self.TypePost;

end;
}
makeProgressEpisode
{
makeProgressEpisode(newProgressEpisode: Integer) updating;

vars

begin
	self.progressEpisode := newProgressEpisode;
	self.type := self.TypeProgressEpisode;

end;
}
makeProgressMovie
{
makeProgressMovie() updating;

vars

begin
	self.type := self.TypeProgressMovie;

end;
}
	)
	Content (
	jadeMethodSources
create
{
create(setTitle, setDescription, setType: StringUtf8; setCover, setHeader: String) updating;

vars
	timestamp: TimeStamp;

begin
	self.myController := ModelController.firstInstance;
	self.timeAdded := timestamp.localToUTCTime().getSecondsFromUnixEpoch();

	self.title := setTitle;
	self.description := setDescription;
	self.type := setType;
	self.cover := setCover.base64Decode();
	self.header := setHeader.base64Decode();
	self.id := app.generateUuid(VariantMicrosoft).uuidAsString().StringUtf8;

end;
}
getContentState
{
getContentState(): ContentState;

vars
	user: User;

begin
	Orb@sessionData(user);
	if user = null then
		return null;
	endif;

	return user.allContentState[self];

end;
}
getRating
{
getRating(): StringUtf8;

vars

begin
	if self.rating = 0 then
		return "N/A";
	else
		return self.rating.StringUtf8;
	endif;

end;
}
getRatingCount
{
getRatingCount(rating: Integer): Integer;

vars
	state: ContentState;
	count: Integer;

begin
	foreach state in self.allMyContentState where state.rating = rating do
		count += 1;
	endforeach;
	return count;

end;
}
getRatingInteger
{
getRatingInteger(): Integer;

vars

begin
	return self.rating.Integer;

end;
}
rating
{
rating(set : Boolean; _value : Decimal io) mapping;

vars
	state: ContentState;
	count: Integer;
	total: Integer;

begin
	if self.allMyContentState.size = 0 then
		_value := 0.Decimal;
		return;
	endif;

	foreach state in self.allMyContentState where state.rating > 0 do
		total += state.rating;
		count += 1;
	endforeach;

	if count <> 0 then
		_value := total / count;
	else
		_value := 0.Decimal;
	endif;

end;
}
	)
	ContentState (
	jadeMethodSources
create
{
create(
	setUser: User;
	setContent: Content;
	setProgressNumber: Integer;
	setProgressState: StringUtf8;
	setRating: Integer;
	setNote: StringUtf8
) updating;

vars

begin
	self.myController := ModelController.firstInstance;

	self.myUser := setUser;
	self.myContent := setContent;

	sendActivity(setProgressNumber, setProgressState);

	self.progress := setProgressNumber;
	self.status := setProgressState;
	self.rating := setRating;
	self.notes := setNote;

end;
}
getContentID
{
getContentID(): StringUtf8;

vars

begin
	return self.myContent.id;

end;
}
getContentTitle
{
getContentTitle(): StringUtf8;

vars

begin
	return self.myContent.title;

end;
}
getContentType
{
getContentType(): StringUtf8;

vars

begin
	return self.myContent.type;

end;
}
isDropped
{
isDropped(): Boolean condition;

begin
	return self.status = self.StatusDropped;

end;
}
isFinished
{
isFinished(): Boolean condition;

begin
	return self.status = self.StatusFinished;

end;
}
isPlanning
{
isPlanning(): Boolean condition;

begin
	return self.status = self.StatusPlanning;

end;
}
isWatching
{
isWatching(): Boolean condition;

begin
	return self.status = self.StatusWatching;

end;
}
sendActivity
{
sendActivity(setProgressNumber: Integer; setProgressState: StringUtf8);

vars
	activity: Activity;

begin
	if
		self.myContent.type = Content.TypeMovie
		and self.status <> self.StatusFinished
		and setProgressState = self.StatusFinished
	then
		activity := create Activity(self.myUser, self.myContent);
		activity.makeProgressMovie();
	elseif
		self.myContent.type = Content.TypeShow
		and self.progress <> setProgressNumber
	then
		activity := create Activity(self.myUser, self.myContent);
		activity.makeProgressEpisode(setProgressNumber);
	endif;

end;
}
update
{
update(
	setProgressNumber: Integer;
	setProgressState: StringUtf8;
	setRating: Integer;
	setNotes: StringUtf8
) updating;

vars

begin
	sendActivity(setProgressNumber, setProgressState);

	self.progress := setProgressNumber;
	self.status := setProgressState;
	self.rating := setRating;
	self.notes := setNotes;

end;
}
	)
	User (
	jadeMethodSources
create
{
create(setUsername, setPassword: StringUtf8) updating;

vars

begin
	self.username := setUsername;
	self.password := setPassword;
	self.myController := ModelController.firstInstance;

end;
}
	)
	Error (
	jadeMethodSources
create
{
create(setID, setMessage: StringUtf8) updating;

vars

begin
	self.id := setID;
	self.message := setMessage;

end;
}
	)
	Routes (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars

begin
	return null;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	Orb@addHeader(
		"Content-Security-Policy",
		"default-src 'self'; img-src 'self' blob:; frame-src youtube.com www.youtube.com youtube-nocookie.com www.youtube-nocookie.com; frame-ancestors 'none';"
	);
	return null;

end;
}
	)
	RouteBrowse (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;

	everyContentByRating: DynaDictionary;
	everyContentByTimeAdded: DynaDictionary;

begin
	inheritMethod(executeResult);

	self.contentByRating := ModelController.firstInstance().getContentByRating(6);
	self.contentByTimeAdded := ModelController.firstInstance().getContentByTimeAdded(6);

	vc := app.controllerView.get();
	vc.view := Orb@bind("browseWrapper", self);

	return Orb@view(vc);

epilog
	delete everyContentByRating;
	delete everyContentByTimeAdded;

end;
}
	)
	RouteBrowseLatest (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;

begin
	inheritMethod(executeResult);

	self.allContent := ModelController.firstInstance().getContentByTimeAdded(null);

	self.heading := "Latest";
	vc := app.controllerView.get();
	vc.view := Orb@bind("browseAll", self);

	return Orb@view(vc);

end;
}
	)
	RouteBrowseTop (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;

begin
	inheritMethod(executeResult);

	self.heading := "Top rated";
	self.allContent := ModelController.firstInstance().getContentByRating(null);

	vc := app.controllerView.get();
	vc.view := Orb@bind("browseAll", self);

	return Orb@view(vc);

end;
}
	)
	RouteContent (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;
	contentState: ContentState;

begin
	inheritMethod(executeResult);

	if self.contentID = null then
		return Orb@redirect("/");
	endif;
	self.content := ModelController.firstInstance.contentByID[contentID];
	if self.content = null then
		return Orb@redirect("/");
	endif;

	self.contentTitle := self.content.title;
	self.contentDescription := self.content.description;
	contentState := self.content.getContentState();
	if contentState = null then
		self.contentStatus := "Add to list";
	else
		self.contentStatus := contentState.status;
	endif;

	vc := app.controllerView.get();
	vc.view := Orb@bind("content", self);
	return Orb@view(vc);

end;
}
	)
	RouteCreateActivityPOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	activity: Activity;
	user: User;

begin
	inheritMethod();

	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;

	if message = null then
		return IOrbRoute.Failure;
	endif;

	beginTransaction;
	activity := create Activity(user, null);
	activity.makePost(message);
	commitTransaction;
	return IOrbRoute.Success;

end;
}
	)
	RouteCreateContent (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;
	user: User;

begin
	inheritMethod(executeResult);
	if not Orb@sessionData(user) then
		return Orb@redirect("/");
	endif;

	vc := app.controllerView.get();
	vc.view := Orb@bind("createContent", ModelController.firstInstance);
	return Orb@view(vc);

end;
}
	)
	RouteCreateContentPOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user: User;

begin
	if not Orb@sessionData(user) then
		Orb@redirect("/");
		return IOrbRoute.Failure;
	endif;

	if
		self.cover = null
		or self.description = null
		or self.type = null
		or self.header = null
		or self.title = null
	then
		self.myError := create Error(self.ErrorID, "Not all fields are filled.");
		return IOrbRoute.Failure;
	elseif
		self.type <> Content.TypeMovie
		and self.type <> Content.TypeShow
	then
		self.myError := create Error(self.ErrorID, "Invalid type value.");
		return IOrbRoute.Failure;
	endif;

	beginTransaction;
	self.content := create Content(self.title, self.description, self.type, self.cover, self.header);
	self.content.trailer := self.trailer;
	commitTransaction;

	return IOrbRoute.Success;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	inheritMethod(executeResult);

	if executeResult <> IOrbRoute.Success then
		return Orb@bind("error", self.myError);
	endif;

	return Orb@redirect("/content/" & self.content.id);

end;
}
	)
	RouteHome (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;

begin
	inheritMethod(executeResult);

	vc := app.controllerView.get();
	self.modelController := ModelController.firstInstance;

	if Orb@sessionData(self.user) then
		self.activityByTimeAdded := ModelController.firstInstance().getActivityByTimeAdded(10);
		vc.view := Orb@bind("homeLoggedIn", self);
	else
		self.contentByRating := ModelController.firstInstance().getContentByRating(6);
		self.contentByTimeAdded := ModelController.firstInstance().getContentByTimeAdded(6);
		vc.view := Orb@bind("homeLoggedOut", self);
	endif;

	return Orb@view(vc);

end;
}
	)
	RouteImageContentCover (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	content: Content;

begin
	inheritMethod(executeResult);

	if self.contentID = null then
		return null;
	endif;

	content := ModelController.firstInstance.contentByID[contentID];
	if content = null then
		return null;
	endif;

	return content.cover;

end;
}
	)
	RouteImageContentHeader (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	content: Content;

begin
	inheritMethod(executeResult);

	if self.contentID = null then
		return null;
	endif;

	content := ModelController.firstInstance.contentByID[contentID];
	if content = null then
		return null;
	endif;

	return content.header;

end;
}
	)
	RouteLogin (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;

begin
	inheritMethod(executeResult);

	vc := app.controllerView.get();
	vc.view := Orb@bind("login", ModelController.firstInstance);
	return Orb@view(vc);

end;
}
	)
	RouteLoginPOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user: User;

begin
	inheritMethod();

	user := ModelController.firstInstance.userByUsername[self.username];

	if user = null or user.password <> self.password then
		self.myError := create Error(self.ErrorID, "Invalid username or password");
		return IOrbRoute.Failure;
	endif;

	Orb@sessionStart(user, 60 * 24, 60 * 24);
	return IOrbRoute.Success;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars
	error: Error;

begin
	inheritMethod(executeResult);

	if executeResult <> IOrbRoute.Success then
		error := create Error("ErrorLogin", "Incorrect username or password");
		return Orb@bind("error", error);
	endif;

	return Orb@redirect("/");

end;
}
	)
	RouteLogout (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars

begin
	Orb@sessionEnd();
	return IOrbRoute.Success;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	inheritMethod(executeResult);

	return Orb@redirect("/");

end;
}
	)
	RouteRegister (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;

begin
	inheritMethod(executeResult);

	vc := app.controllerView.get();
	vc.view := Orb@bind("register", ModelController.firstInstance);
	return Orb@view(vc);

end;
}
	)
	RouteRegisterPOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	myUser: User;

begin
	inheritMethod();

	if self.username = null or self.password = null or self.passwordRepeat = null then
		self.myError := create Error(self.ErrorID, "Not every field has been filled.");
		return IOrbRoute.Failure;
	elseif self.password <> self.passwordRepeat then
		self.myError := create Error(self.ErrorID, "Passwords don't match.");
		return IOrbRoute.Failure;
	elseif self.username.length >= User::username.length then
		self.myError := create Error(self.ErrorID, "Username is too long.");
		return IOrbRoute.Failure;
	elseif ModelController.firstInstance.userByUsername[self.username] <> null then
		self.myError := create Error(self.ErrorID, "User with the same username already exists.");
		return IOrbRoute.Failure;
	endif;

	beginTransaction;
	myUser := create User(self.username, self.password);
	commitTransaction;

	Orb@sessionStart(myUser, 60 * 24, 60 * 24);
	return IOrbRoute.Success;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	inheritMethod(executeResult);

	if executeResult <> IOrbRoute.Success then
		return Orb@bind("error", self.myError);
	endif;

	return Orb@redirect("/");

end;
}
	)
	RouteStateDeletePOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	content: Content;
	contentState: ContentState;
	user: User;

begin
	inheritMethod();

	if not Orb@sessionData(user) then
		Orb@redirect("/");
		return IOrbRoute.Failure;
	endif;

	content := ModelController.firstInstance().contentByID[contentID];
	if content = null then
		Orb@redirect("/");
		return IOrbRoute.Failure;
	endif;

	contentState := user.allContentState[content];
	beginTransaction;
	if contentState <> null then
		delete contentState;
	endif;
	commitTransaction;

	return IOrbRoute.Success;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	inheritMethod(executeResult);

	return Orb@bind("statePopup", null);

end;
}
	)
	RouteStatePopupPOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user: User;
	content: Content;
	contentState: ContentState;

begin
	inheritMethod();

	if not Orb@sessionData(user) then
		Orb@redirect("/login");
		return IOrbRoute.Failure;
	endif;

	content := ModelController.firstInstance().contentByID[contentID];
	if content = null then
		return IOrbRoute.Failure;
	endif;
	self.contentTitle := content.title;

	contentState := user.allContentState[content];
	if contentState <> null then
		self.stateNotes := contentState.notes;
		self.stateProgress := contentState.progress;
		self.stateRating := contentState.rating;
		self.stateStatus := contentState.status;
	endif;

	return IOrbRoute.Success;

end;
}
isStatusEqual
{
isStatusEqual(status: StringUtf8): StringUtf8;

vars

begin
	// Somehow without this cast it says "Illegal type conversion attempted"
	if self.stateStatus = status.StringUtf8 then
		return "selected";
	endif;
	return null;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	inheritMethod(executeResult);

	if executeResult = IOrbRoute.Failure then
		return null;
	endif;

	return Orb@bind("statePopupOpen", self);

end;
}
	)
	RouteStateUpdatePOST (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	content: Content;
	contentState: ContentState;
	user: User;

begin
	inheritMethod();

	if not Orb@sessionData(user) then
		Orb@redirect("/");
		return IOrbRoute.Failure;
	endif;

	content := ModelController.firstInstance().contentByID[contentID];
	if content = null then
		Orb@redirect("/");
		return IOrbRoute.Failure;
	endif;

	if self.status = null then
		self.myError := create Error(self.ErrorID, "Not all fields are filled.");
		return IOrbRoute.Failure;
	elseif
		self.status <> ContentState.StatusDropped
		and self.status <> ContentState.StatusFinished
		and self.status <> ContentState.StatusPlanning
		and self.status <> ContentState.StatusWatching
	then
		self.myError := create Error(self.ErrorID, "Invalid status value.");
		return IOrbRoute.Failure;
	endif;

	Orb@sessionData(user);
	contentState := user.allContentState[content];
	beginTransaction;
	if contentState = null then
		contentState := create ContentState(user, content, self.progress, self.status, self.rating, self.notes);
	else
		contentState.update(self.progress, self.status, self.rating, self.notes);
	endif;
	commitTransaction;

	return IOrbRoute.Success;

end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	inheritMethod(executeResult);

	if executeResult <> IOrbRoute.Success then
		return Orb@bind("error", self.myError);
	endif;

	return Orb@bind("statePopup", null);

end;
}
	)
	RouteUser (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	vc: ViewController;
	contentState: ContentState;

begin
	inheritMethod(executeResult);
	vc := app.controllerView.get();

	self.user := ModelController.firstInstance().userByUsername[username];
	if self.user = null then
		return Orb@redirect("/");
	endif;

	create self.allDropped transient;
	foreach contentState in self.user.allDropped do
		self.allDropped.add(contentState);
	endforeach;

	create self.allFinished transient;
	foreach contentState in self.user.allFinished do
		self.allFinished.add(contentState);
	endforeach;

	create self.allPlanning transient;
	foreach contentState in self.user.allPlanning do
		self.allPlanning.add(contentState);
	endforeach;

	create self.allWatching transient;
	foreach contentState in self.user.allWatching do
		self.allWatching.add(contentState);
	endforeach;

	vc.view := Orb@bind("user", self);
	return Orb@view(vc);

end;
}
	)
	RouteWatching (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary updating;

vars
	user: User;

begin
	inheritMethod(executeResult);

	if Orb@sessionData(user) then
		return Orb@liveUpdate(user.allWatching, "homeWatching");
	else
		return null;
	endif;

end;
}
	)
	ActivityByTimeAdded (
	jadeMethodSources
create
{
create() lockReceiver, updating;

vars

begin
	self.setMembership(Activity);
	self.addMemberKey("timestamp", false, false);
	self.endKeys(true);

end;
}
	)
	ContentByRating (
	jadeMethodSources
create
{
create() lockReceiver, updating;

vars

begin
	self.setMembership(Content);
	self.addMemberKey("rating", true, false);
	self.endKeys(true);

end;
}
	)
	ContentByTimeAdded (
	jadeMethodSources
create
{
create() lockReceiver, updating;

vars

begin
	self.setMembership(Content);
	self.addMemberKey("timeAdded", true, false);
	self.endKeys(true);

end;
}
	)
	ContentStateByRating (
	jadeMethodSources
create
{
create() lockReceiver, updating;

vars

begin
	self.setMembership(ContentState);
	self.addMemberKey("rating", true, false);
	self.endKeys(true);

end;
}
	)
