if (instance_exists(obj_player))
{
	// Ensure player is not visible in other rooms and UI widgets are visible in Town
	if (room != Room_Town)
	{
		//layer_set_visible("GUI", false);
		obj_player.visible = false;
		//obj_voteBar.visible = false;
		//obj_itemWidget.visible = false;
	}
	else
	{
		layer_set_visible("GUI", true);
		obj_player.visible = true;
		obj_voteBar.visible = true;
		obj_itemWidget.visible = true;
	}
	
	// Handle end state
	if (global.movesLeft < 1) and (obj_player.state != PLAYERSTATES.INDIALOGUE) and (!global.onQuest)
	{
		if (percentBlue > .50)
			room_goto(Room_Win)
		else
			room_goto(Room_Lose)
	}
}

// Unlock the Statue Quest when available
if (room == Room_Town)
{
	if (global.movesLeft < 3) and (obj_qStatue.state != QUESTSTATE.COMPLETE)
	{
		global.statueQuestUnlocked = true;
		obj_emment.x = 3000;
		obj_emment.y = 2400;
		obj_emment.depth = -obj_emment.y;
	}
	else
	{
		global.statueQuestUnlocked = false;
	}
	
	// Unlock the Quiz quest when available
	if (global.movesLeft < 2) and ((obj_melvin.deniedMelvin) or (global.playerWonSneak) or (obj_qSneak.state == QUESTSTATE.NOTSTARTED))
	{
		global.quizQuestUnlocked = true;
	}
	else
	{
		global.quizQuestUnlocked = false;
	}
}
