dialogues = [];

current_dialogue = 0; // iterator across dialogue array
last_dialogue = array_length(dialogues) - 1; // index of last text in dialogue array

// text format stuff
text_width = 500; // max width before text wrap in dialogue box
text_x = 32; // x and y to start drawing text from
text_y = 32;

char_current = 1; // iterator across text[text_current] string
char_speed = 0.25; // how much to iterate by per draw event

// format dialogue string to fit to max width (with stringwrap script)
// dialogues[current_dialogue].line = string_wrap(dialogues[current_dialogue].line, text_width);