// draw several icons 
for (i = 0; i < num_of_icons; i++)
{
	draw_sprite_ext(icon_to_draw, -1, corner_x - (i * xoffset), corner_y, scale, scale, rotation, c_white, 1);
}