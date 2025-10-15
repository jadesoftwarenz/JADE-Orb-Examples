jadeVersionNumber "99.0.00";
schemaDefinition
JvsCutSchema subschemaOf RootSchema completeDefinition;
	setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:06:58:32.982;
importedPackageDefinitions
	JadeOrbPackage is JadeOrbSchema::JadeOrbPackage
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.150;
	importedClassDefinitions
		Orb
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.155;
	importedInterfaceDefinitions
		IOrbErrorHandler
		setModifiedTimeStamp "<unknown>" "" 2025:10:07:07:51:45;
		IOrbRoute
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.155;
		IOrbSessionCursor
		setModifiedTimeStamp "<unknown>" "" 2025:10:07:07:51:45;
		IOrbTemplate
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.157;
		IOrbTemplateCursor
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.155;
		IOrbViewController
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.157;
	)

localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
	setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:06:58:32.997;
typeHeaders
	JvsCutSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	Controllers subclassOf Object;
	ModelController subclassOf Controllers;
	ViewController subclassOf Controllers;
	DataItems subclassOf Object;
	AgendaItem subclassOf DataItems;
	ChatMessage subclassOf DataItems;
	Chatroom subclassOf DataItems;
	RatingInfo subclassOf DataItems final, persistentAllowed;
	SpeakerInfo subclassOf DataItems;
	UserAccount subclassOf DataItems;
	DynamicTemplates subclassOf Object;
	AgendaTemplate subclassOf DynamicTemplates;
	ArrowTemplate subclassOf DynamicTemplates;
	BookmarkTemplate subclassOf DynamicTemplates;
	HighlightMessageTemplate subclassOf DynamicTemplates;
	HighlightTemplate subclassOf DynamicTemplates;
	RatingTemplate subclassOf DynamicTemplates;
	UpvotesTemplate subclassOf DynamicTemplates;
	GJvsCutSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	AgendaXmlParser subclassOf JadeXMLParser transient, transientAllowed, subclassTransientAllowed;
	SpeakerXmlParser subclassOf JadeXMLParser transient, transientAllowed, subclassTransientAllowed;
	MetadataItems subclassOf Object;
	AllTemplates subclassOf MetadataItems transient, final, transientAllowed;
	BackgroundInstigator subclassOf MetadataItems;
	CsvParser subclassOf MetadataItems;
	Techtag subclassOf MetadataItems;
	Routes subclassOf Object;
	ChatSendRoute subclassOf Routes;
	LiveAgendaRoute subclassOf Routes;
	LiveChatRoute subclassOf Routes;
	LoginSubmitRoute subclassOf Routes;
	ProjectorRoutes subclassOf Routes;
	BusinessProjectorRoute subclassOf ProjectorRoutes;
	TechProjectorRoute subclassOf ProjectorRoutes;
	RatingModalRoute subclassOf Routes;
	RatingSubmitRoute subclassOf Routes;
	SpeakerRoute subclassOf Routes;
	UpvoteRoute subclassOf Routes;
	VersionRoute subclassOf Routes;
	ViewRoute subclassOf Routes abstract;
	AboutViewRoute subclassOf ViewRoute;
	AgendaViewRoute subclassOf ViewRoute;
	ChatViewRoute subclassOf ViewRoute;
	LoginViewRoute subclassOf ViewRoute;
	MapViewRoute subclassOf ViewRoute;
	SpeakerViewRoute subclassOf ViewRoute;
	SJvsCutSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	AgendaItemByIdDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	AgendaItemByTimeDictionary subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	AgendaItemByTitleDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	ChatMessagesByIdDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	ChatMessagesByTimeDictionary subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	ChatroomsByIdDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	ChatroomsByNameDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	RatingInfoByAgendaItemDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	RatingInfoByUserDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	SpeakerByNameDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	TechtagByTagDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	UsersByCodeDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	UsersByIdDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	RatingInfoSet subclassOf Set loadFactor = 66;
	SpeakerArray subclassOf Array;
membershipDefinitions
	AgendaItemByIdDictionary of AgendaItem;
	AgendaItemByTimeDictionary of AgendaItem;
	AgendaItemByTitleDictionary of AgendaItem;
	ChatMessagesByIdDictionary of ChatMessage;
	ChatMessagesByTimeDictionary of ChatMessage;
	ChatroomsByIdDictionary of Chatroom;
	ChatroomsByNameDictionary of Chatroom;
	RatingInfoByAgendaItemDictionary of RatingInfo;
	RatingInfoByUserDictionary of RatingInfo;
	SpeakerByNameDictionary of SpeakerInfo;
	TechtagByTagDictionary of Techtag;
	UsersByCodeDictionary of UserAccount;
	UsersByIdDictionary of UserAccount;
	RatingInfoSet of RatingInfo;
	SpeakerArray of SpeakerInfo;
typeDefinitions
	JadeOrbPackage::Orb completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.155;
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
	JvsCutSchema completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:04:36.865;
	attributeDefinitions
		developmentVersion:            StringUtf8[30] readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:19:13:08:51.566;
		zScriptRoot:                   String readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:21:49:41.878;
	referenceDefinitions
		modelController:               ModelController ;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:29:45.967;
		templates:                     AllTemplates  readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:12:07:23:35.405;
		viewController:                ViewController ;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:02:09:47:33.987;
	jadeMethodDefinitions
		initApp() updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:28:15.999;
		initBackgroundWorkerApp();
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:12:23:22.267;
	)
	Controllers completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:09:19.671;
	)
	ModelController completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:09:36:50.221;
	referenceDefinitions
		allAgendaItemsById:            AgendaItemByIdDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:18:03.001;
		allAgendaItemsByTime:          AgendaItemByTimeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:46:36.238;
		allChatroomsById:              ChatroomsByIdDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:51:51.830;
		allChatroomsByName:            ChatroomsByNameDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:55:35.712;
		allMessagesById:               ChatMessagesByIdDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:45:46.664;
		allSpeakersByName:             SpeakerByNameDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:02:33.562;
		allUsersByCode:                UsersByCodeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:22:12:54:58.511;
		allUsersById:                  UsersByIdDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:10:31:53.191;
	)
	ViewController completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:13:59.323;
	constantDefinitions
		Title:                         StringUtf8 = @" | Jade Velocity 2025";
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:19:13:18:44.318;
	attributeDefinitions
		content:                       Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:19:13:10:29.551;
		section:                       StringUtf8[100];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:19:13:17:33.273;
	referenceDefinitions
		currentView:                   ViewRoute  protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:10:16:02.452;
	jadeMethodDefinitions
		current(keyword: String): StringUtf8;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:10:13:49:39.159;
		get(): ViewController updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:14:05.201;
		orbContent(): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:19:13:11:43.778;
		orbFull(): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.185;
		orbPartial(): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.186;
		set(
			title: StringUtf8; 
			contentnew: Binary; 
			view: ViewRoute) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:09:27.221;
	implementInterfaces
		JadeOrbPackage::IOrbViewController
		(
			content is orbContent;
			full is orbFull;
			partial is orbPartial;
		)
	)
	DataItems completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:25:31.238;
	)
	AgendaItem completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:49:27.667;
	constantDefinitions
		AgendaItem_Timer:              Integer = 500;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:17:24.152;
	attributeDefinitions
		agenda_title:                  String[101];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:26:21.301;
		expired:                       String[11] virtual;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:09:36:36.826;
		id:                            Integer readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:12:34:12.524;
		location:                      String[51];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:27:10.493;
		speaker_description:           String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:49:37.803;
		time_end:                      Time;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:25:58.572;
		time_start:                    Time;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:25:53.288;
	referenceDefinitions
		allRatingsByUser:              RatingInfoByUserDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:08:06:33.917;
		allSavingUsers:                UsersByCodeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:10:14:25.239;
		allSpeakers:                   SpeakerArray   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:13:38:54.951;
		allTechtags:                   TechtagByTagDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:22:32.528;
		myController:                  ModelController   explicitEmbeddedInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:18:03.087;
	jadeMethodDefinitions
		addRating(
			rating: Integer; 
			feedback: String; 
			user: UserAccount) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:41:32.899;
		addTag(keyword: String);
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:26:25.266;
		armExpiryTimer();
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:26:25.664;
		create(
			title: String; 
			loc: String; 
			start: Time; 
			finish: Time; 
			speakers: SpeakerArray; 
			blurb: String) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:54:40.448;
		expired(
			set: Boolean; 
			_value: String io) mapping;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:29:06:13:35.887;
		isLite(): Boolean;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:59:30.350;
		timerEvent(eventTag: Integer) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:17:43.252;
		trim(time: String): String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:02:00:15:36.246;
	)
	ChatMessage completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:11:03:35.923;
	attributeDefinitions
		id:                            Integer64 readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:44:45.165;
		message:                       String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:22:00.503;
		person_name:                   String[101];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:21:51.113;
		time:                          TimeStamp;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:22:37.561;
	referenceDefinitions
		allLikingUsers:                UsersByCodeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:25:54.624;
		myChatroom:                    Chatroom   explicitEmbeddedInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:31:49.341;
		myController:                  ModelController   explicitEmbeddedInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:45:46.625;
		myUser:                        UserAccount ;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:34:35.574;
	jadeMethodDefinitions
		create(
			msg: String; 
			person: String; 
			user: UserAccount; 
			chatroom: Chatroom) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:13:10:55:22.270;
		getUserId(): Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:12:33:08.330;
		upvote(user: UserAccount io);
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:11:52:59.622;
	)
	Chatroom completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:45:27.836;
	attributeDefinitions
		chatroom_description:          String[151];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:11:12:33.120;
		chatroom_name:                 String[51];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:45:38.376;
		chatroom_unread_count:         Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:46:27.797;
		id:                            Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:49:19.305;
	referenceDefinitions
		allMessages:                   ChatMessagesByTimeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:31:49.272;
		highlightedMessage:            ChatMessage ;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:07:53:32.166;
		myController:                  ModelController   explicitEmbeddedInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:51:51.885;
	jadeMethodDefinitions
		create(
			newId: Integer; 
			name: String; 
			desc: String) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:11:13:00.399;
		lastmessage(): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.188;
	)
	RatingInfo completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:20:28.029;
	attributeDefinitions
		feedback:                      String readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:19:29.088;
		rating:                        Integer readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:18:50.311;
	referenceDefinitions
		myAgendaItem:                  AgendaItem   explicitEmbeddedInverse, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:08:06:33.871;
		myUserAccount:                 UserAccount   explicitEmbeddedInverse, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:40:05.796;
	jadeMethodDefinitions
		create(
			newRating: Integer; 
			newFeedback: String; 
			agendaItem: AgendaItem; 
			user: UserAccount) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:40:45.782;
		modify(
			newRating: Integer; 
			newFeedback: String) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:12:11:26.976;
	)
	SpeakerInfo completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:58:42.875;
	attributeDefinitions
		social_link:                   String[101];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:05:32.302;
		speaker_bio:                   String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:08:44:59.337;
		speaker_company:               String[101];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:16:01:30.302;
		speaker_full_title:            String virtual;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:16:14:34.445;
		speaker_name:                  String[101];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:09:50:54.352;
		speaker_picture:               String[256] readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:12:44:34.859;
		speaker_title:                 String[101];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:09:51:06.378;
	referenceDefinitions
		allTalks:                      AgendaItemByIdDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:13:38:54.911;
		myController:                  ModelController   explicitEmbeddedInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:02:33.658;
	jadeMethodDefinitions
		create(
			name: String; 
			title: String; 
			pic: String; 
			bio: String; 
			link: String) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:17:28:10.600;
		photo(ext: String): String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:02:00:27:53.878;
		speaker_full_title(
			set: Boolean; 
			_value: String io) mapping;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:17:28:03.243;
	)
	UserAccount completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:10:30:48.738;
	attributeDefinitions
		code:                          String[301];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:12:56:46.453;
		company:                       String[251];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:43:23.886;
		email:                         String[301];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:49:49.180;
		id:                            Integer readonly;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:43:01.196;
		locked:                        Boolean;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:13:11:35.516;
		name:                          String[251];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:43:10.823;
		stream:                        String[31];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:10:59:07.563;
	referenceDefinitions
		allLikedMessages:              ChatMessagesByTimeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:25:54.564;
		allRatings:                    RatingInfoByAgendaItemDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:40:05.860;
		allSavedAgendaItems:           AgendaItemByTimeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:10:14:25.285;
		myController:                  ModelController   explicitEmbeddedInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:09:14:15.966;
	jadeMethodDefinitions
		create(
			nam: String; 
			comp: String; 
			em: String; 
			cod: String; 
			loc: String) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:09:37:39.551;
		isStream(value: String): String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:11:00:33.321;
		toggleInSchedule(item: AgendaItem): Boolean updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:07:46:11.221;
	)
	DynamicTemplates completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:11:02:22.648;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:19:44.905;
	implementInterfaces
		JadeOrbPackage::IOrbTemplate
		(
			render is render;
		)
	)
	AgendaTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:06:54:51.017;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.188;
	)
	ArrowTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:11:59:39.650;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.190;
	)
	BookmarkTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:13:42:39.464;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.191;
	)
	HighlightMessageTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:25:16:22:22.661;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.192;
	)
	HighlightTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:07:51:32.971;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.192;
	)
	RatingTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:12:52:55.072;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.192;
	)
	UpvotesTemplate completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:59:36.627;
	jadeMethodDefinitions
		render(object: Object): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:10:13:54:23.330;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GJvsCutSchema completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:06:58:33.156;
	)
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		populateData();
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:40:53.149;
		zAddChatrooms() protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:41:26.913;
		zAddUsersFromData() protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:41:37.209;
		zInit() protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:02:00:41:49.660;
		zPopulateAgendaFromData() protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:43:22.793;
		zPopulateChatMsgs() protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:42:24.508;
		zPopulateSpeakersFromData() protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:42:37.401;
	)
	JadeXMLParser completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "9.9.00" 10207 2007:02:01:14:22:25.365;
	)
	AgendaXmlParser completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:29:25.800;
	attributeDefinitions
		dataBlurb:                     String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:52:34.233;
		dataLocation:                  String[31] protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:11:20:48.014;
		dataSpeaker:                   String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:37:12.458;
		dataSpeakersList:              StringArray protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:13:24:19.829;
		dataStart:                     String[31] protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:36:57.825;
		dataStop:                      String[31] protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:37:02.883;
		dataTitle:                     String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:36:49.150;
		inAgenda:                      Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:29:53.400;
		inBlurb:                       Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:52:42.123;
		inItem:                        Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:29:59.436;
		inSpeaker:                     Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:31:55.557;
		inStart:                       Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:31:37.704;
		inStop:                        Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:31:43.200;
		inTitle:                       Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:23:31:31.391;
	jadeMethodDefinitions
		characters(text: String) updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:55:20.292;
		endElement(
			namespaceURI: String; 
			localName: String; 
			qualifiedName: String) updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:53:25.097;
		startElement(
			namespaceURI: String; 
			localName: String; 
			qualifiedName: String; 
			attributeCount: Integer) updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:07:52:59.442;
		xFinaliseItem() updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:40:18.827;
	)
	SpeakerXmlParser completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:21:56:52.562;
	attributeDefinitions
		dataBio:                       String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:22:08:45.139;
		dataName:                      String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:22:08:33.365;
		dataSocial:                    String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:03:03.324;
		dataTitle:                     String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:12:11:29:57.893;
		inBio:                         Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:21:59:12.494;
		inName:                        Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:21:58:58.767;
		inSocial:                      Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:02:55.710;
		inSpeaker:                     Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:21:58:07.058;
		inSpeakers:                    Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:01:21:58:30.882;
		inTitle:                       Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:12:11:28:46.950;
	jadeMethodDefinitions
		characters(text: String) updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:04:49.499;
		endElement(
			namespaceURI: String; 
			localName: String; 
			qualifiedName: String) updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:03:51.370;
		startElement(
			namespaceURI: String; 
			localName: String; 
			qualifiedName: String; 
			attributeCount: Integer) updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:03:21.586;
		xFinaliseSpeakerData() updating, protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:07:27.634;
		zTrim(s: String): String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:08:42:44.101;
	)
	MetadataItems completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:17:59.554;
	)
	AllTemplates completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:07:12:27:07.889;
	referenceDefinitions
		agenda:                        IOrbTemplateCursor ;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:07:12:27:37.853;
	)
	BackgroundInstigator completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:25:30.842;
	constantDefinitions
		Notification_AgendaItem_Update:Integer = 500;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:23:09.750;
	jadeMethodDefinitions
		create() updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:25:03.903;
		sysNotification(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:13:23:40.018;
	)
	CsvParser completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:09:42:52.917;
	jadeMethodDefinitions
		parseGuests(
			filename: String; 
			fnames: StringArray io; 
			lnames: StringArray io; 
			emails: StringArray io) typeMethod;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:27:10:03:52.084;
		parseStaff(
			filename: String; 
			fnames: StringArray io; 
			lnames: StringArray io; 
			emails: StringArray io; 
			streams: StringArray io) typeMethod;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:01:10:58:44.662;
	)
	Techtag completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:22:32.579;
	attributeDefinitions
		techtag:                       String[51];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:18:19.098;
	referenceDefinitions
		allItems:                      AgendaItemByTimeDictionary   explicitInverse;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:22:32.588;
	)
	Routes completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:08:53.678;
	jadeMethodDefinitions
		bounce(): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.195;
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:21:03.267;
		loggedIn(): Boolean;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.195;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:21:08.630;
	implementInterfaces
		JadeOrbPackage::IOrbRoute
		(
			execute is execute;
			render is render;
		)
	)
	ChatSendRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:13:30:14.204;
	attributeDefinitions
		message:                       String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:13:30:36.169;
		roomid:                        Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:13:35:04.193;
		showBannedMessage:             Boolean protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:09:47:10.844;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:10:13:51:25.539;
		isMessageEmpty(msg: String): Boolean;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:18:08:09:25.737;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.195;
	)
	LiveAgendaRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:21:12:39:39.225;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.195;
	)
	LiveChatRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:12:26:52.243;
	attributeDefinitions
		id:                            Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:12:26:58.370;
		projector:                     String[31];
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:15:11:43:49.180;
	referenceDefinitions
		chatroom:                      Chatroom  protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:12:39:57.353;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.195;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:10:13:50:29.459;
	)
	LoginSubmitRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:22:12:56:55.658;
	attributeDefinitions
		code:                          String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:22:12:32:09.701;
	referenceDefinitions
		userLoggedIn:                  UserAccount  protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:22:12:58:03.669;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.195;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.200;
	)
	ProjectorRoutes completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:15:11:06:05.142;
	)
	BusinessProjectorRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:15:11:06:35.447;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.200;
	)
	TechProjectorRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:15:11:06:17.155;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.202;
	)
	RatingModalRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:09:54:29.675;
	attributeDefinitions
		feedback:                      String protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:24:11:36:22.453;
		rating:                        Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:09:54:38.806;
		talk:                          Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:57:35.874;
	jadeMethodDefinitions
		checked(value: String): String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:06:08:48:36.079;
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.202;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.202;
	)
	RatingSubmitRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:15:49.868;
	attributeDefinitions
		feedback:                      String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:16:06.344;
		rating:                        Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:15:56.176;
		talk:                          Integer;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:16:29.440;
	referenceDefinitions
		item:                          AgendaItem  protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:06:08:26:49.496;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.204;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.204;
	)
	SpeakerRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:09:45:30.388;
	attributeDefinitions
		name:                          String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:30:04.372;
	referenceDefinitions
		speaker:                       SpeakerInfo  protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:30:15.613;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:07:11:16:57.801;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.204;
	)
	UpvoteRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:50:47.586;
	attributeDefinitions
		id:                            Integer64;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:51:22.593;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.208;
	)
	VersionRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:15:14:01:10.143;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:19:13:09:37.986;
	)
	ViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:08:00:16.672;
	)
	AboutViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:11:58:07.584;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:07:51.262;
	)
	AgendaViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:02:11:36:10.656;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:08:01.816;
	)
	ChatViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:11:33:23.475;
	referenceDefinitions
		chatroom:                      Chatroom  protected;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:10:59:45.442;
	jadeMethodDefinitions
		execute(): Integer updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.210;
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:13:14.875;
	)
	LoginViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:09:31:56.094;
	attributeDefinitions
		a:                             String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:28:09:31:16.499;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:08:40.934;
	)
	MapViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:22:10:05:02.568;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:08:50.013;
	)
	SpeakerViewRoute completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:14:13:38.007;
	attributeDefinitions
		name:                          String;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:03:14:13:53.919;
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:10:14:13:09:00.748;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SJvsCutSchema completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:06:58:33.166;
	jadeMethodDefinitions
		processRequest(
			httpString: String; 
			queryString: String) updating;
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:09:24:08:39:40.210;
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
	MemberKeyDictionary completeDefinition
	(
	)
	AgendaItemByIdDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:17:29.992;
	)
	AgendaItemByTimeDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:07:31:14.853;
	)
	AgendaItemByTitleDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:10:20:24.003;
	)
	ChatMessagesByIdDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:26:10:45:04.106;
	)
	ChatMessagesByTimeDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:31:21.544;
	)
	ChatroomsByIdDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:10:50:51.315;
	)
	ChatroomsByNameDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:47:47.196;
	)
	RatingInfoByAgendaItemDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:38:34.100;
	)
	RatingInfoByUserDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:12:30:17.051;
	)
	SpeakerByNameDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:25:09:01:42.681;
	)
	TechtagByTagDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:08:19:46.925;
	)
	UsersByCodeDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:22:12:38:19.693;
	)
	UsersByIdDictionary completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:19:10:31:16.909;
	)
	Set completeDefinition
	(
	)
	RatingInfoSet completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:07:23:10:21:01.164;
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	SpeakerArray completeDefinition
	(
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:08:20:13:14:26.553;
	)
memberKeyDefinitions
	AgendaItemByIdDictionary completeDefinition
	(
		id;
	)
	AgendaItemByTimeDictionary completeDefinition
	(
		time_start;
	)
	AgendaItemByTitleDictionary completeDefinition
	(
		agenda_title;
	)
	ChatMessagesByIdDictionary completeDefinition
	(
		id;
	)
	ChatMessagesByTimeDictionary completeDefinition
	(
		time;
	)
	ChatroomsByIdDictionary completeDefinition
	(
		id;
	)
	ChatroomsByNameDictionary completeDefinition
	(
		chatroom_name;
	)
	RatingInfoByAgendaItemDictionary completeDefinition
	(
		myAgendaItem;
	)
	RatingInfoByUserDictionary completeDefinition
	(
		myUserAccount;
	)
	SpeakerByNameDictionary completeDefinition
	(
		speaker_name;
	)
	TechtagByTagDictionary completeDefinition
	(
		techtag;
	)
	UsersByCodeDictionary completeDefinition
	(
		code;
	)
	UsersByIdDictionary completeDefinition
	(
		id;
	)
inverseDefinitions
	allAgendaItemsById of ModelController automatic peerOf myController of AgendaItem manual;
	allAgendaItemsByTime of ModelController automatic peerOf myController of AgendaItem manual;
	allChatroomsById of ModelController automatic peerOf myController of Chatroom manual;
	allChatroomsByName of ModelController automatic peerOf myController of Chatroom manual;
	myController of ChatMessage manual peerOf allMessagesById of ModelController automatic;
	allSpeakersByName of ModelController automatic peerOf myController of SpeakerInfo manual;
	allUsersByCode of ModelController automatic peerOf myController of UserAccount manual;
	allUsersById of ModelController automatic peerOf myController of UserAccount manual;
	allRatingsByUser of AgendaItem automatic parentOf myAgendaItem of RatingInfo manual;
	allSavingUsers of AgendaItem peerOf allSavedAgendaItems of UserAccount;
	allTalks of SpeakerInfo peerOf allSpeakers of AgendaItem;
	allTechtags of AgendaItem manual peerOf allItems of Techtag automatic;
	allLikedMessages of UserAccount manual peerOf allLikingUsers of ChatMessage automatic;
	allMessages of Chatroom automatic peerOf myChatroom of ChatMessage manual;
	myUserAccount of RatingInfo manual peerOf allRatings of UserAccount automatic;

databaseDefinitions
	JvsCutSchemaDb
	(
	setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:06:58:33.166;
	databaseFileDefinitions
		"jvscutschema";
		setModifiedTimeStamp "cnwcb7" "99.0.00" 2025:06:24:06:58:33.166;
	defaultFileDefinition "jvscutschema";
	classMapDefinitions
		AboutViewRoute in "jvscutschema";
		AgendaItem in "jvscutschema";
		AgendaItemByIdDictionary in "jvscutschema";
		AgendaItemByTimeDictionary in "jvscutschema";
		AgendaItemByTitleDictionary in "jvscutschema";
		AgendaTemplate in "jvscutschema";
		AgendaViewRoute in "jvscutschema";
		AgendaXmlParser in "jvscutschema";
		AllTemplates in "jvscutschema";
		ArrowTemplate in "jvscutschema";
		BackgroundInstigator in "jvscutschema";
		BookmarkTemplate in "jvscutschema";
		BusinessProjectorRoute in "jvscutschema";
		ChatMessage in "jvscutschema";
		ChatMessagesByIdDictionary in "jvscutschema";
		ChatMessagesByTimeDictionary in "jvscutschema";
		ChatSendRoute in "jvscutschema";
		ChatViewRoute in "jvscutschema";
		Chatroom in "jvscutschema";
		ChatroomsByIdDictionary in "jvscutschema";
		ChatroomsByNameDictionary in "jvscutschema";
		Controllers in "jvscutschema";
		CsvParser in "jvscutschema";
		DataItems in "jvscutschema";
		DynamicTemplates in "jvscutschema";
		GJvsCutSchema in "jvscutschema";
		HighlightMessageTemplate in "jvscutschema";
		HighlightTemplate in "jvscutschema";
		JvsCutSchema in "_usergui";
		LiveAgendaRoute in "jvscutschema";
		LiveChatRoute in "jvscutschema";
		LoginSubmitRoute in "jvscutschema";
		LoginViewRoute in "jvscutschema";
		MapViewRoute in "jvscutschema";
		MetadataItems in "jvscutschema";
		ModelController in "jvscutschema";
		ProjectorRoutes in "jvscutschema";
		RatingInfo in "jvscutschema";
		RatingInfoByAgendaItemDictionary in "jvscutschema";
		RatingInfoByUserDictionary in "jvscutschema";
		RatingInfoSet in "jvscutschema";
		RatingModalRoute in "jvscutschema";
		RatingSubmitRoute in "jvscutschema";
		RatingTemplate in "jvscutschema";
		Routes in "jvscutschema";
		SJvsCutSchema in "_environ";
		SpeakerArray in "jvscutschema";
		SpeakerByNameDictionary in "jvscutschema";
		SpeakerInfo in "jvscutschema";
		SpeakerRoute in "jvscutschema";
		SpeakerViewRoute in "jvscutschema";
		SpeakerXmlParser in "jvscutschema";
		TechProjectorRoute in "jvscutschema";
		Techtag in "jvscutschema";
		TechtagByTagDictionary in "jvscutschema";
		UpvoteRoute in "jvscutschema";
		UpvotesTemplate in "jvscutschema";
		UserAccount in "jvscutschema";
		UsersByCodeDictionary in "jvscutschema";
		UsersByIdDictionary in "jvscutschema";
		VersionRoute in "jvscutschema";
		ViewController in "jvscutschema";
		ViewRoute in "jvscutschema";
	)
typeSources
	JvsCutSchema (
	jadeMethodSources
initApp
{
initApp() updating;

constants
	// needs to end with a trailing backslash
	Root = "C:\repos\jade-orb-examples\JVSummitApp\dist\";
	ProjectorRoot = "C:\repos\jade-orb-examples\JVSummitApp\dist_projector\";
	
	Version = @"1.3.0";
vars

begin
	modelController := ModelController.firstInstance;
	if modelController = null then
		beginTransaction;
		create modelController persistent;
		commitTransaction;
	endif;
	
	create app.viewController transient;
	
	create app.templates transient;

	Orb@init(appContext);
	Orb@setDebug(true);
	
	Orb@addHtmlTemplate("base", Root  & "base.html");
	Orb@addHtmlTemplate("landingLayout", Root & "landingLayout.html");
	
	Orb@addHtmlTemplate("about", Root & "about.html");
	Orb@addHtmlTemplate("map", Root & "map.html");
	Orb@addHtmlTemplate("chat/local", Root & "chat-local.html");
	Orb@addHtmlTemplate("chat/global", Root & "chat-global.html");
	Orb@addHtmlTemplate("agenda", Root & "agenda.html");
	Orb@addHtmlTemplate("settings", Root & "settings.html");
	
	/* Ouroboros navigation */
	Orb@addHtmlTemplate("nav/title", Root & "navigation\section_title.html");
	Orb@addHtmlTemplate("nav/buttons", Root & "navigation\nav.html");
	Orb@addHtmlTemplate("nav/buttons-about", Root & "navigation/nav-about.html");
	Orb@addHtmlTemplate("slider", Root & "navigation\slider.html");
	
	/* login */
	Orb@addHtmlTemplate("login", Root & "login.html");
	Orb@addHtmlTemplate("welcome", Root & "welcome.html");
	Orb@addHtmlTemplate("login-error", Root & "navigation\login-error.html");
	
	/* chat */
	Orb@addHtmlTemplate("chat/message", Root & "chatroom\chat-message.html");
	Orb@addHtmlTemplate("chat/controls", Root & "chatroom\controls.html");
	Orb@addDynamicTemplate("upvotes", UpvotesTemplate);
	Orb@addDynamicTemplate("voted", ArrowTemplate);
	Orb@addHtmlTemplate("chat/banned", Root & "chatroom\banned.html");
	Orb@addDynamicTemplate("chat/me", HighlightMessageTemplate);
	
	/* agenda */
	Orb@addHtmlTemplate("agenda/item", Root & "agenda\agendaitem.html");
	Orb@addHtmlTemplate("agenda/item/light", Root & "agenda\agendalight.html");
	Orb@addHtmlTemplate("agenda/item/rated", Root & "agenda\agendafeedbackcomplete.html");
	Orb@addDynamicTemplate("dynamicagendaitem", AgendaTemplate);
	Orb@addHtmlTemplate("agenda/profile", Root & "agenda\speaker-profile.html");
	Orb@addHtmlTemplate("agenda/modal/close", Root & "navigation\agenda_modal_close.html");
	Orb@addHtmlTemplate("agenda/footer", Root & "agenda\agendafooter.html");
	Orb@addHtmlTemplate("agenda/rating", Root & "agenda\rating.html");
	Orb@addHtmlTemplate("agenda/item/rating", Root & "agenda\agendaitemrating.html");
	Orb@addHtmlTemplate("agendaitem/speaker", Root & "agenda\speaker-mini.html");
	Orb@addHtmlTemplate("agenda/speakeritem", Root & "agenda\speakeritem.html");
	
	/* login landing pages */
	Orb@addView("/", LoginViewRoute);
	Orb@addView("/login", LoginViewRoute);

	Orb@addView("/about", AboutViewRoute);
	Orb@addView("/map", MapViewRoute);
	Orb@addView("/chat", ChatViewRoute);
	Orb@addView("/agenda", AgendaViewRoute);
	
	/* live chat */
	Orb@addRoute("GET", "/livechat", LiveChatRoute);
	Orb@addRoute("POST", "/chatsend", ChatSendRoute);
	Orb@addRoute("POST", "/upvote", UpvoteRoute);
	
	/* login */
	Orb@addRoute("POST", "/welcome", LoginSubmitRoute);
	
	/* agenda */
	Orb@addRoute("POST", "/speakerprofile", SpeakerRoute);
	Orb@addRoute("POST", "/ratingmodal", RatingModalRoute);
	Orb@addRoute("POST", "/ratingsubmit", RatingSubmitRoute);
	Orb@addRoute("GET", "/liveagenda", LiveAgendaRoute);
	
	/* projector */
	Orb@addHtmlTemplate("projector/tech", ProjectorRoot & "technology-projector.html");
	Orb@addHtmlTemplate("projector/business", ProjectorRoot & "business-projector.html");
	Orb@addHtmlTemplate("projector/message", ProjectorRoot & "message.html");
	Orb@addRoute("GET", "/projector-tech", TechProjectorRoute);
	Orb@addRoute("GET", "/projector-business", BusinessProjectorRoute);
	
	/* version */
	Orb@addRoute("GET", "/dev-version", VersionRoute);
	
	Orb@addVirtualDirectory("/speaker-heads", Root & "\speaker-heads\", (60 * 60 * 24)); // cache speaker images for 24 hours - these shouldn't change
	Orb@addVirtualDirectory("/images", Root & "\images\"); // can't cache the styles - will break the demo!!!
	Orb@addVirtualDirectory("/scripts", Root & "\scripts\"); // don't cache the scripts - these might change
	Orb@addVirtualDirectory("/srcset", Root & "\srcset\", (60 * 60 * 24)); // cache the banners for 24 hours
	
	Orb@addVirtualDirectory("/pimages", ProjectorRoot & "\pimages\");
	Orb@addVirtualDirectory("/pscripts", ProjectorRoot & "\pscripts\");
	
	self.zScriptRoot := Root;
	
	self.developmentVersion := Version;
	
	if not app.isAppRunning(currentSchema.name, "TaskWorkerApp") then
		app.startApplication(currentSchema.name, "TaskWorkerApp");
	endif;
end;
}
initBackgroundWorkerApp
{
initBackgroundWorkerApp();

vars
	backgroundTask : BackgroundInstigator;
begin
	create backgroundTask transient;
end;
}
	)
	ViewController (
	jadeMethodSources
current
{
current(keyword : String) : StringUtf8;

vars

begin
	if self.currentView = null then
		return "";
	endif;

	if		self.currentView.class = AboutViewRoute 	then
		if keyword = "about" then return "current"; endif;
	elseif 	self.currentView.class = AgendaViewRoute 	then
		if keyword = "agenda" then return "current"; endif;
	elseif 	self.currentView.class = ChatViewRoute		then
		if keyword = "chat" then return "current"; endif;
	elseif 	self.currentView.class = MapViewRoute		then
		if keyword = "map" then return "current"; endif;		
	endif;
	return "";
end;
}
get
{
get() : ViewController updating;

vars

begin
	self.content := @''.Binary;
	self.section := @'';
	self.currentView := null;
	
	return self;
end;
}
orbContent
{
orbContent() : Binary;

begin
	return self.content;
end;
}
orbFull
{
orbFull() : Binary;

vars
	base : StringUtf8;
begin
	if self.currentView.class = LoginViewRoute or self.currentView.class = AboutViewRoute then
		base := "landingLayout";
	else
		base := "base";
	endif;
	return Orb@bindRaw(base, self);
end;
}
orbPartial
{
orbPartial() : Binary;

begin
	return 	Orb@bind("nav/title", self) 			&
			Orb@bind("nav/buttons", self);
end;
}
set
{
set(title : StringUtf8; contentnew : Binary; view : ViewRoute) updating;

vars

begin
	Orb@setTitle(title & Title);

	self.currentView 		:= view;

	self.section 			:= title;
	self.content 			:= contentnew;
end;
}
	)
	AgendaItem (
	jadeMethodSources
addRating
{
addRating(rating : Integer; feedback : String; user : UserAccount) updating;

vars
	ratingInfo : RatingInfo;
begin
	ratingInfo := create RatingInfo(rating, feedback, self, user) persistent;
end;
}
addTag
{
addTag(keyword : String);

vars
	techTag : Techtag;
	found	: Boolean;
begin
	foreach techTag in Techtag.instances do
		if techTag.techtag = keyword then
			found := true;
			break;
		endif;
	endforeach;
	
	if not found then
		create techTag persistent;
		techTag.techtag := keyword;
	endif;
	self.allTechtags.add(techTag);
end;
}
armExpiryTimer
{
armExpiryTimer();

vars
	delay 	: Integer;
	now		: Time;
begin
	if self.time_end > now then
		// hasn't expired yet - set the timer
		delay := self.time_end - now;
		
		self.endTimer(AgendaItem_Timer);
		self.beginTimer(delay, Timer_OneShot, AgendaItem_Timer);
	else
		self.endTimer(AgendaItem_Timer);
	endif;
end;
}
create
{
create(title, loc : String; start, finish : Time; speakers : SpeakerArray; blurb : String) updating;

vars

begin
	self.agenda_title := title;
	self.location := loc;
	self.time_start := start;
	self.time_end := finish;
	self.speaker_description := blurb;
	
	speakers.copy(self.allSpeakers);
	
	if AgendaItem.firstInstance <> null then
		self.id := AgendaItem.lastInstance.id + 1;
	else
		self.id := 1;
	endif;
	self.myController := ModelController.firstInstance;
end;
}
expired
{
expired(set: Boolean; _value: String io) mapping;

vars
	now : Time;
begin
	if set then
		// set code here
	else
		//now.setTime(6, 30, 0, 0);
		if now > self.time_end then
			_value := "expired";
		else
			_value := "";
		endif;
	endif;

end;
}
isLite
{
isLite() : Boolean;

begin
	return self.allSpeakers.size() = 0 and self.speaker_description = null;
end;
}
timerEvent
{
timerEvent(eventTag: Integer) updating;

vars

begin
	if eventTag = AgendaItem_Timer then
		beginTransaction;
		self.updateObjectEdition(self);
		commitTransaction;
	endif;
end;
}
trim
{
trim(time : String) : String;

vars
	pos : Integer;
begin
	pos := time.reversePos(':');
	return time[1:pos - 1];
end;
}
	)
	ChatMessage (
	jadeMethodSources
create
{
create(msg : String; person : String; user : UserAccount; chatroom : Chatroom) updating;

vars
	now : TimeStamp;
	last : ChatMessage;
begin
	exclusiveLock(app.modelController.allMessagesById);

	self.message := msg;
	self.person_name := person;
	self.myUser := user;
	self.myChatroom := chatroom;
	
	last := app.modelController.allMessagesById.last();
	if last <> null then
		self.id := last.id + 1;
	else
		self.id := 1;
	endif;
	self.myController := app.modelController;
	self.time := now;
	
epilog
	unlock(app.modelController.allMessagesById);
end;
}
getUserId
{
getUserId() : Integer;

vars

begin
	return self.myUser.id;
end;
}
upvote
{
upvote(user : UserAccount io);

vars

begin
	exclusiveLock(user.allLikedMessages);
	
	if user.allLikedMessages.includes(self) then
		// already upvoted, remove existing upvote
		user.allLikedMessages.remove(self);
	else
		// upvote message
		user.allLikedMessages.add(self);
	endif;
	self.updateObjectEdition(self);
epilog
	unlock(user.allLikedMessages);
end;
}
	)
	Chatroom (
	jadeMethodSources
create
{
create(newId : Integer; name : String; desc : String) updating;

vars

begin
	self.chatroom_name := name;
	self.chatroom_description := desc;
	self.id := newId;
	self.myController := ModelController.firstInstance;
end;
}
lastmessage
{
lastmessage() : Binary;

vars
	last : ChatMessage;
begin
	last := self.allMessages.last();
	if last <> null then
		return Orb@bind("projector/message", last);
	else
		return @"".Binary;
	endif;
end;
}
	)
	RatingInfo (
	jadeMethodSources
create
{
create(newRating : Integer; newFeedback : String; agendaItem : AgendaItem; user : UserAccount) updating;

vars

begin
	self.rating 		:= newRating;
	self.feedback 		:= newFeedback;
	self.myAgendaItem 	:= agendaItem;
	self.myUserAccount 	:= user;
end;
}
modify
{
modify(newRating : Integer; newFeedback : String) updating;

vars

begin
	self.rating 	:= newRating;
	self.feedback 	:= newFeedback;
end;
}
	)
	SpeakerInfo (
	jadeMethodSources
create
{
create(name, title, pic, bio, link : String) updating;

vars
	pos : Integer;
begin
	self.myController := ModelController.firstInstance;
	self.speaker_name := name;
	self.speaker_bio := bio;
	self.speaker_picture := pic;
	self.social_link := link;
	
	pos := title.pos(",", 1);
	if pos > 0 then
		self.speaker_title := title[1:pos];
		self.speaker_company := title[pos+1:end];
	else
		self.speaker_title := title;
	endif;
end;
}
photo
{
photo(ext : String) : String;

constants
	Root 	= "/speaker-heads/speaker-preview/";
	Prefix 	= "180x180-JV25-Speaker_Profile-";

vars
	name : String;
begin
	name := self.speaker_name.replace__(' ', '_', false);
	return Root & Prefix & name & "." & ext;
end;
}
speaker_full_title
{
speaker_full_title(set: Boolean; _value: String io) mapping;

vars

begin
	if set then
		// set code here
	else
		if speaker_company <> null then
			_value := speaker_title & " " & speaker_company;
		else
			_value := speaker_title;
		endif;
	endif;

end;
}
	)
	UserAccount (
	jadeMethodSources
create
{
create(nam, comp, em, cod, loc : String) updating;

vars

begin
	self.name := nam;
	self.company := comp;
	self.email := em;
	self.code := cod;
	if UserAccount.lastInstance <> null then
		self.id := UserAccount.lastInstance.id + 1; // XXX this will break under high load
	else
		self.id := 1;
	endif;
	self.myController := ModelController.firstInstance;
	self.stream := loc;
end;
}
isStream
{
isStream(value : String) : String;

vars

begin
	if self.stream = value then
		return 'checked="checked"';
	endif;
end;
}
toggleInSchedule
{
toggleInSchedule(item : AgendaItem) : Boolean updating;

// saves an item to the user's schedule if it wasn't already saved
// otherwise removes the item from the user's schedule if it saved
// returns true if the item was added, and false if it was removed

vars
	ret : Boolean;
begin
	exclusiveLock(self.allSavedAgendaItems);

	beginTransaction;
	if self.allSavedAgendaItems.includes(item) then
		self.allSavedAgendaItems.remove(item);
		ret := false;
	else
		self.allSavedAgendaItems.add(item);
		ret := true;
	endif;
	commitTransaction;
	
	return ret;
epilog
	unlock(self.allSavedAgendaItems);
end;
}
	)
	DynamicTemplates (
	jadeMethodSources
render
{
render(object : Object) : Binary;

begin
	return null;
end;
}
	)
	AgendaTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	item : AgendaItem;
	user : UserAccount;
	info : RatingInfo;
	lite : Boolean;
begin

	item := object.AgendaItem;
	
	if not Orb@sessionData(user) then
		return @''.Binary;
	endif;
	
	if item.location <> user.stream then
		// users can only see the agenda for the stream they're in
		return @''.Binary;
	endif;
	
	lite := item.isLite();
	
	// light items can't be rated
	if not lite and user <> null then
		info := item.allRatingsByUser[user];
		if info <> null then
			return Orb@bind("agenda/item/rated", item);
		endif;
	endif;

	if not lite then
		return Orb@bind("agenda/item", item);
	else
		return Orb@bind("agenda/item/light", item);
	endif;
end;
}
	)
	ArrowTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	user : UserAccount;
	msg : ChatMessage;
begin
	if Orb@sessionData(user) then
		msg := object.ChatMessage;
		if user.allLikedMessages.includes(msg) then
			return @"voted".Binary;
		endif;
	endif;

	return @''.Binary;
end;
}
	)
	BookmarkTemplate (
	jadeMethodSources
render
{
render(object : Object): Binary;

vars
	user : UserAccount;
	item : AgendaItem;
begin
	Orb@sessionData(user);
	
	item := object.AgendaItem;
	
	if user.allSavedAgendaItems.includes(item) then
		return Orb@bind("bookmark-fill", item);
	else
		return Orb@bind("bookmark-empty", item);
	endif;
end;
}
	)
	HighlightMessageTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	user : UserAccount;
	msg	 : ChatMessage;
begin
	if Orb@sessionData(user) then
		msg := object.ChatMessage;
		if user = msg.myUser then
			return @"me".Binary;
		endif;
	endif;

	return @''.Binary;
end;
}
	)
	HighlightTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	highlightedMessage : ChatMessage;
begin
	highlightedMessage := object.Chatroom.highlightedMessage;
	
	if highlightedMessage <> null then
		return Orb@bind("projector/highlight-frame", highlightedMessage);
	endif;

	return @'<span id="highlight" data-orb-id="highlight"></span>'.Binary;
end;
}
	)
	RatingTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	user	: UserAccount;
	item 	: AgendaItem;
	rating 	: RatingInfo;
begin
	item := object.AgendaItem;
	
	Orb@sessionData(user);
	
	rating := item.allRatingsByUser[user];
	if rating <> null then
		// show user's score
	endif;
	
	return Orb@bind("agenda/rating/unrated", null);
end;
}
	)
	UpvotesTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

// don't show a score if it's 0

vars
	msg : ChatMessage;
	votes : Integer64;
begin
	msg := object.ChatMessage;
	
	votes := msg.allLikingUsers.size64();
	
	if votes > 0 then
		return Orb@wrap(votes);
	else
		return Orb@wrap('');
	endif;
end;
}
	)
	JadeScript (
	jadeMethodSources
populateData
{
populateData();

vars

begin
	zInit;
	zAddChatrooms;
	zAddUsersFromData;
	zPopulateChatMsgs;
	zPopulateSpeakersFromData;
	zPopulateAgendaFromData;	
end;
}
zAddChatrooms
{
zAddChatrooms() protected;

vars
	cr : Chatroom;
begin
	beginTransaction;
	Chatroom.instances.purge;
	commitTransaction;
	
	beginTransaction;
	cr := create Chatroom(1, "Business Stream", "Business Stream") persistent;
	cr := create Chatroom(2, "Technical Stream", "Technical Stream") persistent;
	commitTransaction;
	
	write "[JV App] Chatrooms created";
end;
}
zAddUsersFromData
{
zAddUsersFromData() protected;

vars
	user : UserAccount;
begin
	beginTransaction;
	UserAccount.instances.purge;
	commitTransaction;
	
	beginTransaction;	
	user := create UserAccount("Marty McFly", "Future Inc.", "marty@example.com", "marty@example.com", "tech") persistent;
	commitTransaction;
	beginTransaction;
	user := create UserAccount("George McFly", "Future Inc.", "george@example.com", "george@example.com", "business") persistent;
	commitTransaction;
	
	write "[JV App] Users created";
end;
}
zInit
{
zInit() protected;

vars
	modelController : ModelController;
begin
	modelController := ModelController.firstInstance;
	if modelController = null then
		beginTransaction;
		create modelController persistent;
		commitTransaction;
	endif;
end;
}
zPopulateAgendaFromData
{
zPopulateAgendaFromData() protected;

vars
	tparser : AgendaXmlParser;
	bparser : AgendaXmlParser;
begin
	if app.zScriptRoot = null then
		app.initApp;
	endif;
	
	beginTransaction;
	AgendaItem.instances.purge;
	commitTransaction;
	
	create tparser transient;
	tparser.parseFile(app.zScriptRoot & "..\data\agenda_tech.xml");
	
	create bparser transient;
	bparser.parseFile(app.zScriptRoot & "..\data\agenda_business.xml");
epilog
	delete tparser;
	delete bparser;
	
	write "[JV App] Agenda populated";
	write "[JV App] All data loaded";
end;
}
zPopulateChatMsgs
{
zPopulateChatMsgs() protected;

constants
	Host = "Marty McFly";
vars
	cr : Chatroom;
	msg : ChatMessage;
	user : UserAccount;
	exploding : Binary;
	host : UserAccount;
	ex : FatalError;
begin
	if app.zScriptRoot = null then
		app.initApp;
	endif;
	
	exploding := #[f0 9f a4 af];
	
	user := UserAccount.firstInstance;
	
	beginTransaction;
	ChatMessage.instances.purge;
	commitTransaction;
	
	foreach user in app.modelController.allUsersById do
		if user.name = Host then
			host := user;
			break;
		endif;
	endforeach;
	
	if host = null then
		create ex transient;
		ex.errorCode := 1002;
		ex.errorItem := Host;
		ex.extendedErrorText := Host & " does not exist";
		raise ex;
	endif;
	
	foreach cr in Chatroom.instances do
		beginTransaction;
		msg := create ChatMessage("Welcome to the Jade Velocity Summit 2025!", Host, host, cr) persistent;
		commitTransaction;
	endforeach;
	
	write "[JV App] Chatrooms populated";
end;
}
zPopulateSpeakersFromData
{
zPopulateSpeakersFromData() protected;

vars
	parser : SpeakerXmlParser;
begin
	if app.zScriptRoot = null then
		app.initApp;
	endif;
	
	beginTransaction;
	SpeakerInfo.instances.purge;
	commitTransaction;
	
	create parser transient;
	parser.parseFile(app.zScriptRoot & "..\data\speakers.xml");
	
epilog
	delete parser;
	
	write "[JV App] Speaker info populated";
end;
}
	)
	AgendaXmlParser (
	jadeMethodSources
characters
{
characters(text: String) updating, protected;

vars

begin
	if inAgenda and inItem then
		if inTitle then
			dataTitle := dataTitle & text;
		elseif inStart then
			dataStart := dataStart & text;
		elseif inStop then
			dataStop := dataStop & text;
		elseif inSpeaker then
			dataSpeaker := dataSpeaker & text;
		elseif inBlurb then
			dataBlurb := dataBlurb & text;
		endif;
	endif;
end;
}
endElement
{
endElement(namespaceURI: String; localName: String; qualifiedName: String) updating, protected;

vars

begin
	if localName = "agenda" then
		inAgenda := false;
	elseif localName = "item" then
		inItem := false;
		self.xFinaliseItem();
	elseif localName = "start" then
		inStart := false;
	elseif localName = "stop" then
		inStop := false;
	elseif localName = "title" then
		inTitle := false;
	elseif localName = "blurb" then
		inBlurb := false;
	elseif localName = "speaker" then
		self.dataSpeakersList.add(self.dataSpeaker);
		self.dataSpeaker := null;
		inSpeaker := false;
	endif;
end;
}
startElement
{
startElement(namespaceURI: String; localName: String; qualifiedName: String; attributeCount: Integer) updating, protected;

begin
	if localName = "agenda" then
		self.getAttributeValueByName("location", self.dataLocation);
		inAgenda := true;
	elseif localName = "item" then
		inItem := true;
	elseif localName = "start" then
		inStart := true;
	elseif localName = "stop" then
		inStop := true;
	elseif localName = "title" then
		inTitle := true;
	elseif localName = "blurb" then
		inBlurb := true;
	elseif localName = "speaker" then
		inSpeaker := true;
	endif;
end;
}
xFinaliseItem
{
xFinaliseItem() updating, protected;

constants
	WarnMissingSpeaker = false;

vars
	start : Time;
	stop : Time;
	item : AgendaItem;
	speaker : SpeakerInfo;
	speakerName : String;
	speakers : SpeakerArray;
begin
	start := dataStart.Time;
	stop := dataStop.Time;
	
	create speakers transient;
	
	foreach speakerName in self.dataSpeakersList where speakerName <> null do
		speaker := app.modelController.allSpeakersByName[speakerName];
		if speaker <> null then
			speakers.add(speaker);
			
			if speaker.social_link = null then
				write dataTitle & ": " & "speaker missing social link [" & speakerName & "]";
			endif;
		else
			if WarnMissingSpeaker then
				write dataTitle & ": " & "missing speaker [" & speakerName & "]";
			endif;
		endif;
	endforeach;

	beginTransaction;
	item := create AgendaItem(dataTitle, self.dataLocation, start, stop, speakers, self.dataBlurb) persistent;
	commitTransaction;

	
epilog
	dataTitle := '';
	dataStart := '';
	dataStop := '';
	dataSpeaker := '';
	dataBlurb := '';
	dataSpeakersList.clear;
	
	delete speakers;
end;
}
	)
	SpeakerXmlParser (
	jadeMethodSources
characters
{
characters(text: String) updating, protected;

vars

begin
	if inSpeakers and inSpeaker then
		if inName then
			dataName := dataName & text;
		elseif inBio then
			dataBio := dataBio & text;
		elseif inTitle then
			dataTitle := dataTitle & text;
		elseif inSocial then
			dataSocial := dataSocial & text;
		endif;
	endif;
end;
}
endElement
{
endElement(namespaceURI: String; localName: String; qualifiedName: String) updating, protected;

vars

begin
	if localName = "bio" then
		inBio := false;
	elseif localName = "name" then
		inName := false;
	elseif localName = "title" then
		inTitle := false;
	elseif localName = "social" then
		inSocial := false;
	elseif localName = "speaker" then
		inSpeaker := false;
		self.xFinaliseSpeakerData();
	elseif localName = "speakers" then
		inSpeakers := false;
	endif;
end;
}
startElement
{
startElement(namespaceURI: String; localName: String; qualifiedName: String; attributeCount: Integer) updating, protected;

vars
	doingSpeakerData : Boolean;
begin
	if localName = "speakers" then
		inSpeakers := true;
	elseif inSpeakers and localName = "speaker" then
		inSpeaker := true;
	else
		doingSpeakerData := inSpeakers and inSpeaker;
	endif;
	
	if doingSpeakerData then
		if localName = "name" then
			inName := true;
		elseif localName = "bio" then
			inBio := true;
		elseif localName = "title" then
			inTitle := true;
		elseif localName = "social" then
			inSocial := true;
		endif;
	endif;
end;
}
xFinaliseSpeakerData
{
xFinaliseSpeakerData() updating, protected;

vars
	speaker : SpeakerInfo;
begin
	if self.dataName <> null and self.dataBio <> null then
		beginTransaction;
		speaker := create SpeakerInfo(self.dataName, self.dataTitle, "", zTrim(self.dataBio), self.dataSocial) persistent;
		commitTransaction;
	endif;
	
epilog
	dataBio := "";
	dataName := "";
	dataTitle := "";
	dataSocial := "";
end;
}
zTrim
{
zTrim(s : String) : String protected;

vars
	new : String;
	pos : Integer;
	start : Integer;
	stop : Integer;
begin
	pos := 1;
	while pos < s.length() do
		if s[pos] = ' ' then
		elseif s[pos] = Cr then
		elseif s[pos] = Lf then
		else
			start := pos;
			break;
		endif;
		pos := pos + 1;
	endwhile;
	
	pos := s.length();
	while pos > 0 do
		if s[pos] = ' ' then
		elseif s[pos] = Cr then
		elseif s[pos] = Lf then
		else
			stop := pos;
			break;
		endif;
		pos := pos - 1;
	endwhile;
	
	return s[start : stop - start + 1];
end;
}
	)
	BackgroundInstigator (
	jadeMethodSources
create
{
create() updating;

vars
	item : AgendaItem;
begin
	foreach item in ModelController.firstInstance.allAgendaItemsByTime do
		item.armExpiryTimer;
	endforeach;

	self.beginClassNotification(AgendaItem, false, Any_System_Event, Response_Continuous, Notification_AgendaItem_Update);
end;
}
sysNotification
{
sysNotification(eventType: Integer; theObject: Object; eventTag: Integer) updating;

vars

begin
	if eventTag = Notification_AgendaItem_Update then
		theObject.AgendaItem.armExpiryTimer;
	endif;
end;
}
	)
	CsvParser (
	jadeMethodSources
parseGuests
{
parseGuests(filename : String; fnames, lnames, emails : StringArray io) typeMethod;

vars
	f : File;
	line : String;
	first,last,email : String;
	pos : Integer;
begin
	create f transient;
	f.fileName := filename;
	f.open;
	
	while not f.endOfFile() do
		line := f.readLine();
		pos := 1;
		first := line.scanUntil(",", pos);
		pos := pos + 1;
		last := line.scanUntil(",", pos);
		pos := pos + 1;
		email := line.scanUntil(",", pos);
		
		first := first.trimBlanks();
		last := last.trimBlanks();
		email := email.trimBlanks();
		email := email.toLower();
		
		fnames.add(first);
		lnames.add(last);
		emails.add(email);
	endwhile;
	
epilog
	f.close;

	delete f;
end;
}
parseStaff
{
parseStaff(filename : String; fnames, lnames, emails, streams : StringArray io) typeMethod;

vars
	f : File;
	line : String;
	first,last,email : String;
	whence : String;
	pos : Integer;
begin
	create f transient;
	f.fileName := filename;
	f.open;
	
	while not f.endOfFile() do
		line := f.readLine();
		pos := 1;
		first := line.scanUntil(",", pos);
		pos := pos + 1;
		last := line.scanUntil(",", pos);
		pos := pos + 1;
		email := line.scanUntil(",", pos);
		pos := pos + 1;
		whence := line.scanUntil(",", pos);
		
		first := first.trimBlanks();
		last := last.trimBlanks();
		email := email.trimBlanks();
		email := email.toLower();
		
		fnames.add(first);
		lnames.add(last);
		emails.add(email);
		
		if whence = "business" then
			streams.add(whence);
		elseif whence = "technical" then
			streams.add("tech");
		elseif whence = "Speaker" then
			streams.add("business");
		elseif whence = "uk" then
			streams.add("uk");
		elseif whence = "Stream" then
			streams.add("--");
		else
			FatalError.raise_(1000, "Invalid stream " & whence);
		endif;
	endwhile;
	
epilog
	f.close;

	delete f;
end;
}
	)
	Routes (
	jadeMethodSources
bounce
{
bounce() : Binary;

vars

begin
	return Orb@redirect("/login");
end;
}
execute
{
execute() : Integer updating;

begin
	return null;
end;
}
loggedIn
{
loggedIn() : Boolean;

vars
	user : UserAccount;
begin
	if not Orb@sessionData(user) then
		return false;
	endif;
	
	if user = null then
		return false;
	endif;
	
	if not app.isValidObject(user) then
		return false;
	endif;
	
	return true;
end;
}
render
{
render(executeResult : Integer) : Binary;

begin
	return null;
end;
}
	)
	ChatSendRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	cr : Chatroom;
	msg : ChatMessage;
	user : UserAccount;
begin
	if self.isMessageEmpty(self.message) then
		// empty message - just do nothing
		return IOrbRoute.Failure;
	endif;

	cr := app.modelController.allChatroomsById[self.roomid];

	if Orb@sessionData(user) then
		if user.locked then
			// user has been naughty - message not being posted
			self.showBannedMessage := true;
			return IOrbRoute.Failure;
		endif;
	
		beginTransaction;
		msg := create ChatMessage(self.message, user.name, user, cr) persistent;
		commitTransaction;
	endif;
	
	return inheritMethod();
end;
}
isMessageEmpty
{
isMessageEmpty(msg : String) : Boolean;

vars
	idx : Integer;
begin
	if msg.length() = 0 then
		return true;
	endif;

	// check if message contains any character other than: space, cr, lf, <nbsp>
	idx := 1;
	msg.scanWhile(' ' & CrLf & #[c2 a0].String, idx);
	return idx = 0;
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	if self.showBannedMessage then
		return Orb@bind("chat/banned", null);
	endif;

	return inheritMethod(executeResult);
end;
}
	)
	LiveAgendaRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars

begin
	return Orb@liveUpdate(app.modelController.allAgendaItemsByTime, "dynamicagendaitem");
end;
}
	)
	LiveChatRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	room : Chatroom;
	user : UserAccount;
begin

	if Orb@sessionData(user) or self.projector = "tech01" then
		room := app.modelController.allChatroomsById[self.id];	
		self.chatroom := room;
		return IOrbRoute.Success;
	endif;
	
	return IOrbRoute.Failure;
end;
}
render
{
render(executeResult: Integer): Binary;

vars
	templ : StringUtf8;
begin
	if self.projector = null then
		templ := "chat/message";
	else
		templ := "projector/message";
	endif;

	if executeResult = IOrbRoute.Success then
		return Orb@liveUpdate(self.chatroom.allMessages, templ);
	endif;

	return bounce();
end;
}
	)
	LoginSubmitRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : UserAccount;
	lc : String;
begin
	lc := self.code.toLower();
	user := app.modelController.allUsersByCode[lc];
	
	if user <> null then
		self.userLoggedIn := user;
		Orb@sessionStart(user, 60 * 24, 60 * 24);
		return IOrbRoute.Success;	
	endif;

	return IOrbRoute.Failure;
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	if executeResult <> IOrbRoute.Success then
		return Orb@bind("login-error", null);
	endif;
	
	return Orb@bind("welcome", self.userLoggedIn);
end;
}
	)
	BusinessProjectorRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	room : Chatroom;
begin
	room := app.modelController.allChatroomsById[1];

	return Orb@bind("projector/business", room);
end;
}
	)
	TechProjectorRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	room : Chatroom;
begin
	room := app.modelController.allChatroomsById[2];

	return Orb@bind("projector/tech", room);
end;
}
	)
	RatingModalRoute (
	jadeMethodSources
checked
{
checked(value : String) : String;

vars

begin
	if self.rating = value.Integer then
		return "checked";
	endif;
	
	return "";
end;
}
execute
{
execute(): Integer updating;

vars
	user 	: UserAccount;
	item	: AgendaItem;
	info 	: RatingInfo;
begin
	if Orb@sessionData(user) then
		item := app.modelController.allAgendaItemsById[self.talk];
		info := item.allRatingsByUser[user];
		
		if info <> null then
			self.rating := info.rating;
			self.feedback := info.feedback;
		endif;

		return IOrbRoute.Success;
	endif;
	
	return IOrbRoute.Failure;
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	if executeResult = IOrbRoute.Success then
		return Orb@bind("agenda/rating", self);
	else
		return bounce();
	endif;
end;
}
	)
	RatingSubmitRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	agendaItem 	: AgendaItem;
	ratingInfo	: RatingInfo;
	userAccount	: UserAccount;
begin
	if self.talk <> null then
		if Orb@sessionData(userAccount) then
			agendaItem := app.modelController.allAgendaItemsById[self.talk];
			self.item := agendaItem;
			ratingInfo := agendaItem.allRatingsByUser[userAccount];

			beginTransaction;
			if ratingInfo <> null then
				ratingInfo.modify(self.rating, self.feedback);
			else
				agendaItem.addRating(self.rating, self.feedback, userAccount);
			endif;
			commitTransaction;
		endif;
	endif;
	
	return inheritMethod();
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	if self.item <> null then
		return Orb@bind("agenda/item/rated", self.item) & Orb@bind("agenda/modal/close", null);
	else
		return Orb@bind("agenda/modal/close", null);
	endif;
end;
}
	)
	SpeakerRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars

begin
	if self.name <> null then
		self.speaker := app.modelController.allSpeakersByName[self.name];
	else
		self.speaker := null;
	endif;

	return inheritMethod();
end;
}
render
{
render(executeResult: Integer): Binary;

begin
	if not loggedIn() then
		return bounce();
	endif;

	if self.speaker <> null then
		return Orb@bind("agenda/profile", self.speaker);
	else
		return Orb@bind("agenda/modal/close", null);
	endif;
end;
}
	)
	UpvoteRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : UserAccount;
	msg : ChatMessage;
begin
	if Orb@sessionData(user) then
		if user.locked then
			// don't let banned users upvote messages
			return IOrbRoute.Failure;
		endif;
	
		msg := app.modelController.allMessagesById[self.id];
		if msg <> null then
			beginTransaction;
			msg.upvote(user);
			commitTransaction;
		endif;
	endif;
	
	return inheritMethod();
end;
}
	)
	VersionRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars

begin
	return app.developmentVersion.Binary;
end;
}
	)
	AboutViewRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	vc : ViewController;
	content : Binary;
begin
	vc := app.viewController.get;
	content := Orb@bind("about", app.modelController);
	vc.set("About", content, self);
	return Orb@view(vc);
end;
}
	)
	AgendaViewRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	vc : ViewController;
	content : Binary;
	user : UserAccount;
	title : StringUtf8;
begin
	if not Orb@sessionData(user) then
		return bounce();
	endif;
	
	if user.stream = "business" then
		title := "Business Stream";
	else
		title := "Technical Stream";
	endif;

	vc := app.viewController.get;
	content := Orb@bind("agenda", app.modelController);
	vc.set(title, content, self);
	return Orb@view(vc);
end;
}
	)
	ChatViewRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	user : UserAccount;
begin
	if not Orb@sessionData(user) then
		return IOrbRoute.Failure;
	endif;

	if user.stream = "business" then
		self.chatroom := app.modelController.allChatroomsById[1];
	else /* user.stream = "tech" */
		self.chatroom := app.modelController.allChatroomsById[2];
	endif;

	return IOrbRoute.Success;
end;
}
render
{
render(executeResult: Integer): Binary;

vars
	vc : ViewController;
	content : Binary;
begin
	if executeResult = IOrbRoute.Failure then
		return bounce();
	endif;

	vc := app.viewController.get;
	
	content := Orb@bind("chat/local", self.chatroom);
	vc.set(self.chatroom.chatroom_name.StringUtf8, content, self);
	return Orb@view(vc);
end;
}
	)
	LoginViewRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	vc : ViewController;
	content : Binary;
	user : UserAccount;
begin
	if not Orb@sessionData(user) or self.a = "nm" then
		vc := app.viewController.get;
		content := Orb@bind("login", app.modelController);
		vc.set("Login", content, self);
		return Orb@view(vc);
	else
		// send logged in users to the agenda
		return Orb@redirect("/agenda");
	endif;
end;
}
	)
	MapViewRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	vc : ViewController;
	content : Binary;
begin
	vc := app.viewController.get;
	content := Orb@bind("map", app.modelController);
	vc.set("Map", content, self);
	return Orb@view(vc);
end;
}
	)
	SpeakerViewRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars
	vc : ViewController;
	speaker : SpeakerInfo;
	content : Binary;
begin
	speaker := app.modelController.allSpeakersByName[self.name];

	vc := app.viewController.get;
	content := Orb@bind("agenda/profile", speaker);
	vc.set("Agenda", content, self);
	return Orb@view(vc);
end;
}
	)
	SJvsCutSchema (
	jadeMethodSources
processRequest
{
processRequest(httpString: String; queryString: String) updating;

vars
	ws : WebSession;
begin
	ws := currentSession;
	Orb@processRequest(httpString, queryString, ws);
end;
}
	)
