
// string_wrap: takes a given string (_text) and adds line breaks wherever it reaches specified (_width)
function string_wrap(_text, _width)
{
	var text_wrapped = "";
	var space = -1
	var char_pos = 1;
	
	// loop until end of _text
	while (char_pos < string_length(_text))
	{
		// if total text up until character position has overflowed given max width
		// and space between words was found (to not cut off a word midway through)
		if (string_width(string_copy(_text, 1, char_pos)) > _width) and (space != -1)
		{
			// append text before line break (followed by line break) to finalized text string
			text_wrapped += string_copy(_text, 1, space) + "\n";
			
			// remove text in string from before given line break, while loop will iterate through new start
			_text = string_copy(_text, space + 1, string_length(_text) - space);
			char_pos = 1;	
			space = -1;
		}
		
		// store char position of space when a space is found
		if (string_char_at(_text, char_pos) == " ")
			space = char_pos;
		
		char_pos++;
	}
	
	// append remaining underflow text into finalized string
	if (string_length(_text) > 0)
		text_wrapped += _text;
	
	return text_wrapped;
}