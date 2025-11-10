// Draw setting stuff
draw_set_font(fnt_dialogue);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_set_colour(c_black);

// draw dialogue box first
draw_sprite_ext(spr_dialogueBox, 0, text_x, text_y, 2.5, 2.5, 0, c_white, 1);

// string length of current dialogue
var _len = string_length(dialogues[current_dialogue].line);

// iterate current char by char_speed
if (char_current < _len)
{
    char_current += char_speed;
}

// copy substring up to char_current index and display
var _str = string_copy(dialogues[current_dialogue].line, 1, char_current);

draw_text(text_x, text_y,  _str);
draw_text(namecard_offset_x, namecard_offset_y, dialogues[current_dialogue].speaker);