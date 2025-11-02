// Inherit the parent event
event_inherited();

if (global.gameWon) and (obj_player.state != PLAYERSTATES.INDIALOGUE)
{
	room_goto(rm_winscreen);
}