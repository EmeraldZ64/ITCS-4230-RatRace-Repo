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
}