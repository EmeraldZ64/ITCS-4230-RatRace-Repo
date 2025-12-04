var CompletedStorage = 
[
	new dialoguePage("Briea", "There! All finished! Not all heroes wear capes; some organize acorns.", true),
	new dialoguePage("Briea", "I may have failed to organize our food, but at least the chaos is aesthetic.")
]

if (state == QUESTSTATE.INPROGRESS) and (obj_player.state != PLAYERSTATES.INDIALOGUE) and !(playerStartedStorageGame)
{
	room_goto(Room_Organize);
	playerStartedStorageGame = true;
}

if (state != QUESTSTATE.COMPLETE) and (global.playerFinishedStorage)
{
	if (global.playerWonStorage)
	{
		display_dialogue(CompletedStorage);
		completeQuest();
		percentBlue += GOOD;
	}
	else // lost storage game
	{
		display_dialogue(CompletedStorage, 1);
		completeQuest();
		percentBlue -= BAD;
	}
}

//show_debug_message("playerWonStorage: {0}", global.playerWonStorage);
//show_debug_message("Storage State: {0}", state);