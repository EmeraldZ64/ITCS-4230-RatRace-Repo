// create quest struct and pass to allQuest list
ds_list_add(global.ds_allQuests, new quest(questName, self));

// quest specific variables
buttons = 3;

// quest methods, can be called anywhere in code
giveButton = function()
{
	buttons--;
}