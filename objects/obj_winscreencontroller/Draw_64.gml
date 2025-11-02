// obj_win_screen_controller - Draw GUI Event
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_dialogue); // Replace with your font asset
draw_set_color(c_white);

draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 50, "YOU WIN! Press enter to restart");