// creates dialogue choice box and pass array of strings for choice lines

function display_choices(_choiceLines = [])
{
	var inst = instance_create_layer(0, 0, "GUI", obj_dialogueChoice)
	inst.dialogueChoices = _choiceLines;
}