draw_set_font(fnt_dialogue);
draw_set_halign(fa_left);

// draw text of dialogue choices for each choice
for (i = 0; i < array_length(dialogueChoices); i++)
{
	yoffset = i * choice_yoffset;
	draw_text(text_x, text_y + yoffset, dialogueChoices[i].text);
}

// draw selection arrow at hovered choice
draw_text(text_x - 50, text_y + (choice_yoffset * choice_hovering), ">");