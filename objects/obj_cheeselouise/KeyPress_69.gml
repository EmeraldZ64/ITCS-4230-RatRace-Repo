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
}