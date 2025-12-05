// Inherit the parent event
event_inherited();

foundQuest = false;
deniedMelvin = false;

deniedQuest = function()
{
	deniedMelvin = true;
	obj_qSneak.state = QUESTSTATE.COMPLETE;
}