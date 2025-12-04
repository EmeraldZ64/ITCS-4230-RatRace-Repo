#region Tutorial Dialogue
var TutorialDialogue = 
[
	new dialoguePage("Goose", "BRIEA! My favorite almost-mayor-slash-part-time-menace!"),
	new dialoguePage("Goose","Look at you out here makin' the whole burrow nervous with your political rizz."),
	new dialoguePage("Briea", "Goose! Please, I'm tryin' to look professional. Even got these official buttons."),
	new dialoguePage("Goose", "Gimme one! Lemme rep the brand! Gotta support my bestie-slash-former-partner-in-crime!", , ,
		[
		new dialogueChoice("Give Button", 4, GOOD, , obj_qTutorial.giveButton),
		new dialogueChoice("Keep Button", 6)
		]),
	
	// 4 - gave button
	new dialoguePage("Briea", "Of course! How could I not give my day-one first dibs?"),
	new dialoguePage("Goose", "LETS GOOOOOOO! Ya'know, when you're the big shot mayor, I'm telling everyone I knew you when you were still in your chaos era.", true),
	
	// 6 - kept button
	new dialoguePage("Briea", "Sorry, Goose. I love you, but these buttons are limited edition. I gotta save 'em for rodents who don't know how great I am."),
	new dialoguePage("Goose", "Ugh... I'm heartbroken... Betrayed... Jk! Girl, you know I still love ya!", true)
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
		else if (has_interacted)
		{
			display_dialogue(TutorialDialogue, array_length(TutorialDialogue) - 1);
		}
	}
}