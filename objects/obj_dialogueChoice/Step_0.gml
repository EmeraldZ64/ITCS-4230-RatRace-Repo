var indexLastChoice = array_length(dialogueChoices) - 1;

#region HANDLE PLAYER SELECTION INPUTS

if (keyboard_check_pressed(vk_down)) or (keyboard_check_pressed(ord("S")))
{
	if (choice_hovering == indexLastChoice)
		choice_hovering = 0;
	else
		choice_hovering++;
}

if (keyboard_check_pressed(vk_up)) or (keyboard_check_pressed(ord("W")))
{
	if (choice_hovering == 0)
		choice_hovering = indexLastChoice;
	else
		choice_hovering--;
}

#endregion

// choice was selected
if (keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(vk_space))
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
	
	#region HANDLE QUEST ACCEPTING AND QUEST FUNCTION CALLS
	
	// handle quest accepting if choice had a non-empty questAccept
	if (dialogueChoices[choice_hovering].questAccept != "") and (!global.onQuest)
	{
		// parse through all quests in global quest list
		for (var i = 0; i < ds_list_size(global.ds_allQuests); i++)
		{
			// check if quest name matches name passed with dialogueChoice
			if (global.ds_allQuests[| i].name == dialogueChoices[choice_hovering].questAccept)
			{
				global.ds_allQuests[| i].questObj.state = QUESTSTATE.INPROGRESS;
				global.onQuest = true;
				global.currentQuest = dialogueChoices[choice_hovering].questAccept;
				global.movesLeft--;
			}
		}
	}
	
	// handle calling quest function call if dialogueChoice had one
	if (dialogueChoices[choice_hovering].questDo != "")
	{
		method_call(dialogueChoices[choice_hovering].questDo);
	}
	#endregion
	
	// handle scoring
	percentBlue += dialogueChoices[choice_hovering].voteValue;
	
	instance_destroy(self);
}