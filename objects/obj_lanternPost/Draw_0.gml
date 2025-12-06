if (interactible) and (!obj_player.state == PLAYERSTATES.INDIALOGUE) and (global.currentQuest == "Lanterns") and (image_index != 1)
{
	//draw_set_halign(fa_middle);
	//draw_set_font(fnt_dialogue);
	//draw_set_colour(c_black);
	//draw_text(x - 40, y - sprite_height + 110,  "E");
	
	draw_sprite_ext(spr_E, -1, x - 40, y - sprite_height + 140, 0.5, 0.5, 0, c_white, 1)
}

draw_self()