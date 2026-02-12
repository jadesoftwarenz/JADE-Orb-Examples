jadeVersionNumber "25.0.01";
schemaDefinition
JadeStudioModelSchema subschemaOf RootSchema completeDefinition;
constantDefinitions
	categoryDefinition TAF_JadeExceptions
		TAF_Ex_1034_Duplicated_object: Integer = 1034;
		TAF_Ex_1046_Invalid_class_number:Integer = 1046;
		TAF_Ex_1072_Object_deleted_in_current_transaction:Integer = 1072;
		TAF_Ex_1090_Null_object_reference:Integer = 1090;
		TAF_Ex_1310_Key_already_used_in_dictionary:Integer = 1310;
		TAF_Ex_4_Object_deleted:       Integer = 4;
	categoryDefinition TAF_KeyCodes
		TAF_Key_Shift_Alt:             Integer = 4;
		TAF_Key_Shift_Ctrl:            Integer = 2;
		TAF_Key_Shift_Shift:           Integer = 1;
	categoryDefinition TAF_NotificationEvents
		TAF_Event_SaveOutstandingChanges:Integer = 1001;
	categoryDefinition TAF_TransactionConstants
		TAF_TransactionType_Delete:    Integer = -1;
		TAF_TransactionType_Modify_LockEntity:Integer = 1001;
		TAF_TransactionType_Modify_UnlockEntity:Integer = 1002;
		TAF_TransactionType_Persist:   Integer = 0;
		TAF_ValidationType_Create:     Integer = 1;
		TAF_ValidationType_Delete:     Integer = 3;
		TAF_ValidationType_Modify:     Integer = 4;
		TAF_ValidationType_Update:     Integer = 2;
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
translatableStringDefinitions
5129 "English (New Zealand)"
	(
	AnotherUserUpdatedThisEntity="Another user updated this entity prior to your update attempt.  Update aborted.";
	ChangesSinceOpeningForm="You have made changes since opening this form.
Do you want to save these changes before closing this form?";
	CreateConflictedWithAnotherUser="Create conflicted with another user's activity.  Try again shortly.";
	DateEnteredIsInvalid="The date you have entered is not valid.

You need to enter the date in the format dd/mm/yyyy

ie: Up to two digits for day/month and you must enter four digits for the year";
	DeleteConflictedWithAnotherUser="Delete conflicted with another user's activity.  Try again shortly.";
	ErrorDuringSave="Error during save";
	InvalidDateEntered="Invalid date entered";
	OutstandingChanges="Outstanding Changes";
	Thing="thing";
	ThingAlreadyBeingEdited( pThing )= pThing & " is already being edited";
	ThingCurrentlyEdited( pThing )= "This " & pThing & " is currently being edited.
Would you like to send a 'Save' request so that any changes made are saved?";
	UpdateConflictedWithAnotherUser="Update conflicted with another user's activity.  Try again shortly.";
	)
typeHeaders
	JadeStudioModelSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	GJadeStudioModelSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	TAFObject subclassOf Object abstract;
	TAFPersistent subclassOf TAFObject abstract;
	Album subclassOf TAFPersistent;
	JadeStudioRootObject subclassOf TAFPersistent;
	Photo subclassOf TAFPersistent;
	User subclassOf TAFPersistent;
	TAFTransient subclassOf TAFObject abstract, subclassSharedTransientAllowed, subclassTransientAllowed;
	TAFNotificationBase subclassOf TAFTransient transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	TAFNotification subclassOf TAFNotificationBase transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	TAFNotificationManager subclassOf TAFNotificationBase transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	TAFPersistentTA subclassOf TAFTransient abstract, transient, subclassSharedTransientAllowed, subclassTransientAllowed;
	AlbumTA subclassOf TAFPersistentTA transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	PhotoTA subclassOf TAFPersistentTA transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	RootObjectTA subclassOf TAFPersistentTA transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	UserTA subclassOf TAFPersistentTA transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	TAFTransactionImplementor subclassOf TAFTransient abstract, transient, subclassTransientAllowed;
	TAFAbortTransactionTI subclassOf TAFTransactionImplementor transient, transientAllowed, subclassTransientAllowed;
	TAFCommitTransactionTI subclassOf TAFTransactionImplementor transient, transientAllowed, subclassTransientAllowed;
	TAFCommitTransactionOnIntervalTI subclassOf TAFCommitTransactionTI transient, transientAllowed, subclassTransientAllowed;
	TAFNoTransactionTI subclassOf TAFTransactionImplementor transient, transientAllowed, subclassTransientAllowed;
	TAFSubordinateTransactionTI subclassOf TAFNoTransactionTI transient, transientAllowed, subclassTransientAllowed;
	TAFUtilities subclassOf TAFTransient transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	SJadeStudioModelSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	AlbumByName subclassOf MemberKeyDictionary loadFactor = 66;
	PhotoByGUID subclassOf MemberKeyDictionary loadFactor = 66;
	TAFNotificationByObjectByEventByInfoDict subclassOf MemberKeyDictionary loadFactor = 66;
	TAFNotificationBySequenceDict subclassOf MemberKeyDictionary loadFactor = 66;
	UserByEmailMKD subclassOf MemberKeyDictionary loadFactor = 66;
	AlbumArray subclassOf Array;
	PhotoArray subclassOf Array;
membershipDefinitions
	AlbumByName of Album;
	PhotoByGUID of Photo;
	TAFNotificationByObjectByEventByInfoDict of TAFNotification;
	TAFNotificationBySequenceDict of TAFNotification;
	UserByEmailMKD of User;
	AlbumArray of Album;
	PhotoArray of Photo;
typeDefinitions
	Object completeDefinition
	(
	jadeMethodDefinitions
		tafCauseEvent(
			pEventType: Integer; 
			pImmediate: Boolean; 
			pUserInfo: Any);
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	JadeStudioModelSchema completeDefinition
	(
	referenceDefinitions
		jadeStudioRootObj:             JadeStudioRootObject ;
		myNotificationManager:         TAFNotificationManager ;
	jadeMethodDefinitions
		exception_handler_ignore_4_1090_1072_1046_with_context_and_flag(
			pException: Exception; 
			pObject: Object; 
			pInvalidObject: Boolean output): Integer;
		tafAbortTransaction();
		tafCommitTransaction();
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
	JadeRestService completeDefinition
	(
	)
	JadeScript completeDefinition
	(
	)
	TAFObject completeDefinition
	(
	jadeMethodDefinitions
		dummyMethod() protected;
	)
	TAFPersistent completeDefinition
	(
	attributeDefinitions
		guid:                          String[39];
		lockedByProcessId:             Decimal[12] readonly;
		lockedTimeStamp:               TimeStamp readonly;
	jadeMethodDefinitions
		getTAClass(): Class;
		isSoftLockedByMe(): Boolean;
		onCreate(pTA: TAFPersistentTA) updating;
		onDelete(pTA: TAFPersistentTA) updating;
		onModify(pTA: TAFPersistentTA) updating;
		onUpdate(pTA: TAFPersistentTA) updating;
		setCommonProperties(pTA: TAFPersistentTA) updating, protected;
	)
	Album completeDefinition
	(
	attributeDefinitions
		description:                   StringUtf8[255];
		name:                          StringUtf8[30];
	referenceDefinitions
		myUser:                        User   explicitEmbeddedInverse;
		photos:                        PhotoArray   explicitInverse;
	jadeMethodDefinitions
		getFirstPhotoGuid(): StringUtf8;
		onCreate(pTA: AlbumTA) updating;
		setCommonProperties(pTA: AlbumTA) updating, protected;
	)
	JadeStudioRootObject completeDefinition
	(
	referenceDefinitions
		userByEmail:                   UserByEmailMKD   explicitInverse;
	jadeMethodDefinitions
		onCreate(pTA: TAFPersistentTA) updating;
		setCommonProperties(pTA: TAFPersistentTA) updating, protected;
	)
	Photo completeDefinition
	(
	attributeDefinitions
		image:                         Binary;
		name:                          StringUtf8;
		photo:                         StringUtf8;
	referenceDefinitions
		myAlbum:                       Album   explicitEmbeddedInverse;
		myUser:                        User   explicitEmbeddedInverse, protected;
	jadeMethodDefinitions
		onCreate(pTA: PhotoTA) updating;
		onDelete(pTA: TAFPersistentTA) updating;
		setCommonProperties(pTA: PhotoTA) updating, protected;
	)
	User completeDefinition
	(
	attributeDefinitions
		email:                         StringUtf8[30];
		firstName:                     StringUtf8[50];
		lastName:                      StringUtf8[30];
	referenceDefinitions
		albumByName:                   AlbumByName   explicitInverse;
		myRoot:                        JadeStudioRootObject   explicitEmbeddedInverse, protected;
		photoByGuid:                   PhotoByGUID   explicitInverse;
	jadeMethodDefinitions
		onCreate(pTA: UserTA) updating;
		onDelete(pTA: TAFPersistentTA) updating;
		setCommonProperties(pTA: UserTA) updating, protected;
	)
	TAFTransient completeDefinition
	(
	)
	TAFNotificationBase completeDefinition
	(
	)
	TAFNotification completeDefinition
	(
	attributeDefinitions
		eventType:                     Integer;
		infoString:                    String[201] readonly;
		infoType:                      String[101] protected;
		sequence:                      Integer;
	referenceDefinitions
		myNotificationManager:         TAFNotificationManager   explicitEmbeddedInverse;
		myObject:                      Object ;
	jadeMethodDefinitions
		getInfo(): Any;
		setInfo(pUserInfo: Any) updating;
	)
	TAFNotificationManager completeDefinition
	(
	attributeDefinitions
		duplicateNotificationCount:    Integer readonly;
		ignoreAllNotifications:        Boolean;
	referenceDefinitions
		allNotifications:              TAFNotificationByObjectByEventByInfoDict   explicitInverse, protected;
		allNotificationsInSequence:    TAFNotificationBySequenceDict   explicitInverse, readonly;
	jadeMethodDefinitions
		clearScheduledNotifications();
		handleDuplicateNotificationException(
			pException: Exception; 
			pDuplicateNotification: Boolean output): Integer;
		scheduleNotification(
			noteObj: Object; 
			intEventType: Integer; 
			userInfo: Any) updating;
		sendScheduledNotifications();
	)
	TAFPersistentTA completeDefinition
	(
	constantDefinitions
		TransactionTypePersist:        Integer = 0;
	attributeDefinitions
		allErrors:                     StringArray;
		documentationText
`All errors encountered during the update, including for example validation errors.

Any error will result in that TA aborting the create/update/delete/modify operation.

If a TA has subordinate TAs, any error returned from the subordinate TA should be copied to the controlling TA so that the framework will abort the transaction and return the errors.`
		allWarnings:                   StringArray;
		documentationText
`All warning messages returned by a TA.

eg: You could call the 'validate' method prior to attempting an update.  Then, if only warnings are returned you can display those warnings to the user and ask them if they want to continue with the update.

Warnings won't prevent the TA from completing a requested create/update/delete/modify.`
		expectedEdition:               Integer;
		focusField:                    String[31];
		documentationText
`A "generic name" for the field which should receive focus when an error is returned by the TA`
		guid:                          String[39];
		lockedByProcessId:             Decimal[12];
		lockedTimeStamp:               TimeStamp;
		modificationCode:              Integer;
	referenceDefinitions
		myPersistentObject:            TAFPersistent ;
	jadeMethodDefinitions
		addError(
			pError: String; 
			pFocusField: String) updating, protected, final;
		addWarning(
			pWarning: String; 
			pFocusField: String) updating, protected, final;
		checkEdition(pExpectedEdition: Integer): Boolean protected;
		clearErrors() updating, protected, final;
		clearErrorsOnSubordinateTAs() updating, protected;
		clearWarnings() updating, protected, final;
		clearWarningsOnSubordinateTAs() updating, protected;
		copyErrors(pFromTA: TAFPersistentTA) updating, protected, final;
		copyWarnings(pFromTA: TAFPersistentTA) updating, protected, final;
		createEntity(): Boolean updating, protected, final;
		createEntityInTransState(): Boolean updating, protected, final;
		createEntityWithTransactionImplementor(pTransactionImplementor: TAFTransactionImplementor): Boolean updating, protected, final;
		createSubordinateObjects(): Boolean updating, protected;
		deleteEntity(): Boolean updating, protected, final;
		deleteEntityInTransState(): Boolean updating, protected, final;
		deleteEntityWithTransactionImplementor(pTransactionImplementor: TAFTransactionImplementor): Boolean updating, protected, final;
		deleteSubordinateObjects(): Boolean updating, protected;
		doAbortTransactionCleanup() updating, protected, final;
		doAbortTransactionCleanupForSubordinateObjects() protected;
		doCreate(): Boolean updating, protected, final;
		doDelete(): Boolean updating, protected, final;
		doModify(pModification: Integer): Boolean updating, protected, final;
		doPreValidate() updating;
		doUpdate(): Boolean updating, protected, final;
		doValidate(pValidationType: Integer): Boolean updating;
		getFullErrorDetails(): String final;
		getPersistentObject(): TAFPersistent;
		getPersistentObjectClass(): Class protected;
		hasErrors(): Boolean protected, final;
		hasNoErrors(): Boolean protected, final;
		hasOnlySubordinatePersistentObjects(): Boolean protected;
		initialize() updating;
		lockForCreate(): Boolean protected;
		lockForDelete(): Boolean protected;
		lockForModify(): Boolean protected;
		lockForUpdate(): Boolean protected;
		modifyEntity(pModification: Integer): Boolean updating, protected, final;
		modifyEntityInTransState(pModification: Integer): Boolean updating, protected, final;
		modifyEntityWithTransactionImplementor(
			pTransactionImplementor: TAFTransactionImplementor; 
			pModification: Integer): Boolean updating, protected, final;
		modifySubordinateObjects(pModification: Integer): Boolean updating, protected;
		persistEntity(pTransactionType: Integer): Boolean updating, final;
		persistEntityInTransState(pTransactionType: Integer): Boolean updating, final;
		populateFromObject(pModelObject: TAFPersistent) updating;
		populateSubordinateObjects(pModelObject: TAFPersistent) updating, protected;
		tryLockingObject(pObject: Object): Boolean protected, final;
		updateEntity(): Boolean updating, protected, final;
		updateEntityInTransState(): Boolean updating, protected, final;
		updateEntityWithTransactionImplementor(pTransactionImplementor: TAFTransactionImplementor): Boolean updating, protected, final;
		updateSubordinateObjects(): Boolean updating, protected;
	)
	AlbumTA completeDefinition
	(
	attributeDefinitions
		description:                   StringUtf8;
		name:                          StringUtf8;
	referenceDefinitions
		user:                          User ;
	jadeMethodDefinitions
		getPersistentObject(): Album;
		getPersistentObjectClass(): Class protected;
	)
	PhotoTA completeDefinition
	(
	attributeDefinitions
		name:                          StringUtf8;
		photo:                         Binary;
	referenceDefinitions
		album:                         Album ;
		myUser:                        User ;
	jadeMethodDefinitions
		getPersistentObjectClass(): Class protected;
	)
	RootObjectTA completeDefinition
	(
	jadeMethodDefinitions
		getPersistentObjectClass(): Class protected;
	)
	UserTA completeDefinition
	(
	attributeDefinitions
		email:                         StringUtf8[255];
		first_name:                    StringUtf8[255];
		last_name:                     StringUtf8[255];
	jadeMethodDefinitions
		getPersistentObjectClass(): Class protected;
	)
	TAFTransactionImplementor completeDefinition
	(
	jadeMethodDefinitions
		doAbortTransaction() abstract;
		doBeginTransaction() abstract;
		doCommitTransaction() abstract;
		doIntermediateCommitIfDue(): Boolean;
	)
	TAFAbortTransactionTI completeDefinition
	(
		documentationText
`This implementor will do go into transaction state but will never commit ( method doEndTransaction will abort)

For use by

		*  Unit Test
		*  preview code eg. where preview is doing some persistent updating, to get the results for display and then aborting

`
	jadeMethodDefinitions
		doAbortTransaction();
		doBeginTransaction();
		doCommitTransaction();
	)
	TAFCommitTransactionTI completeDefinition
	(
		documentationText
		`For normal persistent update of objects`
	jadeMethodDefinitions
		doAbortTransaction();
		doBeginTransaction();
		doCommitTransaction();
	)
	TAFCommitTransactionOnIntervalTI completeDefinition
	(
		documentationText
`This behaves exactly the same as the CommitTransactionTI, but there is also an extra method  'doEndBeginTransactionIfDue' that can be used when a longer background task is running and you want to commit periodically.

This implementor will only do the commit if it has been in transaction state for > 3000 milliseconds (3 seconds) when the method  doEndBeginTransactionIfDue is called. It is up to the developer to call the doEndBeginTransactionIfDue method at an appropriate point in the processing, the interim begin/commit does not occur automatically. 

If you want a different interval to the default of 3 seconds, use method setMaxDurationMS  to overwrite the default millseconds
`
	constantDefinitions
		Default_MaxDuration:           Integer = 3000;
		documentationText
		`3 seconds`
	attributeDefinitions
		maxDurationMS:                 Integer protected;
	jadeMethodDefinitions
		create() updating;
		doIntermediateCommitIfDue(): Boolean;
		setMaxDurationMS(pMilliSeconds: Integer) updating;
	)
	TAFNoTransactionTI completeDefinition
	(
		documentationText
`For use by test code, such as Unit Tests.

  eg:  The unit test must always code the begin/abort/commit in the relevant unit test methods.

The doBeginTransaction, doEndTransaction, and doAbortTransaction do nothing!!
`
	jadeMethodDefinitions
		doAbortTransaction();
		doBeginTransaction();
		doCommitTransaction();
	)
	TAFSubordinateTransactionTI completeDefinition
	(
		documentationText
`For use by subordinate TA method where the parent TA is responsible for controlling the transaction state. 

The doBeginTransaction, doEndTransaction, and doAbortTransaction do nothing!!

Behaves the same as NoTransactionTI, but class name implies a more specific usage.
`
	)
	TAFUtilities completeDefinition
	(
	jadeMethodDefinitions
		generateGUID(): String typeMethod;
		getServerDate(): Date typeMethod;
		getServerTimeStamp(): TimeStamp typeMethod;
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
	AlbumByName completeDefinition
	(
	)
	PhotoByGUID completeDefinition
	(
	)
	TAFNotificationByObjectByEventByInfoDict completeDefinition
	(
	)
	TAFNotificationBySequenceDict completeDefinition
	(
	)
	UserByEmailMKD completeDefinition
	(
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	AlbumArray completeDefinition
	(
	)
	PhotoArray completeDefinition
	(
	)
	Integer completeDefinition
	(
	jadeMethodDefinitions
		isAltPressed(): Boolean;
		isCtrlPressed(): Boolean;
		isShiftPressed(): Boolean;
	)
	String completeDefinition
	(
	jadeMethodDefinitions
		appendTextWithDelim(
			pSeparator: String; 
			pNewText: String; 
			pForceSeparator: Boolean) updating;
		replaceCharacterInString(
			pOldChar: Character; 
			pNewChar: Character): String;
	)
memberKeyDefinitions
	AlbumByName completeDefinition
	(
		name Latin1;
	)
	PhotoByGUID completeDefinition
	(
		guid Latin1;
	)
	TAFNotificationByObjectByEventByInfoDict completeDefinition
	(
		myObject;
		eventType;
		infoString;
	)
	TAFNotificationBySequenceDict completeDefinition
	(
		sequence;
	)
	UserByEmailMKD completeDefinition
	(
		email;
	)
inverseDefinitions
	albumByName of User automatic parentOf myUser of Album manual;
	photos of Album parentOf myAlbum of Photo;
	userByEmail of JadeStudioRootObject manual parentOf myRoot of User automatic;
	photoByGuid of User automatic parentOf myUser of Photo manual;
	allNotifications of TAFNotificationManager automatic parentOf myNotificationManager of TAFNotification manual;
	allNotificationsInSequence of TAFNotificationManager automatic parentOf myNotificationManager of TAFNotification manual;

databaseDefinitions
	TAFModelSchemaDb
	(
	databaseFileDefinitions
		"TAFModelSchema";
		"TAFTransient";
		"jadestudiomodelschema";
	defaultFileDefinition "jadestudiomodelschema";
	classMapDefinitions
		Album in "jadestudiomodelschema";
		AlbumArray in "jadestudiomodelschema";
		AlbumByName in "jadestudiomodelschema";
		AlbumTA in "jadestudiomodelschema";
		GJadeStudioModelSchema in "jadestudiomodelschema";
		JadeStudioModelSchema in "_usergui";
		JadeStudioRootObject in "jadestudiomodelschema";
		Photo in "jadestudiomodelschema";
		PhotoArray in "jadestudiomodelschema";
		PhotoByGUID in "jadestudiomodelschema";
		PhotoTA in "jadestudiomodelschema";
		RootObjectTA in "jadestudiomodelschema";
		SJadeStudioModelSchema in "_environ";
		TAFAbortTransactionTI in "TAFTransient";
		TAFCommitTransactionOnIntervalTI in "TAFTransient";
		TAFCommitTransactionTI in "TAFTransient";
		TAFNoTransactionTI in "TAFTransient";
		TAFNotification in "TAFTransient";
		TAFNotificationBase in "TAFTransient";
		TAFNotificationByObjectByEventByInfoDict in "TAFTransient";
		TAFNotificationBySequenceDict in "TAFTransient";
		TAFNotificationManager in "TAFTransient";
		TAFObject in "TAFModelSchema";
		TAFPersistent in "TAFModelSchema";
		TAFPersistentTA in "TAFTransient";
		TAFSubordinateTransactionTI in "TAFTransient";
		TAFTransactionImplementor in "TAFTransient";
		TAFTransient in "TAFTransient";
		TAFUtilities in "TAFTransient";
		User in "jadestudiomodelschema";
		UserByEmailMKD in "jadestudiomodelschema";
		UserTA in "jadestudiomodelschema";
	)
typeSources
	Object (
	jadeMethodSources
tafCauseEvent
{
tafCauseEvent( pEventType : Integer; pImmediate : Boolean; pUserInfo : Any );
// 1. Add a myNotificationManager property of type TAFNotificationManager to your application subclass
// 2. This method will then compile cleanly

begin
	if pImmediate then
		self.causeEvent( pEventType, pImmediate, pUserInfo );
		
	else
		if app.myNotificationManager.ignoreAllNotifications then
			return;
		endif;
		
		app.myNotificationManager.scheduleNotification( self, pEventType, pUserInfo );
	endif;
end;
}
	)
	JadeStudioModelSchema (
	jadeMethodSources
exception_handler_ignore_4_1090_1072_1046_with_context_and_flag
{
exception_handler_ignore_4_1090_1072_1046_with_context_and_flag( pException : Exception; pObject : Object; pInvalidObject : Boolean output ) : Integer;

vars
	errorCode : Integer;
	
begin
	errorCode := pException.errorCode;
	
	if errorCode = TAF_Ex_4_Object_deleted
	or errorCode = TAF_Ex_1090_Null_object_reference
	or errorCode = TAF_Ex_1072_Object_deleted_in_current_transaction
	or errorCode = TAF_Ex_1046_Invalid_class_number
	then
		if pException.errorObject = pObject then
			pInvalidObject := true;
		
			return Ex_Resume_Next;
		else
			return Ex_Pass_Back;
		endif;
	else
		return Ex_Pass_Back;
	endif;
end;
}
tafAbortTransaction
{
tafAbortTransaction();
 
begin
	abortTransaction;
	
	if self.myNotificationManager <> null then
		self.myNotificationManager.clearScheduledNotifications();
	endif;
end;
}
tafCommitTransaction
{
tafCommitTransaction();
// 1. Add a myNotificationManager property of type TAFNotificationManager to your application subclass
// 2. Move this method to your application subclass

begin
	commitTransaction;
	
	if self.myNotificationManager <> null then
		self.myNotificationManager.sendScheduledNotifications();
	endif;
end;
}
	)
	TAFObject (
	jadeMethodSources
dummyMethod
{
dummyMethod() protected;
// We want to ensure all required translatable strings and global constants are extracted.
// This dummy method helps ensure they are all extracted with the TAFModelSchema partial extract as 
// these strings and global constants are only used in "real code" in the TAFViewSchema partial extract.

begin
	write $ChangesSinceOpeningForm;
	write $OutstandingChanges;
	write $ErrorDuringSave;
	write $ThingCurrentlyEdited( "dummy" );
	write $ThingAlreadyBeingEdited( "dummy" );
	write TAF_Event_SaveOutstandingChanges;
	write $DateEnteredIsInvalid;
	write $InvalidDateEntered;
	write $Thing;
end;
}
	)
	TAFPersistent (
	jadeMethodSources
getTAClass
{
getTAClass() : Class;

begin
	return TAFPersistentTA;
end;
}
isSoftLockedByMe
{
isSoftLockedByMe() : Boolean;

begin
	return self.lockedByProcessId = self.getInstanceIdForObject( process );
end;
}
onCreate
{
onCreate( pTA : TAFPersistentTA ) updating;
// --------------------------------------------------------------------------------
// Method:		onCreate
//
// Purpose:		Set any properties that are only set on object creation.
//				This method can be used to set properties on objects that do not change
//				Not all classes require this method.
//
// Returns:		N/A
//
// Parameters: 	pTA = The Transaction Agent
// ---------------------------------------------------------------------------------

begin
	// Create a GUID if not provided. 
	if pTA.guid = null then
		self.guid := TAFUtilities@generateGUID();	
	else
		self.guid := pTA.guid;					
	endif;
	
	self.setCommonProperties( pTA );
end;
}
onDelete
{
onDelete( pTA : TAFPersistentTA ) updating;
// --------------------------------------------------------------------------------
// Method:		onDelete
//
// Purpose:		Do any additional work required when the object is deleted
//				Not all classes require this method.
//
// Returns:		N/A
//
// Parameters: 	pTA = The Transaction Agent
// ---------------------------------------------------------------------------------

begin
	delete self;
end;
}
onModify
{
onModify( pTA : TAFPersistentTA ) updating;
// --------------------------------------------------------------------------------
// Method:		onModify
//
// Purpose:		Do any additional work required when the object is modified
//				Not all classes require this method.
//
// Returns:		N/A
//
// Parameters: 	pTA = The Transaction Agent
// ---------------------------------------------------------------------------------

begin
	if pTA.modificationCode = TAF_TransactionType_Modify_LockEntity then
		self.lockedByProcessId	:= pTA.lockedByProcessId;
		self.lockedTimeStamp	:= pTA.lockedTimeStamp;
	elseif pTA.modificationCode = TAF_TransactionType_Modify_UnlockEntity then
		self.lockedByProcessId	:= null;
		self.lockedTimeStamp	:= null;
	endif;
end;
}
onUpdate
{
onUpdate( pTA : TAFPersistentTA ) updating;
// --------------------------------------------------------------------------------
// Method:		onUpdate
//
// Purpose:		Do any additional work required when the object is updated
// 				We only need to implement this on subclasses where there is something other than the common properties
// 				that potentially needs updating and/or there's some specific notifications needing to be implemented
//
// Returns:		N/A
//
// Parameters: 	pTA = The Transaction Agent
// ---------------------------------------------------------------------------------

begin
	self.setCommonProperties( pTA );
end;
}
setCommonProperties
{
setCommonProperties( pTA : TAFPersistentTA ) updating, protected;
// --------------------------------------------------------------------------------
// Method:		setCommonProperties
//
// Purpose:		Sets the properties which are common for both create and update, to avoid repeating code
//
// Parameters:	pTA	: The Transaction Agent used to set properties
//
// Returns:		N/A
// --------------------------------------------------------------------------------

begin
	self.lockedByProcessId	:= null;
	self.lockedTimeStamp	:= null;
end;
}
	)
	Album (
	jadeMethodSources
getFirstPhotoGuid
{
getFirstPhotoGuid(): StringUtf8;

vars

begin	
	if photos.size = 0 then
		return "null";
	endif;
	return photos.at(1).guid.StringUtf8;
end;
}
onCreate
{
onCreate(pTA: AlbumTA) updating;

vars

begin
	inheritMethod(pTA);
	myUser := pTA.user;
end;
}
setCommonProperties
{
setCommonProperties(pTA: AlbumTA) updating, protected;

vars

begin
	inheritMethod(pTA);
	name := pTA.name;
	description := pTA.description;
end;
}
	)
	JadeStudioRootObject (
	jadeMethodSources
onCreate
{
onCreate(pTA: TAFPersistentTA) updating;

vars

begin
	inheritMethod(pTA);

end;
}
setCommonProperties
{
setCommonProperties(pTA: TAFPersistentTA) updating, protected;

vars

begin
	inheritMethod(pTA);
end;
}
	)
	Photo (
	jadeMethodSources
onCreate
{
onCreate(pTA: PhotoTA) updating;

vars

begin
	inheritMethod(pTA);
	myUser := pTA.myUser;
	myAlbum := pTA.album;
end;
}
onDelete
{
onDelete(pTA: TAFPersistentTA) updating;

vars

begin
	inheritMethod(pTA);
end;
}
setCommonProperties
{
setCommonProperties(pTA: PhotoTA) updating, protected;

vars

begin
	inheritMethod(pTA);
	
	photo := pTA.photo.base64Encode.StringUtf8;
	image := pTA.photo;
	name := pTA.name;
end;
}
	)
	User (
	jadeMethodSources
onCreate
{
onCreate(pTA: UserTA) updating;

vars

begin
	inheritMethod(pTA);
	
	app.jadeStudioRootObj.userByEmail.add(self);

end;
}
onDelete
{
onDelete(pTA: TAFPersistentTA) updating;


begin
	app.jadeStudioRootObj.userByEmail.tryRemove(self);

	inheritMethod(pTA);
end;
}
setCommonProperties
{
setCommonProperties(pTA: UserTA) updating, protected;

vars

begin
	inheritMethod(pTA);
	email := pTA.email;
	firstName := pTA.first_name;
	lastName := pTA.last_name;
end;
}
	)
	TAFNotification (
	jadeMethodSources
getInfo
{
getInfo() : Any;

begin
	if self.infoString = null then
		return null;
	elseif infoType = Object.getName then
		return infoString.asOid;
	elseif infoType = String.getName then
		return infoString;
	elseif infoType = Integer.getName then
		return infoString.Integer;
	elseif infoType = Binary.getName then
		return infoString.Binary;
	elseif infoType = Boolean.getName then
		return infoString.Boolean;
	elseif infoType = Character.getName then
		return infoString.Character;
	elseif infoType = Date.getName then
		return infoString.Date;		
	elseif infoType = Decimal.getName then
		return infoString.Decimal;
	elseif infoType = Point.getName then
		return infoString.Point;
	elseif infoType = Real.getName then
		return infoString.Real;
	elseif infoType = TimeStamp.getName then
		return infoString.TimeStamp;
	elseif infoType = Time.getName then
		return infoString.Time;
	endif;		

	return infoString;
end;
}
setInfo
{
setInfo( pUserInfo : Any ) updating;

begin
	if pUserInfo = null then
		infoString := null;
		infoType := null;
	elseif pUserInfo.isKindOf(Object) then
		infoString := self.getOidStringForObject(pUserInfo.Object);
		infoType := Object.getName;
	else
		infoString := pUserInfo.String[1:200];
		if pUserInfo.isKindOf(String) then
			infoType := String.getName;
		elseif pUserInfo.isKindOf(Integer) then
			infoType := Integer.getName;
		elseif pUserInfo.isKindOf(Date) then
			infoType := Date.getName;
		elseif pUserInfo.isKindOf(TimeStamp) then
			infoType := TimeStamp.getName;
		elseif pUserInfo.isKindOf(Boolean) then
			infoType := Boolean.getName;
		elseif pUserInfo.isKindOf(Character) then
			infoType := Character.getName;
		elseif pUserInfo.isKindOf(Decimal) then
			infoType := Decimal.getName;
		elseif pUserInfo.isKindOf(Point) then
			infoType := Point.getName;
		elseif pUserInfo.isKindOf(Real) then
			infoType := Real.getName;
		elseif pUserInfo.isKindOf(Binary) then
			infoType := Binary.getName;
		elseif pUserInfo.isKindOf(Time) then
			infoType := Time.getName;
		endif;
	endif;
end;
}
	)
	TAFNotificationManager (
	jadeMethodSources
clearScheduledNotifications
{
clearScheduledNotifications();

begin
	self.allNotifications.purge();
end;
}
handleDuplicateNotificationException
{
handleDuplicateNotificationException( pException : Exception; pDuplicateNotification : Boolean output ) : Integer;

begin
	if pException.errorCode = TAF_Ex_1034_Duplicated_object or pException.errorCode = TAF_Ex_1310_Key_already_used_in_dictionary then
		pDuplicateNotification	:= true;
		return Ex_Resume_Next;
	else	
		return Ex_Pass_Back;
	endif;
end;
}
scheduleNotification
{
scheduleNotification( noteObj : Object; intEventType: Integer; userInfo: Any) updating;

vars
	notification			: TAFNotification;
	duplicateNotification	: Boolean;

begin
	on Exception do self.handleDuplicateNotificationException( exception, duplicateNotification );
	
	create notification transient;
	notification.myObject := noteObj;
	notification.eventType := intEventType;
	notification.setInfo( userInfo );
	notification.sequence := self.allNotifications.size + 1;
	notification.myNotificationManager := self;
	
	if duplicateNotification then
		self.duplicateNotificationCount := duplicateNotificationCount + 1;
		delete notification;
	endif;
end;
}
sendScheduledNotifications
{
sendScheduledNotifications();
// 1. Move the method TAFObject::exception_handler_ignore_4_1090_1072_1046_with_context_and_flag to your application subclass
// 2. This method will then compile cleanly

vars
	notification				: TAFNotification;
	notificationTarget			: Object;
	notificationTargetDeleted	: Boolean;
	
begin
	on Exception do app.exception_handler_ignore_4_1090_1072_1046_with_context_and_flag( exception, notificationTarget, notificationTargetDeleted );
	
	foreach notification in self.allNotificationsInSequence do
		notificationTarget := notification.myObject;

		notificationTarget.edition;			// force exception if obj has been deleted (expunged)
		
		if notificationTargetDeleted then	// obj has been deleted
			continue;
		endif;
		
		if notification.infoString = null then
			notificationTarget.causeEvent( notification.eventType, true, null );
		else
			notificationTarget.causeEvent( notification.eventType, true, notification.getInfo() );
		endif;
	endforeach;
	
	self.allNotifications.purge();
end;
}
	)
	TAFPersistentTA (
	jadeMethodSources
addError
{
addError(
		pError		: String;
		pFocusField	: String
		) updating, protected, final;

begin
	self.allErrors.add( pError );

	// Focus should be set to the first field in error
	if self.focusField = null then
		self.focusField := pFocusField;
	endif;
end;
}
addWarning
{
addWarning( pWarning : String; pFocusField : String ) updating, protected, final;

begin
	self.allWarnings.add( pWarning );

	if self.focusField <> null then
		self.focusField := pFocusField;
	endif;
end;
}
checkEdition
{
checkEdition( pExpectedEdition : Integer ) : Boolean protected;
// Reimplement as appropriate on subclasses where edition checking is required

begin
	return true;
end;
}
clearErrors
{
clearErrors() protected, updating, final;

begin
	self.allErrors.clear();

	self.focusField	:= null;

	self.clearErrorsOnSubordinateTAs();
end;
}
clearErrorsOnSubordinateTAs
{
clearErrorsOnSubordinateTAs() updating, protected;

begin

end;
}
clearWarnings
{
clearWarnings() updating, protected, final;

begin
	self.allWarnings.clear();

	self.focusField	:= null;
	
	self.clearWarningsOnSubordinateTAs();
end;
}
clearWarningsOnSubordinateTAs
{
clearWarningsOnSubordinateTAs() updating, protected;

begin

end;
}
copyErrors
{
copyErrors( pFromTA : TAFPersistentTA ) updating, protected, final;

vars
	errorMessage : String;
	
begin
	foreach errorMessage in pFromTA.allErrors do
		self.addError( errorMessage, null );
	endforeach;
	
	if self.focusField = null then
		self.focusField	:= pFromTA.focusField;
	endif;
end;
}
copyWarnings
{
copyWarnings( pFromTA : TAFPersistentTA ) updating, protected, final;

vars
	warningMessage : String;
	
begin
	foreach warningMessage in pFromTA.allWarnings do
		self.addWarning( warningMessage, null );
	endforeach;
	
	if self.focusField = null then
		self.focusField	:= pFromTA.focusField;
	endif;
end;
}
createEntity
{
createEntity() : Boolean updating, final, protected;

vars
	transactionImplementor	: TAFCommitTransactionTI ;
	
begin
	create transactionImplementor transient;
	
	return self.createEntityWithTransactionImplementor( transactionImplementor );
	
epilog
	delete transactionImplementor;
end;
}
createEntityInTransState
{
createEntityInTransState() : Boolean updating, final, protected;

vars
	transactionImplementor	: TAFNoTransactionTI ;
	
begin
	create transactionImplementor transient;
	
	return self.createEntityWithTransactionImplementor( transactionImplementor );
	
epilog
	delete transactionImplementor;
end;
}
createEntityWithTransactionImplementor
{
createEntityWithTransactionImplementor(
		pTransactionImplementor : TAFTransactionImplementor		// refer to text on class TransactionImplementor for assistance on how to use
		) : Boolean updating, protected, final;

vars
	validateRtn				: Boolean;
	//cnId					: Integer;
	transactionCompleted	: Boolean;
	
begin
	// The following is an example of how to start instrumentation recording for this transaction
	//cnId := cnStartTransaction((self.class.name & "," & method.name)[1:50]);		// Example of instrumenting transactions
	
	self.clearErrors();
	self.clearWarnings();
	
	// Perform Pre-Validation login
	self.doPreValidate();	
	
	validateRtn := self.doValidate( TAF_ValidationType_Create );

	if validateRtn then
		if self.lockForCreate() then
			pTransactionImplementor.doBeginTransaction();
			if self.doCreate() then
				pTransactionImplementor.doCommitTransaction();
			else
				pTransactionImplementor.doAbortTransaction();	
				// The following is an example of how to discard instrumentation recording for this transaction as it has been aborted
				//self.cnDiscardTransaction( cnId );
				return false;
			endif;
		else
			//	the abort releases any lock gained in lockEntityCreate
			pTransactionImplementor.doAbortTransaction();		
			self.addError( $CreateConflictedWithAnotherUser, null );	
			// The following is an example of how to discard instrumentation recording for this transaction as it has been aborted
			//self.cnDiscardTransaction( cnId );
			return false;
		endif;
	else
		// The following is an example of how to discard instrumentation recording for this transaction as it has been aborted
		//self.cnDiscardTransaction( cnId );
		return false;
	endif;
		
	transactionCompleted	:= true;
	
	return true;
	
epilog
	// The following is an example of how to end the instrumentation recording for this transaction
	//self.cnEndTransactionEx( cnId );
	
	if not transactionCompleted	then
		self.doAbortTransactionCleanup();
	endif;
end;
}
createSubordinateObjects
{
createSubordinateObjects() : Boolean updating, protected;

begin
	return true;
end;
}
deleteEntity
{
deleteEntity() : Boolean updating, final, protected;

vars
	transactionImplementor	: TAFCommitTransactionTI;

begin
	create transactionImplementor transient;
	
	return self.deleteEntityWithTransactionImplementor( transactionImplementor );
	
epilog
	delete transactionImplementor;
end;
}
deleteEntityInTransState
{
deleteEntityInTransState() : Boolean updating, final, protected;

vars
	transactionImplementor	: TAFNoTransactionTI;

begin
	create transactionImplementor transient;
	
	return self.deleteEntityWithTransactionImplementor( transactionImplementor );
	
epilog
	delete transactionImplementor;
end;
}
deleteEntityWithTransactionImplementor
{
deleteEntityWithTransactionImplementor(
		pTransactionImplementor : TAFTransactionImplementor		// refer to text on class TransactionImplementor for assistance on how to use
		) : Boolean updating, final, protected;
		
vars
	transactionCompleted	: Boolean;

begin
	self.clearErrors();
	self.clearWarnings();
	
	// Perform Pre-Validation login
	self.doPreValidate();	
		
	if self.doValidate( TAF_ValidationType_Delete ) then
		if self.lockForDelete() then
			pTransactionImplementor.doBeginTransaction();
			if self.doDelete() then
				pTransactionImplementor.doCommitTransaction();
			else
				pTransactionImplementor.doAbortTransaction();
				return false;
			endif;
		else
			pTransactionImplementor.doAbortTransaction();		// Force any locks to be released before failing
			self.addError( $DeleteConflictedWithAnotherUser, null );	
			return false;
		endif;
	else
		return false;
	endif;
	
	transactionCompleted	:= true;
	
	return true;
	
epilog
	if not transactionCompleted	then
		self.doAbortTransactionCleanup();
	endif;
end;
}
deleteSubordinateObjects
{
deleteSubordinateObjects() : Boolean updating, protected;

begin
	return true;
end;
}
doAbortTransactionCleanup
{
doAbortTransactionCleanup() updating, protected, final;

begin
	if not app.isValidObject( self.myPersistentObject ) then
		self.myPersistentObject	:= null;
	endif;
	
	self.doAbortTransactionCleanupForSubordinateObjects();
end;
}
doAbortTransactionCleanupForSubordinateObjects
{
doAbortTransactionCleanupForSubordinateObjects() protected;

begin
	// Nothing to do at this level
end;
}
doCreate
{
doCreate() : Boolean updating, protected, final;

begin
	if not self.hasOnlySubordinatePersistentObjects() then
		create self.myPersistentObject as self.getPersistentObjectClass() persistent;
		
		self.myPersistentObject.onCreate( self );
	endif;
	
	if not self.createSubordinateObjects() then
		return false;
	endif;
	
	return true;
end;
}
doDelete
{
doDelete() : Boolean updating, protected, final;

begin
	if not self.hasOnlySubordinatePersistentObjects() then
		self.myPersistentObject.onDelete( self );
	endif;
	
	if not self.deleteSubordinateObjects() then
		return false;
	endif;
	
	return true;
end;
}
doModify
{
doModify( pModification : Integer ) : Boolean updating, protected, final;
// Update specific properties of an object, depending on the modifcation code passed in

begin
	if not self.hasOnlySubordinatePersistentObjects() then
		self.myPersistentObject.onModify( self );
	endif;
	
	if not self.modifySubordinateObjects( pModification ) then
		return false;
	endif;
	
	return true;
end;
}
doPreValidate
{
doPreValidate() updating;
// --------------------------------------------------------------------------------
// Method:		doPreValidate
//
// Purpose:		Perform actions on TA properties prior to validation. 
//				Some examples of what this method could handle include:
//				- Sanatize the Data (remove whitespaces)
//				- Format properties (such as uppercase, phone formats etc..)
//				- Generate incrementing numbers such as IDs
//
// Returns:		N/A
//
// Parameters: 	N/A
// ---------------------------------------------------------------------------------

begin

end;
}
doUpdate
{
doUpdate() : Boolean updating, protected, final;

begin
	if not self.hasOnlySubordinatePersistentObjects() then
		self.myPersistentObject.onUpdate( self );
	endif;
	
	if not self.updateSubordinateObjects() then
		return false;
	endif;
	
	return true;
end;
}
doValidate
{
doValidate( pValidationType : Integer ) : Boolean updating;
// --------------------------------------------------------------------------------
// Method:		doValidate
//
// Purpose:		Validates the TA atributes.  
//				Each failed validation should add an error message to the allErrors 
//				string array.  This method should be reimplemented on most TAs.
//
// Returns:		True if validation successful
//				False if validation fails
//
// Parameters:	pValidationType	- 	The type of validation being performed 
//									e.g. Create, Update, Delete
// ---------------------------------------------------------------------------------

begin
	return self.hasNoErrors();
end;
}
getFullErrorDetails
{
getFullErrorDetails() : String final;

vars
	errorMessage		: String;
	fullErrorDetails	: String;

begin
	foreach errorMessage in self.allErrors do
		fullErrorDetails.appendTextWithDelim( CrLf, errorMessage, false );
	endforeach;
	
	return fullErrorDetails;
end;
}
getPersistentObject
{
getPersistentObject() : TAFPersistent;

begin
	return self.myPersistentObject;
end;
}
getPersistentObjectClass
{
getPersistentObjectClass() : Class protected;

begin
	return TAFPersistent;
end;
}
hasErrors
{
hasErrors() : Boolean protected, final;

begin
	return not self.hasNoErrors();
end;
}
hasNoErrors
{
hasNoErrors() : Boolean protected, final;

begin
	return self.allErrors.isEmpty();
end;
}
hasOnlySubordinatePersistentObjects
{
hasOnlySubordinatePersistentObjects() : Boolean protected;
// Some TA classes may only work with groups of subordinate persistent objects and don't actually have a persistent object themselves
// For those TA classes, they can reimplement this method to return true
// For example, the ShoppingCartTA class only works with subordinate RetailSale and Tender persistent objects

begin
	return false;
end;
}
initialize
{
initialize() updating;

begin
	self.allErrors.clear();
	self.allWarnings.clear();
	
	self.expectedEdition	:= null;
	self.focusField			:= null;
	self.lockedByProcessId	:= null;
	self.lockedTimeStamp	:= null;
	self.modificationCode	:= null;
	self.myPersistentObject		:= null;
end;
}
lockForCreate
{
lockForCreate() : Boolean protected;

begin
	return true;
end;
}
lockForDelete
{
lockForDelete() : Boolean protected;

begin
	return true;
end;
}
lockForModify
{
lockForModify() : Boolean protected;

begin
	return true;
end;
}
lockForUpdate
{
lockForUpdate() : Boolean protected;

begin
	return true;
end;
}
modifyEntity
{
modifyEntity( pModification : Integer ) : Boolean updating, final, protected;

vars
	transactionImplementor : TAFCommitTransactionTI;

begin
	create transactionImplementor transient;
	
	return self.modifyEntityWithTransactionImplementor( transactionImplementor, pModification );
	
epilog
	delete transactionImplementor;
end;
}
modifyEntityInTransState
{
modifyEntityInTransState( pModification : Integer ) : Boolean updating, final, protected;

vars
	transactionImplementor : TAFNoTransactionTI;

begin
	create transactionImplementor transient;
	
	return self.modifyEntityWithTransactionImplementor( transactionImplementor, pModification );
	
epilog
	delete transactionImplementor;
end;
}
modifyEntityWithTransactionImplementor
{
modifyEntityWithTransactionImplementor(
		pTransactionImplementor : TAFTransactionImplementor;		// refer to text on class TransactionImplementor for assistance on how to use
		pModification			: Integer
		) : Boolean updating, final, protected;

		
vars
	transactionCompleted	: Boolean;

begin
	self.clearErrors();
	self.clearWarnings();
	
	modificationCode := pModification;
	
	// Perform Pre-Validation login
	self.doPreValidate();	
	
	if self.doValidate( TAF_ValidationType_Modify ) then
		if self.lockForModify() then
			pTransactionImplementor.doBeginTransaction();
			if self.doModify( pModification ) then
				pTransactionImplementor.doCommitTransaction();
			else
				pTransactionImplementor.doAbortTransaction();
				return false;
			endif;
		else
			pTransactionImplementor.doAbortTransaction();
			self.addError( $UpdateConflictedWithAnotherUser, null );	
			return false;
		endif;
	else
		return false;
	endif;
	
	transactionCompleted	:= true;
	
	return true;
	
epilog
	if not transactionCompleted	then
		self.doAbortTransactionCleanup();
	endif;	
end;
}
modifySubordinateObjects
{
modifySubordinateObjects( pModification : Integer ) : Boolean updating, protected;

begin
	return true;
end;
}
persistEntity
{
persistEntity( pTransactionType : Integer ) : Boolean updating, final;

begin
	// Check for Full_delete first (aka -1)
	if pTransactionType = TAF_TransactionType_Delete then
		if self.getPersistentObject() = null then
			// The developer shouldn't really be trying to delete something that isn't created yet!!
			// Rather than raise an exception, just treat this as a no-op instead and return true.
			return true;
		endif;
		
		return self.deleteEntity();
		
	// Check for Full_update next (aka 0)
	elseif pTransactionType = TAF_TransactionType_Persist then
		if self.getPersistentObject() = null then
			return self.createEntity();
		else
			return self.updateEntity();
		endif;

	// Check for a modification number
	elseif pTransactionType > TAF_TransactionType_Persist then
		return self.modifyEntity( pTransactionType );
	
	else
		// Developer exception!!!!
		return false;
	endif;
end;
}
persistEntityInTransState
{
persistEntityInTransState( pTransactionType : Integer ) : Boolean updating, final;

begin
	// Check for Full_delete first (aka -1)
	if pTransactionType = TAF_TransactionType_Delete then
		if self.getPersistentObject() = null then
			// The developer shouldn't really be trying to delete something that isn't created yet!!
			// Rather than raise an exception, just treat this as a no-op instead and return true.
			return true;
		endif;
		
		return self.deleteEntityInTransState();
		
	// Check for Full_update next (aka 0)
	elseif pTransactionType = TAF_TransactionType_Persist then
		if self.getPersistentObject() = null then
			return self.createEntityInTransState();
		else
			return self.updateEntityInTransState();
		endif;
		
	// Check for a modification number
	elseif pTransactionType > TAF_TransactionType_Persist then
		return self.modifyEntityInTransState( pTransactionType );
	
	else
		// Developer error!!
		return false;
	endif;
end;
}
populateFromObject
{
populateFromObject( pModelObject : TAFPersistent ) updating;

begin
	self.myPersistentObject	:= pModelObject;
	
	self.populateSubordinateObjects( pModelObject );
end;
}
populateSubordinateObjects
{
populateSubordinateObjects( pModelObject : TAFPersistent ) updating, protected;

begin

end;
}
tryLockingObject
{
tryLockingObject( pObject : Object ) : Boolean protected, final;
// Try to get a lock on the Object, or return false

begin
	return self.tryLock( pObject, Exclusive_Lock, Transaction_Duration, LockTimeout_Server_Defined );
end;
}
updateEntity
{
updateEntity() : Boolean updating, final, protected;

vars
	transactionImplementor	: TAFCommitTransactionTI;
	
begin
	create transactionImplementor transient;
	
	return self.updateEntityWithTransactionImplementor( transactionImplementor );

epilog
	delete transactionImplementor;
end;
}
updateEntityInTransState
{
updateEntityInTransState() : Boolean updating, final, protected;

vars
	transactionImplementor	: TAFNoTransactionTI;
	
begin
	create transactionImplementor transient;
	
	return self.updateEntityWithTransactionImplementor( transactionImplementor );

epilog
	delete transactionImplementor;
end;
}
updateEntityWithTransactionImplementor
{
updateEntityWithTransactionImplementor(
		pTransactionImplementor : TAFTransactionImplementor		// refer to text on class TransactionImplementor for assistance on how to use
		) : Boolean updating, final, protected;


vars
	validateRtn	: Boolean;
	//cnId		: Integer;
	transactionCompleted	: Boolean;
	
begin
	//cnId := self.cnStartTransaction((self.class.name & "," & method.name)[1:50]);
	
	self.modificationCode	:= null;		// Reset modificationCode back to '0' because it's a full update transaction
	
	self.clearErrors();
	self.clearWarnings();

	// Perform Pre-Validation logic
	self.doPreValidate();	
	
	validateRtn := self.doValidate( TAF_ValidationType_Update );

	if validateRtn then
		if self.lockForUpdate() then
			if not self.checkEdition( self.expectedEdition ) then
				self.addError( $AnotherUserUpdatedThisEntity, null );	
				return false;
			endif;
			pTransactionImplementor.doBeginTransaction();
			if self.doUpdate() then
				pTransactionImplementor.doCommitTransaction();
			else
				pTransactionImplementor.doAbortTransaction();
				//self.cnDiscardTransaction( cnId );
				return false;					
			endif;
		else
			pTransactionImplementor.doAbortTransaction();
			self.addError( $UpdateConflictedWithAnotherUser, null );	
			//self.cnDiscardTransaction( cnId );
			return false;
		endif;
	else
		//self.cnDiscardTransaction( cnId );
		return false;
	endif;
	
	transactionCompleted	:= true;
	
	return true;
	
epilog
	//self.cnEndTransactionEx( cnId );
	
	if not transactionCompleted	then
		self.doAbortTransactionCleanup();
	endif;
end;
}
updateSubordinateObjects
{
updateSubordinateObjects() : Boolean updating, protected;

begin
	return true;
end;
}
	)
	AlbumTA (
	jadeMethodSources
getPersistentObject
{
getPersistentObject(): Album;

vars

begin
	return self.myPersistentObject.Album;
end;
}
getPersistentObjectClass
{
getPersistentObjectClass(): Class protected;

vars

begin
	return Album;
end;
}
	)
	PhotoTA (
	jadeMethodSources
getPersistentObjectClass
{
getPersistentObjectClass(): Class protected;

vars

begin
	return Photo;
end;
}
	)
	RootObjectTA (
	jadeMethodSources
getPersistentObjectClass
{
getPersistentObjectClass(): Class protected;

vars

begin
	return JadeStudioRootObject;
end;
}
	)
	UserTA (
	jadeMethodSources
getPersistentObjectClass
{
getPersistentObjectClass(): Class protected;

vars

begin
	return User;
end;
}
	)
	TAFTransactionImplementor (
	jadeMethodSources
doAbortTransaction
{
doAbortTransaction() abstract;
}
doBeginTransaction
{
doBeginTransaction() abstract;
}
doCommitTransaction
{
doCommitTransaction() abstract;
}
doIntermediateCommitIfDue
{
doIntermediateCommitIfDue() : Boolean;
//	This method is for use on longer background tasks and you want to commit periodically after an elasped time.
//	Only reimplemented in CommitTransactionOnIntervalTI, so not commonly used

begin
	// default is to do nothing. Reimplemented on CommitTransactionOnIntervalTI
	return false;
end;
}
	)
	TAFAbortTransactionTI (
	jadeMethodSources
doAbortTransaction
{
doAbortTransaction();
// This method will compile cleanly once TAFObject::tafAbortTransaction method has been moved to your application subclass

begin
	app.tafAbortTransaction();
end;
}
doBeginTransaction
{

doBeginTransaction();

begin
	beginTransaction;
end;
}
doCommitTransaction
{
doCommitTransaction();
// This method will compile cleanly once TAFObject::tafAbortTransaction method has been moved to your application subclass

begin
	app.tafAbortTransaction();	// this implementor will NEVER commit 
end;
}
	)
	TAFCommitTransactionTI (
	jadeMethodSources
doAbortTransaction
{
doAbortTransaction();
// This method will compile cleanly once TAFObject::tafAbortTransaction method has been moved to your application subclass

begin
	app.tafAbortTransaction();
end;
}
doBeginTransaction
{
doBeginTransaction();

begin
	beginTransaction;
end;
}
doCommitTransaction
{
doCommitTransaction();
// This method will compile cleanly once TAFObject::tafAbortTransaction method has been moved to your application subclass

begin
	app.tafCommitTransaction();
end;
}
	)
	TAFCommitTransactionOnIntervalTI (
	jadeMethodSources
create
{
create() updating;

begin
	self.maxDurationMS := Default_MaxDuration;
end;
}
doIntermediateCommitIfDue
{
doIntermediateCommitIfDue() : Boolean;
// If the duration has been exceeded we do a begin/commit 
// Return true; if we have done it just so caller knows.  
//     eg:  Caller may want to relock some objects etc

begin
	if system.getTimeInTransactionState( process ) > self.maxDurationMS then
		self.doCommitTransaction();
		self.doBeginTransaction();
		return true;
	endif;
	
	return false;
end;
}
setMaxDurationMS
{
setMaxDurationMS( pMilliSeconds : Integer) updating;
// This can be used if you want a different interval to the 3000 millseconds.

begin
	self.maxDurationMS := pMilliSeconds;
	
	if self.maxDurationMS = 0 then
		// Raise an exception if they try to use 0 for the duration...
		// DeveloperException.raise_( Ex_Developer, "Cannot have null milliseconds" );
	endif;
end;
}
	)
	TAFNoTransactionTI (
	jadeMethodSources
doAbortTransaction
{
doAbortTransaction();

begin
	// do nothing
end;
}
doBeginTransaction
{
doBeginTransaction();

begin
	// do nothing
end;
}
doCommitTransaction
{
doCommitTransaction();

begin
	// do nothing
end;
}
	)
	TAFUtilities (
	jadeMethodSources
generateGUID
{
generateGUID() : String typeMethod;
// --------------------------------------------------------------------------------
// Method:		generateGUID
//
// Purpose:		Generates a Universally Unique Identifier (UUID)
//
// Parameters:	N/A
//
// Returns:		A UUID String
// --------------------------------------------------------------------------------

begin
	return app.generateUuid( VariantDce ).uuidAsString();
end;
}
getServerDate
{
getServerDate() : Date typeMethod;
// --------------------------------------------------------------------------------
// Method:		getServerDate
//
// Purpose:		Returns the current date of the sever node
//
// Parameters:	N/A
//
// Returns:		The current date of the server node
// --------------------------------------------------------------------------------

begin
	return app.actualTimeServer().date();
end;
}
getServerTimeStamp
{
getServerTimeStamp() : TimeStamp typeMethod;
// --------------------------------------------------------------------------------
// Method:		getServerTimeStamp
//
// Purpose:		Returns the current timestamp of the sever node
//
// Parameters:	N/A
//
// Returns:		The current timestamp of the server node
// --------------------------------------------------------------------------------

begin
	return app.actualTimeServer();
end;
}
	)
	Integer (
	jadeMethodSources
isAltPressed
{
isAltPressed() : Boolean;

begin
	return self.bitAnd( TAF_Key_Shift_Alt ) = TAF_Key_Shift_Alt;
end;
}
isCtrlPressed
{
isCtrlPressed() : Boolean;

begin
	return self.bitAnd( TAF_Key_Shift_Ctrl ) = TAF_Key_Shift_Ctrl;
end;
}
isShiftPressed
{
isShiftPressed() : Boolean;

begin
	return self.bitAnd( TAF_Key_Shift_Shift ) = TAF_Key_Shift_Shift;
end;
}
	)
	String (
	jadeMethodSources
appendTextWithDelim
{
appendTextWithDelim(
		pSeparator		: String;
		pNewText		: String;
		pForceSeparator	: Boolean
		) updating;

begin
	if ( self <> null or pForceSeparator ) and pSeparator <> null then
		self := self & pSeparator;
	endif;

	if pSeparator = Tab then
		// When the delimiter is Tab, make sure there a NO Tabs in the text we are appending.
		self := self & pNewText.replaceCharacterInString( Tab, ' ' );
	else
		self := self & pNewText;
	endif;
end;
}
replaceCharacterInString
{
replaceCharacterInString(
	pOldChar	: Character;
	pNewChar	: Character
	) : String;

vars
	str	: String;
	
begin
	str	:= self;
	
	str.replaceChar( pOldChar, pNewChar );
	
	return str;
end;
}
	)
