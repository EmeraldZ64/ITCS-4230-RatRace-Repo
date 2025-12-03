var TutorialDialogue =
[
new dialoguePage("Melvin", "Well, if it isn't my friend Briea. What brings you down to my humble dirt palace?"),
new dialoguePage("Briea", "Well, you see, I'm giving out these epic campaign buttons!"),
new dialoguePage("Melvin", "I don't need a button for you to know you got my vote."),
new dialoguePage("Melvin", "If you got a crumb of cheese, I'll be happy to take it off your paws, though. A shiny button wouldn't be too bad either, I guess.",
, , 
[
new dialogueChoice("Give Button", 4, GREAT),
new dialogueChoice("Keep Button", 6)
]
),
// line 4, good
new dialoguePage("Briea","Sorry, Melvin, no cheese today. But here's a button, I know I've got your vote, but let your fellow rodents know too."),
new dialoguePage("Melvin","Of course, raincheck on that cheese though.", true),

// line 6, neutral
new dialoguePage("Briea","Ahh, Melvin, you know I'd love to, but I gotta save these for rodents still sittin' on the fence. Gotta min-max my clout, y'know..."),
new dialoguePage("Melvin","That's okay, just don't forget about me when you become the big shot mayor.", true),

new dialoguePage("Melvin","Go get 'em, Briea!", true)
]

var Dialogue =
[
new dialoguePage("Melvin", "Hey Briea!")
]

show_debug_message(global.currentQuest);

if (obj_player.can_interact)
{
	if (global.currentQuest == "Tutorial")
	{
		if (interactible) and (!has_interacted)
		{
			display_dialogue(TutorialDialogue);
			has_interacted = true;
		}
		else if (interactible) and (obj_player.can_interact) and (has_interacted)
		{
			display_dialogue(TutorialDialogue, array_length(TutorialDialogue) - 1);
		}
	}
	else
	{
		display_dialogue(Dialogue);
	}
}