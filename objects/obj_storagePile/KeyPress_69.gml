var StorageQuestPrompt = 
[
	new dialoguePage("Briea","Oh my cheese! The town's storage is a mess..."),
	new dialoguePage("Briea","I'll go ahead and organize it so my fellow rodents can stay well fed through the winter. Plus, it's sure to help my polling!", , ,
	[
		new dialogueChoice("Sort Storage", , ,"Storage"),
		new dialogueChoice("Maybe Later")
	])
]

var StorageQuestDone = 
[
	new dialoguePage("Briea", "Job well done!", true),
	new dialoguePage("Briea", "What a mess...", true)
]

if (interactible) and (obj_player.can_interact)
{
	if (obj_qStorage.state == QUESTSTATE.COMPLETE)
	{
		if (obj_qStorage.playerWonStorage)
		{
			display_dialogue(StorageQuestDone);
		}
		else
		{
			display_dialogue(StorageQuestDone, 1);
		}
	}
	else if (!global.onQuest)
	{
		if !(has_interacted)
		{
			display_dialogue(StorageQuestPrompt);
			has_interacted = true;
		}
		else
		{
			display_dialogue(StorageQuestPrompt, 1);
		}
	}
}
