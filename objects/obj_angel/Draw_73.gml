draw_self()

if (interactible) and (!obj_player.state == PLAYERSTATES.INDIALOGUE)
{
	draw_set_halign(fa_middle);
	draw_set_font(fnt_dialogue);
	draw_text(x, y - 128,  "E");
}