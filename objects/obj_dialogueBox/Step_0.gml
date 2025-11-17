var _len = string_length(dialogues[current_dialogue].line);
	
// if this dialogue is marked as a last line, set accordingly
if (dialogues[current_dialogue].isEndingLine)
{
	last_dialogue = current_dialogue;
}

if (player_readyForNext) // set by dialogue box once finished
{
	player_isChoosing = false;
}

#region PLAYER INPUT FOR SKIPPING TEXT TYPEWRITING AND SETTING DIALOGUE CHOICE IF NEEDED

// This will be skipped every frame if player_isChoosing is true
if ((keyboard_check_pressed(vk_space)) or (keyboard_check_pressed(ord("E"))) and (!dialogue_cooldown_on))
	and (!player_isChoosing)
{
	// DETERMINE WHAT E/ENTER DOES
	
	// if current printing char is not yet at end of string, skip to end of string
	if (char_current < _len)
		char_current = _len;
	else // whole string is already displayed
	{
		// if dialogue has choices
		if (dialogues[current_dialogue].choiceLines != "Empty")
		{
			display_choices(dialogues[current_dialogue].choiceLines);
			show_debug_message(dialogues[current_dialogue].choiceLines)
			player_isChoosing = true;
		}
		else // no choices to be had, continue to determining next line
			player_readyForNext = true;
		
	}
}

#endregion

if (player_readyForNext) and (!player_isChoosing)
{
	// dialoguePage has a declared line to skip to regardless of choices
	if (dialogues[current_dialogue].skipToLine != -1)
	{
		current_dialogue = dialogues[current_dialogue].skipToLine; // move to set page's next dialogue
	}
	// dialoguePage had dialogue choices that declared the next line
	else if (dialogues[current_dialogue].choiceLines != "Empty")
	{
		current_dialogue = chosen_skipTo; // move to set choice's next dialogue
	}
	// dialoguePage had no set choices
	else
	{
		current_dialogue++; // just move to next dialogue in array
	}
		
	// END OF DIALOGUE ARRAY
	if (current_dialogue > last_dialogue)
	{
		obj_player.state = PLAYERSTATES.ROAMING;
		instance_destroy();
	}
	else
	{
		// format next string 
		dialogues[current_dialogue].line = string_wrap(dialogues[current_dialogue].line, text_width);
			
		// reset variables
		player_isChoosing = false;
		player_readyForNext = false;
		chosen_skipTo = -1;
		char_current = 0;
	}
}