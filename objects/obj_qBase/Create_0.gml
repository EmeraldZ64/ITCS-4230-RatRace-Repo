// create quest struct and pass to allQuest list
ds_list_add(global.ds_allQuests, new quest(questName, self));
state = QUESTSTATE.NOTSTARTED;

enum QUESTSTATE
{
	NOTSTARTED = 0,
	INPROGRESS = 1,
	COMPLETE = 2
}