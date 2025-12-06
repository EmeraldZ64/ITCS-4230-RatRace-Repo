#region Tutorial Dialogue
var TutorialDialogue = 
[
	new dialoguePage("Goose", "BRIEA! My favorite almost-mayor-slash-part-time-menace!"),
	new dialoguePage("Goose","Look at you out here makin' the whole burrow nervous with your political rizz."),
	new dialoguePage("Briea", "Goose! Please, I'm tryin' to look professional. Even got these official buttons."),
	new dialoguePage("Goose", "Gimme one! Lemme rep the brand! Gotta support my bestie-slash-former-partner-in-crime!", , ,
		[
		new dialogueChoice("Give Button", 4, GOOD, , function() {obj_qTutorial.giveButton("Goose")}),
		new dialogueChoice("Keep Button", 6)
		]),
	
	// 4 - gave button
	new dialoguePage("Briea", "Of course! How could I not give my day-one first dibs?"),
	new dialoguePage("Goose", "LETS GOOOOOOO! Ya'know, when you're the big shot mayor, I'm telling everyone I knew you when you were still in your chaos era.", true),
	
	// 6 - kept button
	new dialoguePage("Briea", "Sorry, Goose. I love you, but these buttons are limited edition. I gotta save 'em for rodents who don't know how great I am."),
	new dialoguePage("Goose", "Ugh... I'm heartbroken... Betrayed... Jk! Girl, you know I still love ya!", true)
]

var TutorialLater =
[
	new dialoguePage("Goose","Bestie! What's up, thought you'd be busy giving out your merch. You still got time to see your former crime buddy.", , ,
	[
		new dialogueChoice("Give Button", 1, GOOD, , function() {obj_qTutorial.giveButton("Goose")}),
		new dialogueChoice("Keep Button", 4)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","We didn't do any actual crimes, Goose... Other than our killer vibes."),
	new dialoguePage("Briea","Speaking of, I decided my day one deserved one of these pawsome buttons!"),
	new dialoguePage("Goose","AHHHH! I'm gonna eat this up, thanks, queen!", true),
	
	// 4 - did not give
	new dialoguePage("Briea","Goose! You're gonna get me in trouble, if you keep saying that..."),
	new dialoguePage("Goose","Damn girl, sorry. Forgot you're in your professional era or whateva.", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]

#endregion

#region Race Dialogue

var RaceQuestPrompt = 
[
	new dialoguePage("Goose","Yo Briea! Heard you've been making waves with this whole mayoral stuff."),
	new dialoguePage("Goose","I got a little side-quest for ya! If you're not too busy to help an old friend."),
	new dialoguePage("Briea","Depends! Is it something that's gonna get me in trouble like old times, or is it something mayoral?"),
	new dialoguePage("Goose","Hehe... Bit of both actually. See these sunflower seeds? Cheese Louise is waiting on them in the market, and she needs them real soon."),
	new dialoguePage("Briea","That doesn't sound like any trouble... What's the catch?"),
	new dialoguePage("Goose","Welllllll...  word is, a sneaky crow's been eyeballin' 'em. So you gotta do it quickly before it spots ya. So, you in?", , ,
	[
		new dialogueChoice("I'm in!", 6, ,"Race"),
		new dialogueChoice("Maybe Later", 8)
	]),
	
	// 6 - accept quest
	new dialoguePage("Briea","Say less! You know I love a bit of danger. This will be epic!"),
	new dialoguePage("Goose","Alright, Mayor Mouse, don't let that pep go to waste. Go show that bird who runs these roots. And don't get hurt, you know I ain't got seed insurance.", true),
	
	// 8 - do quest later
	new dialoguePage("Briea","Oooh, tempting... but I've got campaign chaos to handle first. Rain check?"),
	new dialoguePage("Goose","Fair enough, no rush. These seeds will be here if that damn crow don't snack 'em first...", true),
	
	// 10 - came back later
	new dialoguePage("Goose","Big B! You here to prove you still got it?", , ,
	[
		new dialogueChoice("I'm in!", 6, ,"Race"),
		new dialogueChoice("Maybe Later", 8)
	])
]

#endregion
if (obj_player.can_interact) and (interactible)
{
	if (global.currentQuest == "Tutorial")
	{
		if (!has_interacted)
		{
			display_dialogue(TutorialDialogue);
			has_interacted = true;
		}
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Filbert") != -1) // melvin was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else if (!global.onQuest) and (obj_qRace.state != QUESTSTATE.COMPLETE)
	{
		if (!foundQuest)
		{
			display_dialogue(RaceQuestPrompt);
			foundQuest = true;
		}
		else
			display_dialogue(RaceQuestPrompt, 10);
	}
}