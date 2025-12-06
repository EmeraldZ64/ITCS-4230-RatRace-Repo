if (interactible) and (!obj_player.state == PLAYERSTATES.INDIALOGUE) and (!global.onQuest)
{
	//draw_set_halign(fa_middle);
	//draw_set_font(fnt_dialogue);
	//draw_set_colour(c_black);
	//draw_text(x, y - sprite_height - 50,  "E");
	
	draw_sprite_ext(spr_E, -1, x, y - sprite_height - 50, 0.5, 0.5, 0, c_white, 1)
	
	if ((!foundQuest) or (obj_qStorage.state == QUESTSTATE.NOTSTARTED)) and (global.currentQuest != "Tutorial")
		draw_sprite_ext(spr_questMarker, -1, x - 20, y - sprite_height - 70, 0.25, 0.25, 0, c_white, 1)
}

draw_self()