// creates dialogue box object to display given dialogue, or overrides current dialogue box with new one
function display_dialogue(_dialogue)
{
	if(!instance_exists(obj_dialogbox))
	{
		//create dialog box if one doesn't exist and set dialogue
		var inst = instance_create_layer(0,0, "GUI", obj_dialogbox);
		inst.dialogues = _dialogue;
		inst.last_dialogue = array_length(_dialogue) - 1;
	}
	else
	{
		//destroy old box and create a new one
		instance_destroy(obj_dialogbox);
		
		var inst = instance_create_layer(0,0, "GUI", obj_dialogbox);
		inst.dialogues = _dialogue;
		inst.last_dialogue = array_length(_dialogue) - 1;
		
	}

}