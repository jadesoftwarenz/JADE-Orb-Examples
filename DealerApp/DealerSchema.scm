jadeVersionNumber "25.0.01";
schemaDefinition
DealerSchema subschemaOf RootSchema completeDefinition;
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
	DealerSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	ControllerClasses subclassOf Object;
	ModelController subclassOf ControllerClasses;
	DynamicTemplateBase subclassOf Object;
	CardsSecretTemplate subclassOf DynamicTemplateBase;
	ControlsDynamicTemplate subclassOf DynamicTemplateBase;
	PlayerSeatsTemplate subclassOf DynamicTemplateBase;
	StartDyanamicTemplate subclassOf DynamicTemplateBase;
	GameClasses subclassOf Object;
	Card subclassOf GameClasses;
	Deck subclassOf GameClasses;
	Felt subclassOf GameClasses;
	Player subclassOf GameClasses;
	GameUtils subclassOf Object;
	GDealerSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	HandEvaluator subclassOf Object abstract;
	PlayerHand subclassOf HandEvaluator;
	RouteBase subclassOf Object;
	BetRoute subclassOf RouteBase;
	DealRoute subclassOf RouteBase;
	FoldRoute subclassOf RouteBase;
	GameRoute subclassOf RouteBase;
	JoinRoute subclassOf RouteBase;
	LiveTableRoute subclassOf RouteBase;
	MainRoute subclassOf RouteBase;
	LiveFeltRoute subclassOf MainRoute;
	MakeGameRoute subclassOf RouteBase;
	NextHandRoute subclassOf RouteBase;
	SignInRoute subclassOf RouteBase;
	StartGameRoute subclassOf RouteBase;
	SDealerSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed;
	CardDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	CardsByHighFaceMKD subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	FeltByIdDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	FeltByTimestampDictionary subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	PlayerByNameDictionary subclassOf MemberKeyDictionary loadFactor = 66;
	PlayerHandByValueDictionary subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66;
	CardArray subclassOf Array;
	PlayerArray subclassOf Array;
membershipDefinitions
	CardDictionary of Card;
	CardsByHighFaceMKD of Card;
	FeltByIdDictionary of Felt;
	FeltByTimestampDictionary of Felt;
	PlayerByNameDictionary of Player;
	PlayerHandByValueDictionary of PlayerHand;
	CardArray of Card;
	PlayerArray of Player;
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
	DealerSchema completeDefinition
	(
	referenceDefinitions
		controller:                    ModelController ;
	jadeMethodDefinitions
		exHandler(ex: Exception): Integer;
		initApp() updating;
	)
	ControllerClasses completeDefinition
	(
	)
	ModelController completeDefinition
	(
	referenceDefinitions
		allFeltById:                   FeltByIdDictionary   explicitInverse;
		allFeltByTimestamp:            FeltByTimestampDictionary   explicitInverse;
	)
	DynamicTemplateBase completeDefinition
	(
	jadeMethodDefinitions
		render(object: Object): Binary;
	implementInterfaces
		JadeOrbPackage::IOrbTemplate
		(
			render is render;
		)
	)
	CardsSecretTemplate completeDefinition
	(
	jadeMethodDefinitions
		render(object: Object): Binary;
	)
	ControlsDynamicTemplate completeDefinition
	(
	jadeMethodDefinitions
		render(object: Object): Binary;
	)
	PlayerSeatsTemplate completeDefinition
	(
	jadeMethodDefinitions
		render(object: Object): Binary;
	)
	StartDyanamicTemplate completeDefinition
	(
	jadeMethodDefinitions
		render(object: Object): Binary;
	)
	GameClasses completeDefinition
	(
	)
	Card completeDefinition
	(
	constantDefinitions
		Ace:                           Integer = 1;
		Clubs:                         Character = 'c';
		Diamonds:                      Character = 'd';
		Hearts:                        Character = 'h';
		Jack:                          Integer = 11;
		King:                          Integer = 13;
		Queen:                         Integer = 12;
		Spades:                        Character = 's';
	attributeDefinitions
		rank:                          Integer;
		suit:                          Character;
	referenceDefinitions
		myDeck:                        Deck   explicitEmbeddedInverse, protected;
	jadeMethodDefinitions
		color(): String;
		face(): String;
		imageUrl(): String;
		putInDeck(deck: Deck) updating;
		symbol(): String;
	)
	Deck completeDefinition
	(
	referenceDefinitions
		allCards:                      CardDictionary   explicitInverse, protected;
		documentationText
`This collection is all the cards associated with the deck.
The cards that are part of the deck can be physically somewhere other than the deck.`
		cards:                         CardArray  implicitMemberInverse, protected;
		myFelt:                        Felt   explicitEmbeddedInverse, protected;
	jadeMethodDefinitions
		cardsInDeck(): Integer;
		create() updating;
		createCard(
			suit: Character; 
			face: Integer) updating, protected;
		createSuit(suit: Character) updating, protected;
		delete() updating;
		draw(): Card updating;
		replaceCards(pile: CardArray input) updating;
		shuffle() updating;
	)
	Felt completeDefinition
	(
		documentationText
`This class represents the Felt table, it contains the primary state for a game session.`
	constantDefinitions
		Event_Progress:                Integer = 1000;
		State_10_Unstarted:            Integer = 10;
		State_20_Deal:                 Integer = 20;
		State_30_Preflop:              Integer = 30;
		State_40_Flop:                 Integer = 40;
		State_50_Turn:                 Integer = 50;
		State_60_River:                Integer = 60;
		State_70_Showdown:             Integer = 70;
		State_80_Postshowdown:         Integer = 80;
	attributeDefinitions
		blindsComplete:                Boolean protected;
		gameState:                     Integer readonly;
		gameid:                        Binary[40] readonly;
		host:                          String[51] readonly;
		pot:                           Integer readonly;
		statustext:                    String[501];
		timestamp:                     TimeStamp readonly;
	referenceDefinitions
		communityCards:                CardArray  implicitMemberInverse, protected;
		currentTurnPlayer:             Player  readonly;
		myController:                  ModelController   explicitEmbeddedInverse, protected;
		myDeck:                        Deck   explicitEmbeddedInverse, protected;
		playerBigBlind:                Player  protected;
		playerSmallBlind:              Player  protected;
		playersCalled:                 PlayerArray  implicitMemberInverse, protected;
		playersFolded:                 PlayerArray  implicitMemberInverse, protected;
		seats:                         PlayerArray   explicitInverse, readonly;
		theButton:                     Player  protected;
	jadeMethodDefinitions
		bet(
			player: Player io; 
			amount: Integer): Boolean updating;
		callMinimum(): String;
		create() updating;
		dealCard(card: Card) updating, protected;
		dealFlop() updating;
		dealHoleCards() updating;
		dealTurnOrRiver() updating;
		declareWinner(player: Player io) updating, protected;
		drawFromDeck(): Card updating;
		foldCurrentPlayer() updating;
		getIdString(): String;
		incrementGameState() updating, protected;
		muck() updating;
		playerBlind(player: Player): String;
		playerStatus(player: Player): String;
		playersAllCalled(): Boolean protected;
		playersRemaining(): Integer protected;
		progressBettingRound(): Boolean updating, protected;
		progressBettingRoundOLD(): Boolean updating, protected;
		progressBettingRoundOLD1(): Boolean updating, protected;
		progressDeal() updating, protected;
		progressFlop() updating, protected;
		progressGame() updating, protected;
		progressNewRound() updating, protected;
		progressRiver() updating, protected;
		progressShowdown() updating, protected;
		progressTurn() updating, protected;
		progressUnstarted() updating, protected;
		setBlinds() updating, protected;
		setHost(name: String) updating;
		sit(player: Player) updating;
		startGame(startingPlayer: Player) updating;
		timerEvent(eventTag: Integer) updating;
		trySeatNewPlayer(): Player updating;
	)
	Player completeDefinition
	(
	attributeDefinitions
		currentBet:                    Integer readonly;
		lastaction:                    String[31] readonly;
		stack:                         Integer readonly;
		username:                      String[51] readonly;
	referenceDefinitions
		hand:                          CardArray  implicitMemberInverse, readonly;
		myFelt:                        Felt   explicitEmbeddedInverse, protected;
	jadeMethodDefinitions
		bet(amount: Integer) updating;
		blind(): String;
		create(name_: String) updating;
		dealCard(card: Card) updating;
		isCurrentTurn(): Boolean;
		isGameStarted(): Boolean;
		isHost(): Boolean;
		muck(deck: Deck io) updating;
		placeBet(amount: Integer) updating;
		position(): String;
		setAction(string: String) updating;
		startGame() updating;
		status(): String;
		win(amount: Integer) updating;
	)
	GameUtils completeDefinition
	(
	jadeMethodDefinitions
		uniformRandom(
			min: Integer; 
			max: Integer): Integer typeMethod;
	externalMethodDefinitions
		randomBytes(bin: Binary io) is "getRandomBytes" in "jomsupp" protected, typeMethod;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GDealerSchema completeDefinition
	(
	)
	HandEvaluator completeDefinition
	(
	jadeMethodDefinitions
		bestCandidate(
			value: Integer; 
			candidates: PlayerHandByValueDictionary): PlayerHand protected, typeMethod;
		determineWinningHand(hands: PlayerHandByValueDictionary): PlayerHand typeMethod;
		handName(handNumber: Integer): String typeMethod;
		isFlush(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isFour(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isHighCard(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isHouse(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isPair(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isStraight(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isStraightFlush(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isThree(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		isTwoPair(
			pool: CardArray; 
			bestHand: CardArray io): Boolean typeMethod;
		zBestFlush(
			suit: Character; 
			pool: CardArray; 
			bestHand: CardArray io) protected, typeMethod;
		zCountSuit(
			pool: CardArray; 
			c: Integer io; 
			d: Integer io; 
			h: Integer io; 
			s: Integer io) protected, typeMethod;
		zRank(card: Card): Integer protected, typeMethod;
	)
	PlayerHand completeDefinition
	(
	constantDefinitions
		Flush:                         Integer = 70;
		Four:                          Integer = 90;
		HighCard:                      Integer = 20;
		House:                         Integer = 80;
		Pair:                          Integer = 30;
		Straight:                      Integer = 60;
		StraightFlush:                 Integer = 100;
		Three:                         Integer = 50;
		TwoPair:                       Integer = 40;
	attributeDefinitions
		value:                         Integer readonly;
	referenceDefinitions
		best:                          CardArray  implicitMemberInverse, readonly;
		player:                        Player  readonly;
	jadeMethodDefinitions
		create(
			p: Player; 
			cards: CardArray; 
			value_: Integer) updating;
	)
	JadeScript completeDefinition
	(
	jadeMethodDefinitions
		clearAllGames();
	)
	RouteBase completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	implementInterfaces
		JadeOrbPackage::IOrbRoute
		(
			execute is execute;
			render is render;
		)
	)
	BetRoute completeDefinition
	(
	attributeDefinitions
		betAmount:                     Integer;
	jadeMethodDefinitions
		execute(): Integer updating;
	)
	DealRoute completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
	)
	FoldRoute completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
	)
	GameRoute completeDefinition
	(
	attributeDefinitions
		gameid:                        String;
	referenceDefinitions
		theFelt:                       Felt  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	JoinRoute completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
	)
	LiveTableRoute completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
	)
	MainRoute completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	LiveFeltRoute completeDefinition
	(
	jadeMethodDefinitions
		render(executeResult: Integer): Binary;
	)
	MakeGameRoute completeDefinition
	(
	attributeDefinitions
		username:                      String;
	referenceDefinitions
		theFelt:                       Felt  protected;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	NextHandRoute completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
	)
	SignInRoute completeDefinition
	(
	attributeDefinitions
		username:                      String;
	jadeMethodDefinitions
		execute(): Integer updating;
		render(executeResult: Integer): Binary;
	)
	StartGameRoute completeDefinition
	(
	jadeMethodDefinitions
		execute(): Integer updating;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SDealerSchema completeDefinition
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
	CardDictionary completeDefinition
	(
	)
	CardsByHighFaceMKD completeDefinition
	(
	)
	FeltByIdDictionary completeDefinition
	(
	)
	FeltByTimestampDictionary completeDefinition
	(
	)
	PlayerByNameDictionary completeDefinition
	(
	)
	PlayerHandByValueDictionary completeDefinition
	(
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	CardArray completeDefinition
	(
	)
	PlayerArray completeDefinition
	(
	)
memberKeyDefinitions
	CardDictionary completeDefinition
	(
		suit;
		rank;
	)
	CardsByHighFaceMKD completeDefinition
	(
		rank descending;
	)
	FeltByIdDictionary completeDefinition
	(
		gameid;
	)
	FeltByTimestampDictionary completeDefinition
	(
		timestamp;
	)
	PlayerByNameDictionary completeDefinition
	(
		username;
	)
	PlayerHandByValueDictionary completeDefinition
	(
		value descending;
	)
inverseDefinitions
	myController of Felt manual peerOf allFeltById of ModelController automatic;
	allFeltByTimestamp of ModelController automatic peerOf myController of Felt manual;
	allCards of Deck automatic peerOf myDeck of Card manual;
	myDeck of Felt manual parentOf myFelt of Deck automatic;
	seats of Felt peerOf myFelt of Player;

databaseDefinitions
	DealerSchemaDb
	(
	databaseFileDefinitions
		"dealerschema";
	defaultFileDefinition "dealerschema";
	classMapDefinitions
		BetRoute in "dealerschema";
		Card in "dealerschema";
		CardArray in "dealerschema";
		CardDictionary in "dealerschema";
		CardsByHighFaceMKD in "dealerschema";
		CardsSecretTemplate in "dealerschema";
		ControllerClasses in "dealerschema";
		ControlsDynamicTemplate in "dealerschema";
		DealRoute in "dealerschema";
		DealerSchema in "_usergui";
		Deck in "dealerschema";
		DynamicTemplateBase in "dealerschema";
		Felt in "dealerschema";
		FeltByIdDictionary in "dealerschema";
		FeltByTimestampDictionary in "dealerschema";
		FoldRoute in "dealerschema";
		GDealerSchema in "dealerschema";
		GameClasses in "dealerschema";
		GameRoute in "dealerschema";
		GameUtils in "dealerschema";
		HandEvaluator in "dealerschema";
		JoinRoute in "dealerschema";
		LiveFeltRoute in "dealerschema";
		LiveTableRoute in "dealerschema";
		MainRoute in "dealerschema";
		MakeGameRoute in "dealerschema";
		ModelController in "dealerschema";
		NextHandRoute in "dealerschema";
		Player in "dealerschema";
		PlayerArray in "dealerschema";
		PlayerByNameDictionary in "dealerschema";
		PlayerHand in "dealerschema";
		PlayerHandByValueDictionary in "dealerschema";
		PlayerSeatsTemplate in "dealerschema";
		RouteBase in "dealerschema";
		SDealerSchema in "_environ";
		SignInRoute in "dealerschema";
		StartDyanamicTemplate in "dealerschema";
		StartGameRoute in "dealerschema";
	)
typeSources
	DealerSchema (
	jadeMethodSources
exHandler
{
exHandler(ex : Exception) : Integer;

vars

begin
	write "*** ERROR ***";
	write ex.errorCode;
	
	ex.debug();
	
	return Ex_Abort_Action;
end;
}
initApp
{
initApp() updating;

constants
	Root = "C:\jade-orb-examples\gametemplates\new\";
vars

begin
	on Exception do exHandler(exception) global;

	self.controller := ModelController.firstInstance;
	if self.controller = null then
		beginTransaction;
		create self.controller persistent;
		commitTransaction;
	endif;

	Orb@setDebug(true);
	
	Orb@addHtmlTemplate("layout", Root & "layout.html");
	Orb@addHtmlTemplate("felt", Root & "felt.html");
	Orb@addHtmlTemplate("playerbox", Root & "playerbox.html");
	Orb@addHtmlTemplate("community", Root & "community.html");
	Orb@addHtmlTemplate("cards_hidden", Root & "cards_hidden.html");
	Orb@addHtmlTemplate("cards_visible", Root & "cards_visible.html");
	Orb@addHtmlTemplate("card_visible", Root & "card_visible.html");
	Orb@addHtmlTemplate("controls_turn", Root & "controls_turn.html");
	Orb@addHtmlTemplate("controls_none", Root & "controls_none.html");
	Orb@addHtmlTemplate("startgamebutton", Root & "startgame.html");
	Orb@addHtmlTemplate("controls_next", Root & "controls_next.html");
	Orb@addHtmlTemplate("controls_winner", Root & "controls_winner.html");
	Orb@addHtmlTemplate("card_hidden", Root & "card_hidden.html");
	
	// XXX remove me
	//Orb@addHtmlTemplate("cards", Root & "cards_visible.html");
	
	Orb@addDynamicTemplate("cards", CardsSecretTemplate);
	Orb@addDynamicTemplate("playerseats", PlayerSeatsTemplate);
	Orb@addDynamicTemplate("controls", ControlsDynamicTemplate);
	Orb@addDynamicTemplate("startgame", StartDyanamicTemplate);
	
	Orb@addStylesheet("style.css", Root & "style.css");
	
	Orb@addRoute("GET", "/", MainRoute);
	Orb@addRoute("GET", "/livefelt", LiveFeltRoute);
	Orb@addRoute("POST", "/startgame", StartGameRoute);
	Orb@addRoute("POST", "/bet", BetRoute);
	Orb@addRoute("POST", "/nexthand", NextHandRoute);
	Orb@addRoute("POST", "/fold", FoldRoute);
end;
}
	)
	DynamicTemplateBase (
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
	CardsSecretTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	player : Player;
begin
	if Orb@sessionData(player) then
		if player = object.Player then
			return Orb@bind("cards_visible", object);
		endif;
	endif;
	
	if Felt.firstInstance.gameState = Felt.State_80_Postshowdown then
		return Orb@bind("cards_visible", object);
	endif;
	
	return Orb@bind("cards_hidden", object);
end;
}
	)
	ControlsDynamicTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	player : Player;
begin
	if Orb@sessionData(player) then
		if player.isHost() and Felt.firstInstance.gameState = Felt.State_80_Postshowdown then
			return Orb@bind("controls_next", object);
		elseif Felt.firstInstance.gameState = Felt.State_80_Postshowdown then
			return Orb@bind("controls_winner", object);
		endif;
	
		if player.isCurrentTurn() then
			return Orb@bind("controls_turn", object);
		endif;
	endif;

	return Orb@bind("controls_none", object);
end;
}
	)
	PlayerSeatsTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

// manually expand seats to display the players around the table
// the current player is always at the bottom, and the order is maintained around them

vars
	felt	: Felt;
	sess	: Player;
	player	: Player;
	iter	: Iterator;
	html	: Binary;
begin
	felt := object.Felt;
	iter := felt.seats.createIterator();
	
	if Orb@sessionData(sess) then
		// user is a player, start from their position
		iter.startAtObject(sess);
	endif;
	
	while iter.next(player) do
		html := html & Orb@bind("playerbox", player);
	endwhile;
	
	if sess <> null then
		// go back to the start
		iter.startAtIndex(1);
		
		// add the other players from the start until we reach the current player
		// (or do nothing if the user is player 1)
		while iter.next(player) and player <> sess do
			html := html & Orb@bind("playerbox", player);
		endwhile;
	endif;

	return html;
	
epilog
	delete iter;
end;
}
	)
	StartDyanamicTemplate (
	jadeMethodSources
render
{
render(object: Object): Binary;

vars
	player : Player;
begin
	if Orb@sessionData(player) then
		if player.isHost() and not player.isGameStarted() then
			return Orb@bind("startgamebutton", object);
		endif;
	endif;
	
	return Orb@wrap("");
end;
}
	)
	Card (
	jadeMethodSources
color
{
color() : String;

vars

begin
	switch self.suit do
		case Clubs:		return "black";
		case Diamonds:	return "red";
		case Hearts:	return "red";
		case Spades:	return "black";
		default:		return "";
	endswitch;
end;
}
face
{
face() : String;

begin
	switch self.rank do
		case 1:		return "A";
		case 11:	return "J";
		case 12:	return "Q";
		case 13:	return "K";
		default:	return self.rank.String;
	endswitch;
end;
}
imageUrl
{
imageUrl() : String;

vars
	f : String;
	s : String;
begin
	switch self.rank do
		case 1:  f := "A";
		case 10: f := "T";
		case 11: f := "J";
		case 12: f := "Q";
		case 13: f := "K";
		default: f := self.rank.String;
	endswitch;
	
	s := self.suit.toUpper();
	
	return f & s & ".png";
end;
}
putInDeck
{
putInDeck(deck : Deck) updating;

begin
	if deck <> null and self.myDeck = null then
		self.myDeck := deck;
	else
		FatalError.raise_(1002, "Attempted to move card from existing deck");
	endif;
end;
}
symbol
{
symbol() : String;

vars

begin
	switch self.suit do
		case Clubs:		return "&clubs;";
		case Diamonds:	return "&diams;";
		case Hearts:	return "&hearts;";
		case Spades:	return "&spades;";
		default:		return "";
	endswitch;
end;
}
	)
	Deck (
	jadeMethodSources
cardsInDeck
{
cardsInDeck() : Integer;

vars
	size : Integer;
begin
	size := self.cards.size();
	
	if size <> self.allCards.size() then
		FatalError.raise_(1002, "Ordered cards and associated cards don't match");
	endif;
	
	return size;
end;
}
create
{
create() updating;

begin
	self.createSuit(Card.Clubs);
	self.createSuit(Card.Diamonds);
	self.createSuit(Card.Hearts);
	self.createSuit(Card.Spades);
	
	self.shuffle;
end;
}
createCard
{
createCard(suit : Character; face : Integer) updating, protected;

vars
	card : Card;
begin
	card := create Card persistent;
	card.suit := suit;
	card.rank := face;
	card.putInDeck(self);
	
	self.cards.add(card);
end;
}
createSuit
{
createSuit(suit : Character) updating, protected;

vars
	i : Integer;
begin
	foreach i in Card.Ace to Card.King do
		self.createCard(suit, i);
	endforeach;
end;
}
delete
{
delete() updating;

vars
	card : Card;
begin
	foreach card in self.allCards do
		delete card;
	endforeach;
end;
}
draw
{
draw() : Card updating;

// we draw from the "bottom" of the deck so that every draw doesn't rearrange the array

vars
	card 	: Card;
	top 	: Integer64;
begin
	top := self.cards.size64();
	card := self.cards.removeAt(top);
	return card;
end;
}
replaceCards
{
replaceCards(pile : CardArray input) updating;

vars
	card : Card;
begin
	foreach card in pile do
		cards.add(card);
	endforeach;
	
	pile.clear;
end;
}
shuffle
{
shuffle() updating;

// knuth / fisher-yates shuffle

vars
	i 		: Integer;
	len 	: Integer;
	rand 	: Integer;
	card1	: Card;
	card2	: Card;
begin
	len := self.cards.size();
	foreach i in 1 to len reversed do
		rand := GameUtils@uniformRandom(1, i);
		card1 := self.cards[i];
		card2 := self.cards[rand];
		self.cards[i] := card2;
		self.cards[rand] := card1;
	endforeach;
end;
}
	)
	Felt (
	jadeMethodSources
bet
{
bet(player : Player io; amount : Integer) : Boolean updating;

vars
	other : Player;
begin
	foreach other in self.seats do
		write other.currentBet;
		write player.currentBet + amount;
	
		if other.currentBet > player.currentBet + amount then
			// a player has raised by more than this
			return false;
		endif;
	endforeach;

	player.bet(amount);
	self.pot := self.pot + amount;
	
	foreach other in self.seats do
		if other.currentBet < player.currentBet then
			self.playersCalled.clear;
		endif;
	endforeach;
	
	self.playersCalled.add(player);
	
	return true;
end;
}
callMinimum
{
callMinimum() : String;

vars
	player 	: Player;
	large	: Integer;
	diff	: Integer;
	curr	: Player;
begin
	foreach player in self.seats do
		if not self.playersFolded.includes(player) then
			if player.currentBet > large then
				large := player.currentBet;
			endif;
		endif;
	endforeach;
	
	Orb@sessionData(curr);
	
	diff := large - curr.currentBet;
	
	return diff.String;
end;
}
create
{
create() updating;

vars

begin
	self.gameid := app.generateUuid(VariantMicrosoft);
	self.myDeck := create Deck() persistent;
	self.timestamp := app.getUTCTime();
	
	self.gameState := State_10_Unstarted;
	
	self.myController := app.controller;
end;
}
dealCard
{
dealCard(card : Card) updating, protected;

begin
	if self.communityCards.size() < 5 then
		self.communityCards.add(card);
	else
		FatalError.raise_(1002, "Table has too many cards");
	endif;
end;
}
dealFlop
{
dealFlop() updating;

vars
	i		: Integer;
	card 	: Card;
begin
	foreach i in 1 to 3 do
		card := self.myDeck.draw();
		self.dealCard(card);
	endforeach;
end;
}
dealHoleCards
{
dealHoleCards() updating;

vars
	player 	: Player;
	card	: Card;
begin
	foreach player in self.seats do
		card := self.myDeck.draw();
		player.dealCard(card);
	endforeach;
	
	foreach player in self.seats do
		card := self.myDeck.draw();
		player.dealCard(card);
	endforeach;
end;
}
dealTurnOrRiver
{
dealTurnOrRiver() updating;

vars
	card : Card;
begin
	card := self.myDeck.draw();
	self.dealCard(card);
end;
}
declareWinner
{
declareWinner(player : Player io) updating, protected;

begin
	player.win(self.pot);
end;
}
drawFromDeck
{
drawFromDeck() : Card updating;

begin
	return self.myDeck.draw();
end;
}
foldCurrentPlayer
{
foldCurrentPlayer() updating;

vars

begin
	// cause the timer to immediately activate to maintain normal flow
	self.endTimer(Felt.Event_Progress);
	self.beginTimer(1, Timer_OneShot, Event_Progress);
end;
}
getIdString
{
getIdString() : String;

begin
	return self.gameid.uuidAsString();
end;
}
incrementGameState
{
incrementGameState() updating, protected;

vars

begin
	beginTransaction;
	switch self.gameState do
		case State_10_Unstarted:	self.gameState := State_20_Deal;
		case State_20_Deal:			self.gameState := State_40_Flop;
		//case State_30_Preflop:		self.gameState := State_40_Flop;
		case State_40_Flop:			self.gameState := State_50_Turn;
		case State_50_Turn:			self.gameState := State_60_River;
		case State_60_River:		self.gameState := State_70_Showdown;
		case State_70_Showdown:		self.gameState := State_20_Deal;
	endswitch;
	commitTransaction;
end;
}
muck
{
muck() updating;

// return all the cards to the deck, from wherever they are

vars
	player : Player;
begin
	self.myDeck.replaceCards(self.communityCards);
	
	foreach player in self.seats do
		player.muck(self.myDeck);
	endforeach;
	
	if self.myDeck.cardsInDeck() <> 52 then
		FatalError.raise_(1002, "Cards are missing from deck");
	endif;
	
	self.myDeck.shuffle;
end;
}
playerBlind
{
playerBlind(player : Player) : String;

vars

begin
	if player = self.playerSmallBlind then
		return "SB";
	endif;
	
	if player = self.playerBigBlind then
		return "BB";
	endif;
	
	return "";
end;
}
playerStatus
{
playerStatus(player : Player) : String;

vars

begin
	if player = self.currentTurnPlayer then
		return "active";
	endif;
	
	if self.playersFolded.includes(player) then
		return "folded";
	endif;
	
	return "";
end;
}
playersAllCalled
{
playersAllCalled() : Boolean protected;

vars
	player 	: Player;
	arr		: PlayerArray;
begin
	create arr transient;
	foreach player in self.seats do
		if player.stack > 0 and not self.playersFolded.includes(player) then
			arr.add(player);
		endif;
	endforeach;
	
	return arr.size() = self.playersCalled.size();
epilog
	delete arr;
end;
}
playersRemaining
{
playersRemaining() : Integer protected;

vars
	player 	: Player;
	arr		: PlayerArray;
begin
	create arr transient;
	foreach player in self.seats do
		if player.stack > 0 and not self.playersFolded.includes(player) then
			arr.add(player);
		endif;
	endforeach;
	
	return arr.size();
epilog
	delete arr;
end;
}
progressBettingRound
{
progressBettingRound() : Boolean updating, protected;

vars
	iter 	: Iterator;
	player 	: Player;
	count	: Integer;
	more	: Boolean;
begin
	iter := self.seats.createIterator();
	
	if self.gameState = State_20_Deal and not blindsComplete then
		iter.startAtObject(self.theButton);
		iter.next(player); // skip the button
	
		// auto place the blinds
		while count < 1 do
			if iter.next(player) then
				if player.stack > 0 then
					if self.playerSmallBlind = player then
						beginTransaction;
							self.bet(player, 100);
						commitTransaction;
						app.doWindowEvents(500);
						count := count + 1;
						write count;
					endif;
				endif;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;
		
		count := 0;
		
		while count < 1 do
			if iter.next(player) then
				if player.stack > 0 then
					if self.playerBigBlind = player then
						beginTransaction;
							self.bet(player, 200);
							self.playersCalled.remove(player);
						commitTransaction;
						count := count + 1;
						write count;
					endif;
				endif;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;
		
		count := 0;
		
		// move to the UTG
		while count < 1 do
			if iter.next(player) then
				if player.stack > 0 then
					count := count + 1;
				endif;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;
		
		beginTransaction;
		self.blindsComplete := true;
		commitTransaction;
	elseif self.playersAllCalled() then
		// progress to next phase
		self.incrementGameState;
		beginTransaction;
		self.playersCalled.clear;
		self.currentTurnPlayer := null;
		commitTransaction;
		self.progressGame;
		more := false;
		return true;
	else
		if self.currentTurnPlayer <> null then
			iter.startAtObject(self.currentTurnPlayer);
			iter.next(player); // skip current player
			
			if not self.playersCalled.includes(player) then
				// current player didn't act, auto-fold
				beginTransaction;
				self.playersFolded.add(player);
				commitTransaction;
			endif;
		else
			iter.startAtObject(self.theButton);
			iter.next(player); // skip button
		endif;

		while count < 1 do
			if iter.next(player) then
				if player.stack > 0 and not self.playersFolded.includes(player) then
					count := count + 1;
				endif;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;
		
		if self.playersRemaining() = 1 then
			// only one player left, they win
			beginTransaction;
			self.declareWinner(player);
			commitTransaction;
			return false;			
		endif;
	endif;
	
	more := true;
	
	return more;
	
epilog
	delete iter;

	if more then
		beginTransaction;
		self.currentTurnPlayer := player;
		self.beginTimer(12 * 1000, Timer_OneShot, Event_Progress);
		commitTransaction;
	endif;
end;
}
progressBettingRoundOLD
{
progressBettingRoundOLD() : Boolean updating, protected;

vars
	iter 	: Iterator;
	player 	: Player;
	count	: Integer;
	more	: Boolean;
	intxn	: Boolean;
begin
	iter := self.seats.createIterator();
	
	// preflop, play starts from the UTG
	if self.gameState = State_20_Deal then
		iter.startAtObject(self.theButton);
		
		while count < 2 do
			if iter.next(player) then
				count := count + 1;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;
	else
		if not self.playersCalled.includes(self.currentTurnPlayer) then
			// current player did not take their turn before the time limit
			// so they auto-fold
			beginTransaction;
			intxn := true;
			self.playersFolded.add(self.currentTurnPlayer);
		endif;
	
		// progress to the next player
		iter.startAtObject(self.currentTurnPlayer);
		while count < 1 do
			if iter.next(player) then
				count := count + 1;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;
	endif;
	
	if not intxn then
		beginTransaction;
	endif;
		if not self.playersCalled.includes(player) then
			self.currentTurnPlayer := player;
			more := true;
		else
			more := false;
		endif;
	commitTransaction;
	
	return more;
	
epilog
	if more then
		self.beginTimer(12 * 1000, Timer_OneShot, Event_Progress);
	endif;
end;
}
progressBettingRoundOLD1
{
progressBettingRoundOLD1() : Boolean updating, protected;

vars
	iter 	: Iterator;
	player 	: Player;
	count	: Integer;
	more	: Boolean;
begin
	write method.qualifiedName;

	iter := self.seats.createIterator();
	
	if self.currentTurnPlayer <> null then
		// last player didn't respond, auto-fold
		beginTransaction;
		self.playersFolded.add(self.currentTurnPlayer);
		commitTransaction;
		
		
	endif;
	
	// each increment is +1 as next after startAt returns the startAt target
	
	if self.gameState = State_20_Deal then
		// preflop play starts from the UTG
		if self.currentTurnPlayer = null then
			iter.startAtObject(self.theButton);
		
			while count < 2 + 1 do
				if iter.next(player) then
					if not self.playersFolded.includes(player) then
						count := count + 1;
					endif;
				else
					iter.startAtIndex(1);
				endif;
			endwhile;
		else
			// betting in progress, go to the next player
			iter.startAtObject(self.currentTurnPlayer);
			
			while count < 1 + 1 do
				if iter.next(player) then
					if not self.playersFolded.includes(player) then
						count := count + 1;
					endif;
				else
					iter.startAtIndex(1);
				endif;
			endwhile;
		endif;
	else
		// after the flop, play starts from the SB
	endif;
	
	more := true;
	
	return more;
	
epilog
	delete iter;

	if more then
		beginTransaction;
		self.currentTurnPlayer := player;
		write "starting timer";
		self.beginTimer(12 * 1000, Timer_OneShot, Event_Progress);
		commitTransaction;
	endif;
end;
}
progressDeal
{
progressDeal() updating, protected;

vars
	player 	: Player;
	card	: Card;
begin
	foreach player in self.seats do
		beginTransaction;
			card := self.myDeck.draw();
			player.dealCard(card);
			
			self.updateObjectEdition(self);
		commitTransaction;
		app.doWindowEvents(500);
	endforeach;
	
	foreach player in self.seats do
		beginTransaction;
			card := self.myDeck.draw();
			player.dealCard(card);
			
			self.updateObjectEdition(self);
		commitTransaction;
		app.doWindowEvents(500);
	endforeach;
	
	// check if this is a new game
	if self.theButton = null then
		beginTransaction;
		// button starts from the host
		self.theButton := self.seats.first;
		commitTransaction;
	endif;
		
	self.progressBettingRound;
end;
}
progressFlop
{
progressFlop() updating, protected;

vars
	card 	: Card;
	i		: Integer;
begin
	foreach i in 1 to 3 do
		beginTransaction;
		card := self.myDeck.draw();
		self.dealCard(card);
		commitTransaction;
	endforeach;

	self.progressBettingRound;
end;
}
progressGame
{
progressGame() updating, protected;

begin
	switch self.gameState do
		case State_10_Unstarted:	self.progressUnstarted;
		case State_20_Deal:			self.progressDeal;
		//case State_30_Preflop:
		case State_40_Flop:			self.progressFlop;
		case State_50_Turn:			self.progressTurn;
		case State_60_River:		self.progressRiver;
		case State_70_Showdown:		self.progressShowdown;
	endswitch;
end;
}
progressNewRound
{
progressNewRound() updating, protected;

vars
	iter 	: Iterator;
	player	: Player;
	count	: Integer;
begin
	if self.theButton = null then
		// new game
		beginTransaction;
		self.theButton := self.seats.first;
		commitTransaction;
	else
		// move button to next non-busted player
		iter := self.seats.createIterator();
		iter.startAtObject(self.theButton);
		iter.next(player); // skip current button
		
		while count < 1 do
			if iter.next(player) then
				if player.stack > 0 then
					count := count + 1;
				endif;
			else
				iter.startAtIndex(1);
			endif;
		endwhile;

		beginTransaction;
		self.theButton := player;
		self.currentTurnPlayer := null;
		
		// reset bets
		self.pot := 0;
		self.playersCalled.clear;
		self.playersFolded.clear;
		
		foreach player in self.seats do
			player.setPropertyValue("currentBet", 0);
		endforeach;
		
		// reset cards
		self.muck;
		
		self.gameState := State_20_Deal;
		commitTransaction;
	endif;
	
	self.setBlinds;
epilog
	delete iter;
end;
}
progressRiver
{
progressRiver() updating, protected;

vars
	card 	: Card;
begin
	beginTransaction;
	card := self.myDeck.draw();
	self.dealCard(card);
	commitTransaction;

	self.progressBettingRound;
end;
}
progressShowdown
{
progressShowdown() protected, updating;

vars
	player 	: Player;
	best	: CardArray;
	pool	: CardArray;
	value	: Integer;
	hand	: PlayerHand;
	hands	: PlayerHandByValueDictionary;
	winner	: PlayerHand;
begin
	create pool transient;
	create best transient;
	create hands transient;

	foreach player in self.seats do
		if player.stack > 0 and not self.playersFolded.includes(player) then
			player.hand.copy(pool);
			self.communityCards.copy(pool);
			
			if 	HandEvaluator@isStraightFlush(pool, best) then
				value := PlayerHand.StraightFlush;
			elseif HandEvaluator@isFour(pool, best) then
				value := PlayerHand.Four;
			elseif HandEvaluator@isHouse(pool, best) then
				value := PlayerHand.House;
			elseif HandEvaluator@isFlush(pool, best) then
				value := PlayerHand.Flush;
			elseif HandEvaluator@isStraight(pool, best) then
				value := PlayerHand.Straight;
			elseif HandEvaluator@isThree(pool, best) then
				value := PlayerHand.Three;
			elseif HandEvaluator@isTwoPair(pool, best) then
				value := PlayerHand.TwoPair;
			elseif HandEvaluator@isPair(pool, best) then
				value := PlayerHand.Pair;
			elseif HandEvaluator@isHighCard(pool, best) then
				value := PlayerHand.HighCard;
			endif;
			
			hand := create PlayerHand(player, best, value) transient;
			hands.add(hand);
		endif;
		
		pool.clear;
		best.clear;
		value := 0;
	endforeach;
	
	winner := HandEvaluator@determineWinningHand(hands);
	player := winner.player;
	
	beginTransaction;
	self.declareWinner(player);
	self.statustext := player.username & " wins with " & HandEvaluator@handName(winner.value);
	self.gameState := State_80_Postshowdown;
	commitTransaction;
	
epilog
	delete best;
	delete pool;
	hands.purge;
	delete hands;
end;
}
progressTurn
{
progressTurn() updating, protected;

vars
	card 	: Card;
begin
	beginTransaction;
	card := self.myDeck.draw();
	self.dealCard(card);
	commitTransaction;

	self.progressBettingRound;
end;
}
progressUnstarted
{
progressUnstarted() updating, protected;

vars

begin
	self.progressNewRound;

	self.incrementGameState;
	
	self.progressGame;
end;
}
setBlinds
{
setBlinds() updating, protected;

vars
	iter 	: Iterator;
	player	: Player;
	count	: Integer;
	sb		: Player;
	bb		: Player;
begin
	iter := self.seats.createIterator();
	iter.startAtObject(self.theButton);
	
	iter.next(player); // skip the button
	
	while count < 2 do
		if iter.next(player) then
			// busted players are skipped
			if player.stack > 0 then
				count := count + 1;
			endif;
		else
			iter.startAtIndex(1);
		endif;
		
		if 		count = 1 and sb = null then
			sb := player;
		elseif 	count = 2 and bb = null then
			bb := player;
		endif;
	endwhile;
	
	beginTransaction;
	self.playerSmallBlind 	:= sb;
	self.playerBigBlind 	:= bb;
	self.blindsComplete 	:= false;
	commitTransaction;
epilog
	delete iter;
end;
}
setHost
{
setHost(name : String) updating;

begin
	self.host := name;
end;
}
sit
{
sit(player : Player) updating;

begin
	if self.seats.size () < 6 then
		self.seats.add(player);
		self.updateObjectEdition(self);
	endif;
end;
}
startGame
{
startGame(startingPlayer : Player) updating;

vars

begin
	// only the host can start the game
	if self.seats.first = startingPlayer and self.gameState = State_10_Unstarted then
		self.progressGame;
	endif;
end;
}
timerEvent
{
timerEvent(eventTag: Integer) updating;

begin
	if eventTag = Event_Progress then
		if not self.progressBettingRound() then
			self.progressNewRound;
			self.progressDeal;
		endif;
	endif;
end;
}
trySeatNewPlayer
{
trySeatNewPlayer() : Player updating;

vars
	player 	: Player;
	count	: Integer;
begin
	count := self.seats.size();

	if count < 6 then
		count := count + 1;
		player := create Player("Player " & count.String) persistent;
		self.sit(player);
	endif;
	
	// will be null if seats are full
	return player;
end;
}
	)
	Player (
	jadeMethodSources
bet
{
bet(amount : Integer) updating;

begin
	self.stack := self.stack - amount;
	self.currentBet := self.currentBet + amount;
	self.lastaction := "Bet: " & self.currentBet.String;
end;
}
blind
{
blind() : String;

vars

begin
	return self.myFelt.playerBlind(self);
end;
}
create
{
create(name_ : String) updating;

vars

begin
	self.username := name_;
	
	self.lastaction := "Bet: 0";
	
	self.stack := 50000;
end;
}
dealCard
{
dealCard(card : Card) updating;

begin
	if self.hand.size() < 2 then
		self.hand.add(card);
	else
		FatalError.raise_(1002, "Player has too many cards");
	endif;
end;
}
isCurrentTurn
{
isCurrentTurn() : Boolean;

begin
	return self.myFelt.currentTurnPlayer = self;
end;
}
isGameStarted
{
isGameStarted() : Boolean;

vars

begin
	return self.myFelt.gameState <> Felt.State_10_Unstarted;
end;
}
isHost
{
isHost() : Boolean;

begin
	return self.myFelt.seats.first = self;
end;
}
muck
{
muck(deck : Deck io) updating;

// return cards from hand to the deck

begin
	deck.replaceCards(self.hand);
end;
}
placeBet
{
placeBet(amount : Integer) updating;

vars
	player : Player;
begin
	player := self;
	if self.myFelt.bet(player, amount) then
		self.myFelt.endTimer(Felt.Event_Progress);
		self.myFelt.beginTimer(0, Timer_OneShot, Felt.Event_Progress);
	endif;
end;
}
position
{
position() : String;

vars
	player 	: Player;
	count	: Integer;
begin
	foreach player in self.myFelt.seats do
		count := count + 1;
		if player = self then
			break;
		endif;
	endforeach;
	
	return count.String;
end;
}
setAction
{
setAction(string : String) updating;

vars

begin
	self.lastaction := string;
end;
}
startGame
{
startGame() updating;

begin
	self.myFelt.startGame(self);
end;
}
status
{
status() : String;

begin
	return self.myFelt.playerStatus(self);
end;
}
win
{
win(amount : Integer) updating;

begin
	self.stack := self.stack + amount;
	
	self.lastaction := "Won: " & amount.String;
	
	self.myFelt.updateObjectEdition(self.myFelt);
end;
}
	)
	GameUtils (
	jadeMethodSources
uniformRandom
{
uniformRandom(min, max : Integer) : Integer typeMethod;

// get a random integer, accounting for modulo bias

vars
	range 	: Integer;
	rand	: Integer;
	limit	: Integer;
	bin		: Binary[8]; // we'll only use the first 4 bytes
begin
	range := max - min + 1;
	limit := (Max_Integer div range) * range;
	
	while true do
		bin[bin.maxLength()] := 0;
		randomBytes(bin);
		rand := bin.Integer.abs();
		
		if rand >= limit then
			// biased result, rejected
		else
			break;
		endif;
	endwhile;
	
	return (rand mod range) + min;
end;
}
	externalMethodSources
randomBytes
{
randomBytes(bin : Binary io) is getRandomBytes in jomsupp typeMethod, protected;
}
	)
	HandEvaluator (
	jadeMethodSources
bestCandidate
{
bestCandidate(value : Integer; candidates : PlayerHandByValueDictionary) : PlayerHand protected, typeMethod;

vars
	hand 	: PlayerHand;
	card	: Card;
	score	: Integer;
	winner	: PlayerHand;
	rank	: Integer;
	quant	: IntegerArray;
begin
	create quant transient;
	quant[14] := 0;

	foreach hand in candidates do

		switch value do
			case PlayerHand.StraightFlush:
				// highest 5 card wins
				foreach card in hand.best do
					rank := zRank(card);
					if rank > score then
						score := card.rank;
						winner := hand;
					endif;
				endforeach;
			case PlayerHand.Four:
				foreach card in hand.best do
					rank := zRank(card);
					if rank > score then
						score := card.rank;
						winner := hand;
					endif;
				endforeach;
			case PlayerHand.House:
				foreach card in hand.best do
					rank := zRank(card);
					if rank > score then
						score := card.rank;
						winner := hand;
					endif;
				endforeach;
			case PlayerHand.Flush:
				foreach card in hand.best do
					rank := zRank(card);
					if rank > score then
						score := card.rank;
						winner := hand;
					endif;
				endforeach;
			case PlayerHand.Straight:
				foreach card in hand.best do
					rank := zRank(card);
					if rank > score then
						score := card.rank;
						winner := hand;
					endif;
				endforeach;
			case PlayerHand.Three:
				foreach card in hand.best do
					rank := zRank(card);
					quant[rank] := quant[rank] + 1;
				endforeach;
				
				foreach rank in quant do
					if rank = 3 then
						if rank > score then
							score := rank;
							winner := hand;
						endif;
					endif;
				endforeach;
			case PlayerHand.TwoPair:
				foreach card in hand.best do
					rank := zRank(card);
					quant[rank] := quant[rank] + 1;
				endforeach;
				
				foreach rank in quant do
					if rank = 2 then
						if rank > score then
							score := rank;
							winner := hand;
						endif;
					endif;
				endforeach;
			case PlayerHand.Pair:
				foreach card in hand.best do
					rank := zRank(card);
					quant[rank] := quant[rank] + 1;
				endforeach;
				
				foreach rank in quant do
					if rank = 2 then
						if rank > score then
							score := rank;
							winner := hand;
						endif;
					endif;
				endforeach;
			case PlayerHand.HighCard:
				foreach card in hand.best do
					rank := zRank(card);
					if rank > score then
						score := card.rank;
						winner := hand;
					endif;
				endforeach;
		endswitch;
	
		quant[14] := 0;
	endforeach;
	
	return winner;
	
epilog
	delete quant;
end;
}
determineWinningHand
{
determineWinningHand(hands : PlayerHandByValueDictionary) : PlayerHand typeMethod;

vars
	hand		: PlayerHand;
	value		: Integer;
	candidates	: PlayerHandByValueDictionary;
begin
	value := hands.first().value; // highest value is always first

	create candidates transient;

	foreach hand in hands where hand.value = value do
		candidates.add(hand);
	endforeach;

	return bestCandidate(value, candidates);
epilog
	delete candidates;
end;
}
handName
{
handName(handNumber : Integer) : String typeMethod;

begin
	switch handNumber do
		case PlayerHand.StraightFlush:
			return "a Straight Flush";
		case PlayerHand.Four:
			return "Four of a Kind";
		case PlayerHand.House:
			return "a Full House";
		case PlayerHand.Flush:
			return "a Flush";
		case PlayerHand.Straight:
			return "a Straight";
		case PlayerHand.Three:
			return "Three of a Kind";
		case PlayerHand.TwoPair:
			return "Two Pair";
		case PlayerHand.Pair:
			return "a Pair";
		case PlayerHand.HighCard:
			return "a High Card";
		default:
			return "Unknown";
	endswitch;
end;
}
isFlush
{
isFlush(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	suit : Character;
	best : Integer;
	c, d, h, s : Integer;
begin
	zCountSuit(pool, c, d, h, s);
	
	best := c;
	suit := Card.Clubs;
	
	if d > best then
		best := d;
		suit := Card.Diamonds;
	endif;
	
	if h > best then
		best := h;
		suit := Card.Hearts;
	endif;
	
	if s > best then
		best := s;
		suit := Card.Spades;
	endif;
	
	if best >= 5 then
		zBestFlush(suit, pool, bestHand);
		return true;
	endif;
	
	return false;
end;
}
isFour
{
isFour(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	cards	: CardsByHighFaceMKD;
	counts	: IntegerArray;
	i		: Integer;
	current	: Integer;
	best	: Integer;
begin
	create counts transient;
	counts[13] := null;

	foreach card in pool do
		current := counts[card.rank];
		counts[card.rank] := current + 1;
	endforeach;
	
	foreach i in 1 to 13 reversed do
		current := counts[i];
		if current = 4 then
			best := i;
			break;
		endif;
	endforeach;
	
	if best = 0 then
		return false;
	endif;
	
	create cards transient;
	foreach card in pool do
		cards.add(card);
	endforeach;
	
	foreach card in pool do
		if card.rank = best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 4 then
			break;
		endif;
	endforeach;
	
	// to complete the 5-card hand we need the highest remaining card
	foreach card in cards do
		if card.rank <> best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 5 then
			break;
		endif;
	endforeach;

	return true;
epilog
	delete counts;
	delete cards;
end;
}
isHighCard
{
isHighCard(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	high	: Card;
	low		: Card;
	cards	: CardsByHighFaceMKD;
	counts	: IntegerArray;
	best	: Integer;
begin
	create cards transient;
	foreach card in pool do
		cards.add(card);
	endforeach;
	
	high := cards.first;
	low	 := cards.last;
	
	if low.rank = 1 then
		best := 1;
	else
		best := high.rank;
	endif;
	
	if best = 1 then
		foreach card in cards reversed do
			if card.rank = 1 then
				bestHand.add(card);
			else
				break;
			endif;
		endforeach;
	endif;
	
	// to complete the 5-card hand we need the highest remaining cards
	foreach card in cards do
		if card.rank <> best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 5 then
			break;
		endif;
	endforeach;

	// there has to be a high card, we just had to determine the best hand
	return true;
epilog
	delete counts;
	delete cards;
end;
}
isHouse
{
isHouse(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	counts	: IntegerArray;
	i		: Integer;
	current	: Integer;
	roof	: Integer;
	over	: Integer;
	roofcnt	: Integer;
	overcnt	: Integer;
begin
	create counts transient;
	counts[13] := null;

	foreach card in pool do
		current := counts[card.rank];
		counts[card.rank] := current + 1;
	endforeach;
	
	// set aces first since they're the highest
	if counts[1] = 3 then
		roof := 1;
	elseif counts[1] = 2 then
		over := 1;
	endif;
	
	foreach i in 2 to 13 reversed do
		current := counts[i];
		
		// this needs to account for 2x 3 of a kind being possible
		// but we still need the best 5 cards
		if current = 3 and roof = null then
			roof := i;
		elseif current >= 2 and over = null then
			over := i;
		endif;
		
		if roof <> null and over <> null then
			break;
		endif;
	endforeach;
	
	if roof = null or over = null then
		return false;
	endif;
	
	foreach card in pool do
		if card.rank = roof and roofcnt < 3 then
			bestHand.add(card);
			roofcnt := roofcnt + 1;
		endif;
		
		if card.rank = over and overcnt < 2 then
			bestHand.add(card);
			overcnt := overcnt + 1;
		endif;
	endforeach;
	
	return true;
epilog
	delete counts;
end;
}
isPair
{
isPair(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	cards	: CardsByHighFaceMKD;
	counts	: IntegerArray;
	i		: Integer;
	current	: Integer;
	best	: Integer;
begin
	create counts transient;
	counts[13] := null;

	foreach card in pool do
		current := counts[card.rank];
		counts[card.rank] := current + 1;
	endforeach;
	
	if counts[1] = 2 then
		best := 1;
	else
		foreach i in 2 to 13 reversed do
			current := counts[i];
			if current = 2 then
				best := i;
				break;
			endif;
		endforeach;
	endif;
	
	if best = null then
		return false;
	endif;
	
	create cards transient;
	foreach card in pool do
		cards.add(card);
	endforeach;

	foreach card in cards do
		if card.rank = best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 2 then
			break;
		endif;
	endforeach;
	
	// to complete the 5-card hand we need the highest remaining cards
	foreach card in cards do
		if card.rank <> best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 5 then
			break;
		endif;
	endforeach;

	return true;
epilog
	delete counts;
	delete cards;
end;
}
isStraight
{
isStraight(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card 	: Card;
	prev	: Card;
	first	: Card;
	last	: Card;
	poll	: Integer;
	cards 	: CardsByHighFaceMKD;
	prop	: CardArray; // proposed best cards
begin
	create cards transient;
	foreach card in pool do
		cards.add(card);
	endforeach;
	
	create prop transient;

	foreach card in cards reversed do
		if prev = null then
			// first card, start the run
			first := card;
			poll := 1;
			prop.add(card);
		else
			if card.rank = prev.rank then
				// dupes don't end the run but don't progress it either
			elseif card.rank = prev.rank + 1 then
				// basic case, current progresses the run
				poll := poll + 1;
				prop.add(card);
			else
				if poll < 5 then
					// failed, reset run
					poll := 1;
					prop.clear;
					prop.add(card);
				else
					// run ended but we already made a straight
					break;
				endif;
			endif;
		endif;
		prev := card;
		last := card;
	endforeach;
	
	if last.rank = 13 and first.rank = 1 then
		// ace follows king, progress the straight
		poll := poll + 1;
		prop.add(first);
	endif;
	
	if poll >= 5 then
		foreach card in prop reversed do
			bestHand.add(card);
			if bestHand.size() = 5 then
				break;
			endif;
		endforeach;
		
		return true;
	endif;
	
	return false;
epilog
	delete cards;
	delete prop;
end;
}
isStraightFlush
{
isStraightFlush(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	cardMKD	: CardsByHighFaceMKD;
	props 	: CardArray;
	propf 	: CardArray;
begin
	create props transient;
	if isStraight(pool, props) then
		if isFlush(pool, propf) then
			create cardMKD transient;
			foreach card in props do
				cardMKD.tryAdd(card);
			endforeach;
			
			foreach card in propf do
				cardMKD.tryAdd(card);
			endforeach;
			
			if cardMKD.size() = 5 then
				foreach card in cardMKD do
					bestHand.add(card);
				endforeach;
				
				return true;
			endif;
		endif;
	endif;
	
	return false;
epilog
	delete props;
	delete propf;
	delete cardMKD;
end;
}
isThree
{
isThree(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	cards	: CardsByHighFaceMKD;
	counts	: IntegerArray;
	i		: Integer;
	current	: Integer;
	best	: Integer;
begin
	create counts transient;
	counts[13] := null;

	foreach card in pool do
		current := counts[card.rank];
		counts[card.rank] := current + 1;
	endforeach;
	
	if counts[1] = 3 then
		best := 1;
	else
		foreach i in 2 to 13 reversed do
			current := counts[i];
			if current = 3 then
				best := i;
				break;
			endif;
		endforeach;
	endif;
	
	if best = 0 then
		return false;
	endif;
	
	create cards transient;
	foreach card in pool do
		cards.add(card);
	endforeach;

	foreach card in pool do
		if card.rank = best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 3 then
			break;
		endif;
	endforeach;
	
	// to complete the 5-card hand we need the highest remaining cards
	foreach card in cards do
		if card.rank <> best then
			bestHand.add(card);
		endif;
		if bestHand.size() = 5 then
			break;
		endif;
	endforeach;

	return true;
epilog
	delete counts;
	delete cards;
end;
}
isTwoPair
{
isTwoPair(pool : CardArray; bestHand : CardArray io) : Boolean typeMethod;

vars
	card	: Card;
	cards	: CardsByHighFaceMKD;
	counts	: IntegerArray;
	i		: Integer;
	current	: Integer;
	first	: Integer;
	second	: Integer;
begin
	create counts transient;
	counts[13] := null;

	foreach card in pool do
		current := counts[card.rank];
		counts[card.rank] := current + 1;
	endforeach;
	
	if counts[1] = 2 then
		first := 1;
	endif;
	
	foreach i in 2 to 13 reversed do
		current := counts[i];
		if current = 2 and first = null then
			first := i;
		elseif current = 2 and second = null then
			second := i;
		endif;
		
		if current <> null and second <> null then
			break;
		endif;
	endforeach;
	
	if first = null or second = null then
		return false;
	endif;
	
	create cards transient;
	foreach card in pool do
		cards.add(card);
	endforeach;

	foreach card in cards do
		if card.rank = first or card.rank = second then
			bestHand.add(card);
		endif;
		if bestHand.size() = 4 then
			break;
		endif;
	endforeach;
	
	// to complete the 5-card hand we need the highest remaining card
	foreach card in cards do
		if card.rank <> first or card.rank <> second then
			bestHand.add(card);
		endif;
		if bestHand.size() = 5 then
			break;
		endif;
	endforeach;

	return true;
epilog
	delete counts;
	delete cards;
end;
}
zBestFlush
{
zBestFlush(suit : Character; pool : CardArray; bestHand : CardArray io) protected, typeMethod;

vars
	card		: Card;
	cardsMKD 	: CardsByHighFaceMKD;
	poll		: Integer;
	iter		: Iterator;
begin
	create cardsMKD transient;
	foreach card in pool where card.suit = suit do
		cardsMKD.add(card);
	endforeach;
	
	iter := cardsMKD.createIterator();
	while poll < 5 do
		iter.next(card);
		bestHand.add(card);
		poll := poll + 1;
	endwhile;
epilog
	delete iter;
	delete cardsMKD;
end;
}
zCountSuit
{
zCountSuit(pool : CardArray; c, d, h, s : Integer io) typeMethod, protected;

vars
	card : Card;
begin
	foreach card in pool where card.suit = Card.Clubs do
		c := c + 1;
	endforeach;
	
	foreach card in pool where card.suit = Card.Diamonds do
		d := d + 1;
	endforeach;
	
	foreach card in pool where card.suit = Card.Hearts do
		h := h + 1;
	endforeach;
	
	foreach card in pool where card.suit = Card.Spades do
		s := s + 1;
	endforeach;
end;
}
zRank
{
zRank(card : Card) : Integer protected, typeMethod;

begin
	if card.rank = 1 then
		return 14;
	endif;
	
	return card.rank;
end;
}
	)
	PlayerHand (
	jadeMethodSources
create
{
create(p : Player; cards : CardArray; value_ : Integer) updating;

begin
	self.player := p;
	cards.copy(self.best);
	self.value := value_;
end;
}
	)
	JadeScript (
	jadeMethodSources
clearAllGames
{
clearAllGames();

vars

begin
	beginTransaction;
	Player.instances.purge;
	Felt.instances.purge;
	commitTransaction;
end;
}
	)
	RouteBase (
	jadeMethodSources
execute
{
execute() : Integer updating;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the IOrbRoute interface 
	*/

vars

begin

	return null;
end;
}
render
{
render(executeResult : Integer) : Binary;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the IOrbRoute interface 
	*/

vars

begin

	return null;
end;
}
	)
	BetRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	player : Player;
begin
	if Orb@sessionData(player) then
		beginTransaction;
		player.placeBet(self.betAmount);
		commitTransaction;
	endif;

	return inheritMethod();
end;
}
	)
	DealRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	felt : Felt;
begin
	felt := Felt.firstInstance;
	
	if felt = null then
		//beginTransaction;
		//delete felt;
		//Player.instances.purge;
		//commitTransaction;
	else
		beginTransaction;
		felt.muck;
		commitTransaction;
	
		beginTransaction;
		felt.dealHoleCards;
		commitTransaction;
		
		beginTransaction;
		felt.dealFlop;
		commitTransaction;
		
		beginTransaction;
		felt.dealTurnOrRiver;
		commitTransaction;
		
		beginTransaction;
		felt.dealTurnOrRiver;
		commitTransaction;
		
		beginTransaction;
		felt.updateObjectEdition(felt);
		commitTransaction;
	endif;

	return inheritMethod();
end;
}
	)
	FoldRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	felt : Felt;
begin
	felt := Felt.firstInstance;
	
	felt.foldCurrentPlayer();

	return inheritMethod();
end;
}
	)
	GameRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	player : Player;
begin
	Orb@sessionData(player);

	beginTransaction;

	if self.gameid <> null then
		self.theFelt := app.controller.allFeltById[self.gameid.asUuid()];
	else
		create self.theFelt persistent;
		self.theFelt.setHost(player.username);
	endif;

	self.theFelt.sit(player);
	
	commitTransaction;
	
	return inheritMethod();
end;
}
render
{
render(executeResult: Integer): Binary;

vars

begin
	return Orb@bind("game", self.theFelt);
end;
}
	)
	JoinRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars

begin
	return Orb@bind("join", app.controller);
end;
}
	)
	LiveTableRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars

begin
	return Orb@liveUpdate(Felt.firstInstance, "gametable");
end;
}
	)
	MainRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	felt 	: Felt;
	player	: Player;
begin
	felt := Felt.firstInstance;
	if felt = null then
		beginTransaction;
		create felt persistent;
		commitTransaction;
	endif;
	
	if not Orb@sessionData(player) then
		beginTransaction;
		player := felt.trySeatNewPlayer();
		commitTransaction;
		
		if player <> null then
			Orb@sessionStart(player, 120, 120);
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
	return Orb@bind("layout", Felt.firstInstance);
end;
}
	)
	LiveFeltRoute (
	jadeMethodSources
render
{
render(executeResult: Integer): Binary;

vars

begin
	return Orb@liveUpdate(Felt.firstInstance, "felt");
end;
}
	)
	MakeGameRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	p1, p2, p3 : Player;
	realplayer : Player;
begin
	beginTransaction;
	Felt.instances.purge;
	commitTransaction;

	beginTransaction;
	create self.theFelt persistent;
	commitTransaction;
	
	beginTransaction;
	p1 := create Player("Alice") persistent;
	p2 := create Player("Bob") persistent;
	p3 := create Player("Mallory") persistent;
	self.theFelt.sit(p1);
	self.theFelt.sit(p2);
	self.theFelt.sit(p3);
	commitTransaction;
	
	beginTransaction;
	realplayer := create Player(self.username) persistent;
	self.theFelt.sit(realplayer);
	commitTransaction;
	
	return inheritMethod();
end;
}
render
{
render(executeResult: Integer): Binary;

begin
	return Orb@bind("game", self.theFelt);
end;
}
	)
	NextHandRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars

begin
	Felt.firstInstance.sendMsg("progressNewRound");
	Felt.firstInstance.sendMsg("progressDeal");
	
	return 0;
end;
}
	)
	SignInRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	player : Player;
begin
	beginTransaction;
	player := create Player(self.username) persistent;
	commitTransaction;
	
	Orb@sessionStart(player, 120, 120);

	return inheritMethod();
end;
}
render
{
render(executeResult: Integer): Binary;

begin
	return Orb@bind("join", app.controller);
end;
}
	)
	StartGameRoute (
	jadeMethodSources
execute
{
execute(): Integer updating;

vars
	player : Player;
begin
	write "start game route";

	if Orb@sessionData(player) then
		write "starting";
		player.startGame;
	endif;

	return inheritMethod();
end;
}
	)
