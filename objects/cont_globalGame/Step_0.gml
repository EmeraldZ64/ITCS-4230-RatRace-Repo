if (instance_exists(obj_player))
{
	if (room != Room_Town)
	{
		layer_set_visible("GUI", false);
		obj_player.visible = false;
		obj_voteBar.visible = false;
		obj_itemWidget.visible = false;
	}
	else
	{
		layer_set_visible("GUI", true);
		obj_player.visible = true;
		obj_voteBar.visible = true;
		obj_itemWidget.visible = true;
	}
}