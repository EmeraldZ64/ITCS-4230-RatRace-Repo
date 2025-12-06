#region Tutorial Dialogue
var TutorialDialogue = 
[
	new dialoguePage("Cheese Louise", "Well, hello there, darling. What do ya got there? Some fancy campaign trinkets?"),
	new dialoguePage("Briea","Yep! I'm passin' out some campaign buttons!"),
	new dialoguePage("Cheese Louise","Now ain't that just sweet. Ya'know, I still don't reckon I know which of y'all I'll be voting for."),
	new dialoguePage("Cheese Louise","You're sweet and all, but... Ric's got the experience.", , ,
	[
		new dialogueChoice("Give Button", 4, GREAT, , function() {obj_qTutorial.giveButton("Cheese Louise")}),
		new dialogueChoice("Keep Button", 6)
	]),
	// 4 - gave button
	new dialoguePage("Briea","What I lack in experience I make up for in character. I'd love for you to have one of my buttons, promise they're made with a whole lotta love."),
	new dialoguePage("Cheese Louise","Bless your heart... Sugar, I'll go 'head and sport your fancy button, since you're so sweet.", true),
	
	// 6 - did not give
	new dialoguePage("Briea","Ya'know what, maybe another time. I don't wanna pressure you if you're still thinking things over."),
	new dialoguePage("Cheese Louise","Well, that's awfully thoughtful of you, darling. If you ever wanna come by and discuss policy, you know where to find me.", true)
]

var TutorialLater =
[
	new dialoguePage("Cheese Louise","Well hey there sugar. You stopping by with your little campain doodads again? Or just coming to brighten up my day?", , ,
	[
		new dialogueChoice("Give Button", 1, GREAT, , function() {obj_qTutorial.giveButton("Cheese Louise")}),
		new dialogueChoice("Keep Button", 3)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","Well I figured I ought to give the sweetest rodent in town the coolest swag. Here, they’re made with love, good vibes, and maybe some glitter."),
	new dialoguePage("Cheese Louise","Aww well bless your sweet little heart. I’ll wear it with pride so every rodent knows the great things you’re doing.", true),
	
	// 3 - did not give
	new dialoguePage("Briea","Just stopping by! Ya know me gotta feel out the towns vibes."),
	new dialoguePage("Cheese Louise","Well, I'm still vibing somewhere in the middle, sweetie.", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]

#endregion

var MiniDialogue = 
[
	new dialoguePage("Cheese Louise","Well, hey there, darlin'! I was just thinkin' about you."),
	new dialoguePage("Cheese Louise","I heard the townsfolk have been chattin' 'bout that cheese tax again. You got any thoughts on it?", , ,
	[
		new dialogueChoice("I'm for it", 2, GOOD),
		new dialogueChoice("Should be higher", 5, BAD)
	]),
	
	// 2 - good
	new dialoguePage("Briea","Oh, do I! You know I'm for it; every crumb we save will go towards helping our community."),
	new dialoguePage("Briea","We need more funding for better burrows, food for the hungry, and, of course, a better festival."),
	new dialoguePage("Cheese Louise","Well, sweetie. I'm glad a rodent is finally showing some care for our community. It's not about takin', it's about making sure everyone gets a fair share.", true),
	
	// 5 - bad
	new dialoguePage("Briea","Oh, totally! But I've been thinking... we could raise it even higher!"),
	new dialoguePage("Briea","Like, double the cheese tax! Maybe even add a luxury cheese fee! You know, for the fancy bries and imported goudas."),
	new dialoguePage("Cheese Louise","Double it, sugar? Now that might be too ambitious for me.", true)
]

var DefaultDialogue = 
[
	new dialoguePage("Cheese Louise","Hey there, Sugar!", true),
	new dialoguePage("Cheese Louise","Thank you kindly for the delivery!", true)
]
if (obj_player.can_interact) and (interactible)
{
	if (global.currentQuest == "Tutorial")
	{
		if (!has_interacted)
		{
			display_dialogue(TutorialDialogue);
			has_interacted = true;
		}
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Cheese Louise") != -1) // melvin was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else if (global.raceWin)
	{
		display_dialogue(DefaultDialogue, 1);
	}
	else if (!global.onQuest) and (obj_qRace.state != QUESTSTATE.COMPLETE) and (!miniDialogueDone)
	{
		display_dialogue(MiniDialogue);
		miniDialogueDone = true;
	}
	else // default
	{
		display_dialogue(DefaultDialogue);
	}
}