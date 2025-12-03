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

var EndQuest = 
[
	new dialoguePage("Briea", "Only one more day until the election, and it's a tight race."),
	new dialoguePage("Briea", "It's time for me to burrow in and show the town I'm the right rodent for the job!")
]
if (state != QUESTSTATE.COMPLETE)
{
	if (!introDone)
	{
		display_dialogue(IntroDialogue);
		introDone = true;
	}

	if (buttons < 1) and (obj_player.state == PLAYERSTATES.ROAMING)
	{
		display_dialogue(EndQuest)
		state = QUESTSTATE.COMPLETE;
		global.currentQuest = "";
		global.onQuest = false;
	}
}

show_debug_message("Buttons: {0}", buttons);
show_debug_message("State: {0}", state);