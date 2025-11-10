dialogues = [];

current_dialogue = 0; // iterator across dialogue array
last_dialogue = array_length(dialogues) - 1; // index of last text in dialogue array

// text format stuff
text_width = 700; // max width before text wrap in dialogue box
text_x = display_get_gui_width() / 2; // x and y to start drawing text from
text_y = display_get_gui_height() / 2 + 300;

namecard_offset_x = text_x - 150;
namecard_offset_y = text_y - 140;

char_current = 1; // iterator across text[text_current] string
char_speed = 0.5; // how much to iterate by per draw event

// format dialogue string to fit to max width (with stringwrap script)
// dialogues[current_dialogue].line = string_wrap(dialogues[current_dialogue].line, text_width);