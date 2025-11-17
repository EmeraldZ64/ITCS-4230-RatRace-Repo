var indexLastChoice = array_length(dialogueChoices) - 1;

#region HANDLE PLAYER SELECTION INPUTS

if keyboard_check_pressed(vk_down)
{
	if (choice_hovering == indexLastChoice)
		choice_hovering = 0;
	else
		choice_hovering++;
}

if keyboard_check_pressed(vk_up)
{
	if (choice_hovering == 0)
		choice_hovering = indexLastChoice;
	else
		choice_hovering--;
}

#endregion

// choice was selected
if keyboard_check_pressed(vk_enter)
{	
	#region HANDLE DIALOGUE NEXT PAGE
	if (dialogueChoices[choice_hovering].skipToLine != -1)
	{
		var _skipTo = dialogueChoices[choice_hovering].skipToLine;
	
		with(obj_dialogueBox)
		{
			chosen_skipTo = _skipTo;
			player_readyForNext = true;
		}
	}
	else // skipToLine had default -1 (meaning don't skip)
	{
		with(obj_dialogueBox)
		{
			chosen_skipTo = current_dialogue + 1;
			player_readyForNext = true;
		}
	}
	#endregion
	
	// handle scoring
	percentBlue += dialogueChoices[choice_hovering].voteValue;
	
	instance_destroy(self);
}