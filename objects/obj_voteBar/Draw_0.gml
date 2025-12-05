draw_set_font(fnt_voteUI);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_colour(c_white);
// draw background (outline and red)
draw_sprite_ext(spr_barRed, 0, bar_x, bar_y, 1, 1, 0, c_white, 1);

// blue overlays over red, shrinks to left based on percentage of blue votes in globalGame controller
draw_sprite_ext(spr_barBlue, 0, bar_x - (sprite_get_width(spr_barBlue) / 2) + 4, bar_y, percentBlue, 1, 0, c_white, 1);

// display percentage in center
draw_text(bar_x, bar_y, string("{0}%", percentBlue * 100))