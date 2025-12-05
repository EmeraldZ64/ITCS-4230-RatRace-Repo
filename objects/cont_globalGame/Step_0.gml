if (instance_exists(obj_player))
{
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
}

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
}