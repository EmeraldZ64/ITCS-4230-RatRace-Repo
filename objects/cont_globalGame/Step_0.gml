show_debug_message(percentBlue)

if (percentBlue > .60)
	show_debug_message("successfully checked blue");
	
if (percentBlue >= .60) and (obj_player.state != PLAYERSTATES.INDIALOGUE)
{
	room_goto_next();
}