#region Tutorial Dialogue
var TutorialDialogue =
[
new dialoguePage("Melvin", "Well, if it isn't my friend Briea. What brings you down to my humble dirt palace?"),
new dialoguePage("Briea", "Well, you see, I'm giving out these epic campaign buttons!"),
new dialoguePage("Melvin", "I don't need a button for you to know you got my vote."),
new dialoguePage("Melvin", "If you got a crumb of cheese, I'll be happy to take it off your paws, though. A shiny button wouldn't be too bad either, I guess.",
, , 
[
new dialogueChoice("Give Button", 4, GOOD, , function() {obj_qTutorial.giveButton("Melvin")}),
new dialogueChoice("Keep Button", 6)
]
),
// 4 - gave button
new dialoguePage("Briea","Sorry, Melvin, no cheese today. But here's a button, I know I've got your vote, but let your fellow rodents know too."),
new dialoguePage("Melvin","Of course, raincheck on that cheese though.", true),

// 6 - did not give
new dialoguePage("Briea","Ahh, Melvin, you know I'd love to, but I gotta save these for rodents still sittin' on the fence. Gotta min-max my clout, y'know..."),
new dialoguePage("Melvin","That's okay, just don't forget about me when you become the big shot mayor.", true)
]

var TutorialLater = 
[
	new dialoguePage("Melvin","Back so soon? Please tell me you've come with some gifts... preferably cheese.", , ,
	[
		new dialogueChoice("Give Button", 1, GOOD, , function() {obj_qTutorial.giveButton("Melvin")}),
		new dialogueChoice("Keep Button", 3)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","Still no cheese I fear. But would a super cool button be gouda?"),
	new dialoguePage("Melvin","Can I eat it? No... Thank's anyway Briea, still want some cheese though...", true),
	
	// 3 - did not give
	new dialoguePage("Briea","Sorry Melvin-  I ain't got anything for you right now."),
	new dialoguePage("Melvin","Awww...", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]
#endregion

var DefaultDialogue =
[
new dialoguePage("Melvin", "Hey Briea!")
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
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Melvin") != -1) // melvin was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else // not on quest
	{
		display_dialogue(DefaultDialogue);
	}
}