var zeroOrOneDialogue = 
[
new dialoguePage("Whiskerby", "How are you going to run this town if you don't even know how this town got here?"),
new dialoguePage("Briea", "I guess I lowkey should have paid more attention in history class...", true)
]

var twoOrThreeDialogue =
[
new dialoguePage("Whiskerby", "Well... You didn't do terribly, but didn't do great either. Maybe study a little more so the town knows you mean business."),
new dialoguePage("Briea", "Bet. I'll be in my knowledge era. Big brain vibes,  ya'know?", true)
]

var fourOrFiveDialogue =
[
new dialoguePage("Whiskerby", "Wow, I'm impressed. I'll be happy to vote for you now that I know you are more than just a pretty face."),
new dialoguePage("Briea", "You know I ate that up. Glad I could help assure you I was the right rodent for the job.", true)
]

if (numQuestions = 5) and (obj_player.state != PLAYERSTATES.INDIALOGUE) and (state != QUESTSTATE.COMPLETE)
{
	if (numCorrect < 2)
		display_dialogue(zeroOrOneDialogue);
	else if (numCorrect < 4)
		display_dialogue(twoOrThreeDialogue);
	else if (numCorrect < 6)
		display_dialogue(fourOrFiveDialogue);

	completeQuest();
}

show_debug_message("numCorrect: {0}", numCorrect)
show_debug_message("numQuestions: {0}", numQuestions)