var TellMJPrompt = 
[
	new dialoguePage("Briea","Done!"),
	new dialoguePage("Briea","Not to self-glaze, but I ate that up!"),
	new dialoguePage("Briea","I should tell Monty Jack.")
]

if (state != QUESTSTATE.COMPLETE)
{
	if (numLanterns == 5)
		lanternsFinished = true;
	
	if (lanternsFinished) and (obj_player.state != PLAYERSTATES.INDIALOGUE) and (!hasPromptedTellMJ)
	{
		display_dialogue(TellMJPrompt);
		hasPromptedTellMJ = true;
	}
	
	if (hasToldMJ) and (obj_player.state != PLAYERSTATES.INDIALOGUE)
	{
		completeQuest();
		percentBlue += GOOD;
	}
}

show_debug_message("Lanterns Done: {0}", numLanterns);
show_debug_message("State: {0}", state);