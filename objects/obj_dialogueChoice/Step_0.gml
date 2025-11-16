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
	var _skipTo = dialogueChoices[choice_hovering].skipToLine;
	
	with(obj_dialogueBox)
	{
		chosen_skipTo = _skipTo;
		player_readyForNext = true;
	}
	
	instance_destroy(self);
}