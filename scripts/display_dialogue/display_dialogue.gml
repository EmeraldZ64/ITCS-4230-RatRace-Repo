// creates dialogue box object to display given dialogue, or overrides current dialogue box with new one
// OPTIONAL ARGUMENT: startingLine, integer of index to start dialogue display from
function display_dialogue(_dialogue, _startingLine = 0)
{
	obj_player.state = PLAYERSTATES.INDIALOGUE;
	
	if(!instance_exists(obj_dialogBox))
	{
		//create dialog box if one doesn't exist and set dialogue
		var inst = instance_create_layer(0,0, "GUI", obj_dialogBox);
		inst.dialogues = _dialogue;
		inst.last_dialogue = array_length(_dialogue) - 1;
		inst.current_dialogue = _startingLine;
		
		// pre-wrap first dialogue
		inst.dialogues[inst.current_dialogue].line = string_wrap(inst.dialogues[inst.current_dialogue].line, inst.text_width);
	}
	else // May Never Happen?
	{
		//destroy old box and create a new one
		instance_destroy(obj_dialogBox);
		
		var inst = instance_create_layer(0,0, "GUI", obj_dialogBox);
		inst.dialogues = _dialogue;
		inst.last_dialogue = array_length(_dialogue) - 1;
		inst.current_dialogue = _startingLine;
		
	}

}