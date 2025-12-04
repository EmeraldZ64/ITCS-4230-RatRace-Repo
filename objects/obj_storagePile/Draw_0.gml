if (interactible) and (!obj_player.state == PLAYERSTATES.INDIALOGUE) and (!global.onQuest)
{
	draw_set_halign(fa_middle);
	draw_set_font(fnt_dialogue);
	draw_set_colour(c_black);
	draw_text(x, y - sprite_height - 50,  "E");
}

draw_self()