// Inherit the parent event
event_inherited();

// quest specific variables
buttons = 3;
introDone = false;
ds_list_NPCsWithButtons = ds_list_create();

// quest methods, can be called anywhere in code
giveButton = function(npc)
{
	buttons--;
	ds_list_add(ds_list_NPCsWithButtons, npc);
	
}