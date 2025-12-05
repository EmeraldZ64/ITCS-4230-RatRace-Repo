if (interactible) and (!obj_player.state == PLAYERSTATES.INDIALOGUE) and (global.statueQuestUnlocked)
{
	//draw_set_halign(fa_middle);
	//draw_set_font(fnt_dialogue);
	//draw_set_colour(c_black);
	//draw_text(x, y - sprite_height + 150,  "E");
	
	if (!foundQuest) or (obj_qStatue.state == QUESTSTATE.NOTSTARTED)
		draw_sprite_ext(spr_questMarker, -1, x, y - sprite_height + 250, 0.5, 0.5, 0, c_white, 1)
	else
		draw_sprite_ext(spr_E, -1, x, y - sprite_height + 250, 0.5, 0.5, 0, c_white, 1)
}