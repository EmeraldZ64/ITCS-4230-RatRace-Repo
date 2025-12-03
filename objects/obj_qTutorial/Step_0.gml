var IntroDialogue =
[
	new dialoguePage("Briea", "..!"),
	new dialoguePage("Briea", "The election is any day now, and the polls are super close."),
	new dialoguePage("Briea", "I should hand out these pins!"),
	new dialoguePage("Briea", "Every rodent knows - free knick-knacks are the best way to get votes!", , ,
	[ 
		new dialogueChoice("Let's do it!", , ,"Tutorial")
	])
]

if (!introDone)
{
	display_dialogue(IntroDialogue);
	introDone = true;
}

//show_debug_message(buttons);
//show_debug_message(state);