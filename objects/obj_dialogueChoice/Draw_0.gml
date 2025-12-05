draw_set_font(fnt_dialogue);
draw_set_halign(fa_left);

draw_sprite_ext(spr_choiceBox, 0, text_x, text_y, 2.4, array_length(dialogueChoices) , 0, c_white, 1);

// draw text of dialogue choices for each choice
for (i = 0; i < array_length(dialogueChoices); i++)
{
	yoffset = i * choice_yoffset;
	draw_text(text_x, text_y + yoffset, dialogueChoices[i].text);
}

// draw selection arrow at hovered choice
draw_text(text_x - 100, text_y + (choice_yoffset * choice_hovering), ">");

// draw a cheese icon if this choice will accept a quest
if (dialogueChoices[choice_hovering].questAccept != "")
{
	draw_sprite_ext(spr_iconCheese, -1, text_x - 100, text_y + (choice_yoffset * choice_hovering) + 50, 0.5, 0.5, 0, c_white, 1)
}
