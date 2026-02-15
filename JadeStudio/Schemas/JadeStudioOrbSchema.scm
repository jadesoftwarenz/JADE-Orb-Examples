jadeVersionNumber "25.0.01";
schemaDefinition
JadeStudioOrbSchema subschemaOf JadeStudioModelSchema completeDefinition;
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
	JadeStudioOrbSchema subclassOf JadeStudioModelSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	Controller subclassOf Object;
	AlbumViewController subclassOf Controller;
	HomeController subclassOf Controller;
	DynamicTemplates subclassOf Object;
	GJadeStudioOrbSchema subclassOf GJadeStudioModelSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	JadeStudioRestService subclassOf JadeRestService transient, transientAllowed, subclassTransientAllowed;
	Routes subclassOf Object;
	AlbumRemoveRoute subclassOf Routes;
	AlbumSubmitRoute subclassOf Routes;
	LoginSubmitRoute subclassOf Routes;
	PhotoSubmitRoute subclassOf Routes;
	PhotoViewRoute subclassOf Routes;
	TestRoute subclassOf Routes;
	ViewRoutes subclassOf Routes;
	AlbumAddView subclassOf ViewRoutes;
	AlbumViewRoute subclassOf ViewRoutes;
	HomeViewRoute subclassOf ViewRoutes;
	LoginViewRoute subclassOf ViewRoutes;
	LogoutView subclassOf ViewRoutes;
	ProfileViewRoute subclassOf ViewRoutes;
	SJadeStudioOrbSchema subclassOf SJadeStudioModelSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
interfaceDefs
	Route
	(
	subInterfaceOf
		JadeOrbPackage::IOrbRoute
	)
membershipDefinitions
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
	JadeStudioModelSchema completeDefinition
	(
	)
	JadeStudioOrbSchema completeDefinition
	(
	jadeMethodDefinitions
		initApp() updating;
		initRootObject();
	)
	Controller completeDefinition
	(
	attributeDefinitions
		footerContent:                 Binary[30];
		navContent:                    Binary;
	jadeMethodDefinitions
		content0001(): Binary;
		full(): Binary;
		partial(): Binary;
	implementInterfaces
		JadeOrbPackage::IOrbViewController
		(
			content is content0001;
			full is full;
			partial is partial;
		)
	)
	AlbumViewController completeDefinition
	(
	)
	HomeController completeDefinition
	(
	attributeDefinitions
		albumContent:                  Binary;
		firstName:                     StringUtf8[50];
		lastName:                      StringUtf8[50];
		userPhoto:                     Binary;
	jadeMethodDefinitions
		partia();
	)
	DynamicTemplates completeDefinition
	(
	jadeMethodDefinitions
		render(object: Object): Binary;
	implementInterfaces
		JadeOrbPackage::IOrbTemplate
		(
			render is render;
		)
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GJadeStudioModelSchema completeDefinition
	(
	)
	GJadeStudioOrbSchema completeDefinition
	(
	)
	JadeRestService completeDefinition
	(
	)
	JadeStudioRestService completeDefinition
	(
	jadeMethodDefinitions
		getCreateAlbum(): String updating;
		optionsCreateAlbum(): String updating;
		postCreateAlbum(albumName: String): String updating;
	)
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		checkNumberUser();
		createUser(
			first_name: String; 
			last_name: String; 
			email: String);
		deleteAllUsers();
		populateJadeStudio();
		test();
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
	AlbumRemoveRoute completeDefinition
	(
	attributeDefinitions
		name:                          StringUtf8;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	AlbumSubmitRoute completeDefinition
	(
	attributeDefinitions
		album_name:                    StringUtf8;
		description:                   StringUtf8;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	LoginSubmitRoute completeDefinition
	(
	attributeDefinitions
		raw_email:                     StringUtf8[255];
	jadeMethodDefinitions
		execute(): Integer;
		render(executeResult: Integer): Binary;
	)
	PhotoSubmitRoute completeDefinition
	(
	attributeDefinitions
		album_name:                    StringUtf8;
		photo_path:                    StringUtf8;
	jadeMethodDefinitions
		execute(): Integer updating;
		getFileData(path: String): Binary;
		render(executeResult: Integer): Binary updating;
	)
	PhotoViewRoute completeDefinition
	(
	attributeDefinitions
		guid:                          StringUtf8;
	referenceDefinitions
		myUser:                        User  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	TestRoute completeDefinition
	(
	referenceDefinitions
		myUser:                        User  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	ViewRoutes completeDefinition
	(
	)
	AlbumAddView completeDefinition
	(
	attributeDefinitions
		headerContent:                 Binary;
	referenceDefinitions
		myUser:                        User  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	AlbumViewRoute completeDefinition
	(
	attributeDefinitions
		album_name:                    StringUtf8;
	referenceDefinitions
		myAlbum:                       Album  protected;
		myUser:                        User  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	HomeViewRoute completeDefinition
	(
	referenceDefinitions
		myUser:                        User  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	LoginViewRoute completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	LogoutView completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary updating;
	)
	ProfileViewRoute completeDefinition
	(
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SJadeStudioModelSchema completeDefinition
	(
	)
	SJadeStudioOrbSchema completeDefinition
	(
	)
databaseDefinitions
	JadeStudioOrbSchemaDb
	(
	databaseFileDefinitions
		"jadestudioorbschema";
	defaultFileDefinition "jadestudioorbschema";
	classMapDefinitions
		AlbumAddView in "jadestudiomodelschema";
		AlbumRemoveRoute in "jadestudiomodelschema";
		AlbumSubmitRoute in "jadestudiomodelschema";
		AlbumViewController in "jadestudiomodelschema";
		AlbumViewRoute in "jadestudiomodelschema";
		Controller in "jadestudiomodelschema";
		DynamicTemplates in "jadestudiomodelschema";
		GJadeStudioOrbSchema in "jadestudioorbschema";
		HomeController in "jadestudiomodelschema";
		HomeViewRoute in "jadestudiomodelschema";
		JadeStudioOrbSchema in "_usergui";
		JadeStudioRestService in "jadestudiomodelschema";
		LoginSubmitRoute in "jadestudiomodelschema";
		LoginViewRoute in "jadestudiomodelschema";
		LogoutView in "jadestudiomodelschema";
		PhotoSubmitRoute in "jadestudiomodelschema";
		PhotoViewRoute in "jadestudiomodelschema";
		ProfileViewRoute in "jadestudiomodelschema";
		Routes in "jadestudiomodelschema";
		SJadeStudioOrbSchema in "_environ";
		TestRoute in "jadestudiomodelschema";
		ViewRoutes in "jadestudiomodelschema";
	)
typeSources
	JadeStudioOrbSchema (
	jadeMethodSources
initApp
{
initApp() updating;

constants
	Root = "C:\Orb\JadeStudio\JadeStudio-Project\root\";
vars
	
begin
	initRootObject();
	
	Orb@init(appContext);
	Orb@setDebug(true);
	
	/*Base templates*/
	Orb@addHtmlTemplate("nav-bottom", Root & "templates\nav-bottom.html");
	Orb@addHtmlTemplate("photo-template",Root &"templates\photo.html");
	Orb@addHtmlTemplate("header",Root &"templates\header.html");
	Orb@addHtmlTemplate("album-template", Root & "templates\album-template.html");
	Orb@addHtmlTemplate("album-list-page",Root & "all-album-page.html");
	
	/*Forms*/
	Orb@addHtmlTemplate("login-form",Root & "forms\login.html");
	Orb@addHtmlTemplate("album-add-form", Root & "forms\album-add.html");
	Orb@addHtmlTemplate("album-view-page",Root &"view-album.html");
	
	/* Views */
	Orb@addView("/",LoginViewRoute);
	Orb@addView("/login",LoginViewRoute);
	Orb@addView("/albums",HomeViewRoute);
	Orb@addView("/album-add",AlbumAddView);
	Orb@addView("/album-view",AlbumViewRoute);
	Orb@addView("/logout",LogoutView);
	
	/* POST Routes */
	Orb@addRoute("POST","/album-submit",AlbumSubmitRoute);
	Orb@addRoute("POST","/photo-submit",PhotoSubmitRoute);
	Orb@addRoute("POST","/login-submit",LoginSubmitRoute);
	
	/* GET Routes */
	Orb@addRoute("GET","/get-image",PhotoViewRoute);
	Orb@addRoute("GET","/remove-album",AlbumRemoveRoute);
	
	/* Virtual Directories */
	Orb@addVirtualDirectory("/styles",Root & "styles\");
	Orb@addVirtualDirectory("/images",Root &"images\");
	Orb@addVirtualDirectory("/scripts",Root &"scripts\");
epilog
end;
}
initRootObject
{
initRootObject();

vars
	jadeStudioTA : RootObjectTA;
begin

	if JadeStudioRootObject.instances.size = 0 then
		create jadeStudioTA transient;
		jadeStudioTA.persistEntity(TAF_TransactionType_Persist);
	endif;
	
	app.jadeStudioRootObj := JadeStudioRootObject.firstInstance();
	
epilog 
	delete jadeStudioTA;
end;
}
	)
	Controller (
	jadeMethodSources
content0001
{
content0001() : Binary;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the IOrbViewController interface 
	*/

vars

begin

	return null;
end;
}
full
{
full() : Binary;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the IOrbViewController interface 
	*/

vars

begin

	return null;
end;
}
partial
{
partial() : Binary;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the IOrbViewController interface 
	*/

vars

begin

	return null;
end;
}
	)
	HomeController (
	jadeMethodSources
partia
{
partia();

vars

begin

end;
}
	)
	DynamicTemplates (
	jadeMethodSources
render
{
render(object : Object) : Binary;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the IOrbTemplate interface 
	*/

vars

begin

	return null;
end;
}
	)
	JadeStudioRestService (
	jadeMethodSources
getCreateAlbum
{
getCreateAlbum(): String updating;

vars

begin
	addResponseHeaderField("Access-Control-Allow-Origin", "*");
	return "";
end;
}
optionsCreateAlbum
{
optionsCreateAlbum(): String updating;

vars

begin
addResponseHeaderField("Access-Control-Allow-Origin", "*");
return "";
end;
}
postCreateAlbum
{
postCreateAlbum(albumName: String): String updating;

vars

begin
	addResponseHeaderField("Access-Control-Allow-Origin", "*");
	return " rgrg";
end;
}
	)
	JadeScript (
	jadeMethodSources
checkNumberUser
{
checkNumberUser();

vars

begin
	if app.jadeStudioRootObj = null then
		app.jadeStudioRootObj := JadeStudioRootObject.firstInstance();
	endif;
	
	write app.jadeStudioRootObj.userByEmail.size;
end;
}
createUser
{
createUser(first_name, last_name, email : String);

vars
		userTA : UserTA;
begin
	create userTA transient;
	userTA.first_name := first_name.StringUtf8;
	userTA.last_name := last_name.StringUtf8;
	userTA.email := email.StringUtf8;
	
	userTA.persistEntity(TAF_TransactionType_Persist);
	
epilog 
delete userTA;
end;
}
deleteAllUsers
{
deleteAllUsers();

vars
	ta : UserTA;
	currUser : User;
begin
	if app.jadeStudioRootObj = null then
		app.jadeStudioRootObj := JadeStudioRootObject.firstInstance();
	endif;
	
	create ta transient;
	
	foreach currUser in app.jadeStudioRootObj.userByEmail do
	    ta.myPersistentObject := currUser;
		ta.persistEntity(TAF_TransactionType_Delete);
	endforeach;
	
	beginTransaction;
	Album.instances.purge;
	JadeStudioRootObject.instances.purge;
	commitTransaction;
	
epilog
	delete ta;
end;
}
populateJadeStudio
{
populateJadeStudio();

vars

begin
	if app.jadeStudioRootObj = null then
		app.jadeStudioRootObj := JadeStudioRootObject.firstInstance();
	endif;
	
	createUser("John", "Smith", "john.smith@example.com");
	/*
	Add more users here if you like.
	*/
end;
}
test
{
test();

vars
	albumTa: AlbumTA;
begin
	if app.jadeStudioRootObj = null then
		app.jadeStudioRootObj := JadeStudioRootObject.firstInstance();
	endif;
	
	create albumTa transient;
	
	
end;
}
	)
	Routes (
	jadeMethodSources
execute
{
execute(): Integer updating;


begin
	return null;
end;
}
render
{
render(executeResult : Integer) : Binary updating;

begin
	return null;
end;
}
	)
	AlbumRemoveRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
	album : Album;
	albumTA : AlbumTA;
begin
write "here";
	if not Orb@sessionData(user) then 
		return IOrbRoute.Failure;
	endif;
	
	album := user.albumByName.getAtKey(name);
	
	if album = null then
		return IOrbRoute.Failure;
	endif;
	
	create albumTA transient;
	
	albumTA.myPersistentObject := album;
	
	albumTA.persistEntity(TAF_TransactionType_Delete);
	
	return IOrbRoute.Success;
epilog
	delete albumTA;
end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	if executeResult = IOrbRoute.Success then
		Orb@redirect("/albums");
	endif;
	
	return Orb@redirect("/albums");
end;
}
	)
	AlbumSubmitRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
	albumName : StringUtf8;
	album : Album;
	albumTA : AlbumTA;
begin
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;
	
	albumName := album_name.trimBlanks();
	write albumName.length.String & " " &album_name.length.String; 
	album := user.albumByName.getAtKey(albumName);
	
	create albumTA transient;
	
	if album <> null then
		albumTA.populateFromObject(album);
	endif;

	albumTA.name := albumName;
	albumTA.description := description;
	albumTA.user := user;
	albumTA.persistEntity(TAF_TransactionType_Persist);	
	
	return IOrbRoute.Success;
epilog
	delete albumTA;
end;
}
render
{
render(executeResult : Integer) : Binary;

vars 

begin
	if executeResult = IOrbRoute.Failure then
		return Orb@redirect("/");
	endif;
	
	return null;
end;
}
	)
	LoginSubmitRoute (
	jadeMethodSources
execute
{
execute(): Integer;

vars
	user : User;
	user_email : StringUtf8;
begin
	user_email := raw_email.toLower();
	
	if not app.jadeStudioRootObj.userByEmail.includesKey(raw_email) then
		return IOrbRoute.Failure;
	endif;
	
	user := app.jadeStudioRootObj.userByEmail.getAtKey(user_email);
	
	Orb@sessionStart(user, 60 * 24, 60*24);
	
	return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	
	if executeResult = IOrbRoute.Failure then
		return Orb@redirect("/");
	endif;
	
	return Orb@redirect("/albums");
end;
}
	)
	PhotoSubmitRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
	albumName : StringUtf8;
	album : Album;
	photoTA : PhotoTA;
	regexResult : JadeRegexResult;
	path : String;
	name : String;
begin	
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;
	
	albumName := album_name.trimBlanks();
	
	album := user.albumByName.getAtKey(albumName);
	
	if album = null then
		return IOrbRoute.Failure;
	endif;
	
	create photoTA transient;
	
	JadeRegex@split(photo_path.String,";",true,regexResult);
	name := regexResult.at(1).value;
	path := regexResult.at(2).value;
	
	photoTA.photo := getFileData(path);
	photoTA.album := album;
	photoTA.name := name.StringUtf8;
	photoTA.myUser := user;
	photoTA.persistEntity(TAF_TransactionType_Persist);
	
	return IOrbRoute.Success;
epilog 
	delete photoTA;
	delete regexResult;
end;
}
getFileData
{
getFileData(path : String): Binary;

vars
	file : File;

begin
	create file transient;
	
	write path;
	file.fileName := path;
	file.kind := File.Kind_Binary;
	file.mode := File.Mode_IO;
	file.open();
	
	return file.readBinary(file.fileLength);
epilog	

	delete file;
end;
}
render
{
render(executeResult: Integer): Binary updating;

begin
	return inheritMethod(executeResult);
end;
}
	)
	PhotoViewRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
begin
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;
	
	if user.photoByGuid.getAtKey(guid.String) = null then
		return IOrbRoute.Failure;
	endif;
	
	myUser := user;
	
	return IOrbRoute.Success;	
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	if executeResult = IOrbRoute.Failure then
		return null;
	endif;
	
	return myUser.photoByGuid.getAtKey(guid.String).image;
end;
}
	)
	TestRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
begin
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;
	
	myUser := user;
	return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	if executeResult = IOrbRoute.Failure then
		return Orb@redirect("/");
	endif;
	
	Orb@addHeader("Content-Security-Policy","script-src-elem 'self' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline'; script-src 'unsafe-inline' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline';");
	return Orb@bind("index1",myUser);
end;
}
	)
	AlbumAddView (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
begin
		if not Orb@sessionData(user) then
			return IOrbRoute.Failure;
		endif;
		myUser := user;
		return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary updating;
begin
	if executeResult = IOrbRoute.Failure then
		return Orb@redirect("/albums");
	endif;
	
	Orb@addHeader("Content-Security-Policy","script-src-elem 'self' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline'; script-src 'unsafe-inline' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline';");
	
	headerContent := Orb@bind("header",myUser);
	return Orb@bindRaw("album-add-form",self);
end;
}
	)
	AlbumViewRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
	album : Album;
begin
	
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;
	
	album := user.albumByName.getAtKey(album_name);
	
	if album = null then
		return IOrbRoute.Failure;
	endif;
	
	myUser := user;
	myAlbum := album;
	
	return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary;

begin
	if executeResult = IOrbRoute.Failure then
		return Orb@redirect("/albums");
	endif;
	
	Orb@addHeader("Content-Security-Policy","script-src-elem 'self' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline'; script-src 'unsafe-inline' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline';");
	
	return Orb@bind("album-view-page",myAlbum);	
end;
}
	)
	HomeViewRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
begin
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;
	
	myUser := user;
	
	// set the properties 
	
	return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary;


begin
	if executeResult = IOrbRoute.Failure then
		return Orb@redirect("/");
	endif;
		
	Orb@addHeader("Content-Security-Policy","script-src-elem 'self' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline'; script-src 'unsafe-inline' https://cdn.jsdelivr.net/npm/swiper@12/swiper-bundle.min.js 'unsafe-inline';");
	
	return Orb@bind("album-list-page",myUser);
end;	
}
	)
	LoginViewRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : User;
begin
		if not Orb@sessionData(user) then
			return IOrbRoute.Failure;
		endif;
		
		return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary;

vars
	user : User;
begin
		if Orb@sessionData(user) then
			return Orb@redirect("/albums");
		endif;

		return Orb@bind("login-form",app.jadeStudioRootObj);
end;
}
	)
	LogoutView (
	jadeMethodSources
execute
{
execute(): Integer updating;

begin	
	Orb@sessionEnd();
	return inheritMethod();
end;
}
render
{
render(executeResult: Integer): Binary updating;

vars

begin
	return Orb@redirect("/");
end;
}
	)
