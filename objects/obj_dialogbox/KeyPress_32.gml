var _len = string_length(dialogues[current_dialogue].line);

// format first dialogue string to fit to max width (with stringwrap script)
dialogues[current_dialogue].line = string_wrap(dialogues[current_dialogue].line, text_width);

// if current printing char is not yet at end of string, skip to end of string
if (char_current < _len)
	char_current = _len;
else // whole string is already displayed
{
    current_dialogue++; // move to next dialogue
	
    if (current_dialogue > last_dialogue) // END OF DIALOGUE ARRAY
		instance_destroy(); 
    else
    {
        // format new string 
		dialogues[current_dialogue].line = string_wrap(dialogues[current_dialogue].line, text_width);
        char_current = 0;
    }
}