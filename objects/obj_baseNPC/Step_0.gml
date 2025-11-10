if (object_exists(obj_player)) {	
	if (distance_to_object(obj_player) < interact_distance) and (obj_player.state != PLAYERSTATES.INDIALOGUE)
	{
		interactible = true;
	}
	else
	{
		interactible = false;
	}
}