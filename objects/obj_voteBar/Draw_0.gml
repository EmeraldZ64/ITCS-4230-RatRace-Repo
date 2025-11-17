// draw background (outline and red)
draw_sprite_ext(spr_barRed, 0, bar_x, bar_y, 1, 1, 0, c_white, 1);
// blue overlays over red, shrinks to left based on percentage of blue votes in globalGame controller
draw_sprite_ext(spr_barBlue, 0, bar_x - (sprite_get_width(spr_barBlue) / 2), bar_y, percentBlue, 1, 0, c_white, 1);