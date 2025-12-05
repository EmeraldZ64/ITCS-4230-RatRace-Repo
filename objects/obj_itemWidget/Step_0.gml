if (global.currentQuest == "Tutorial")
{
	icon_to_draw = spr_iconPin;
	num_of_icons = obj_qTutorial.buttons;
	scale = 1;
	xoffset = 200;
	rotation = 0;
}
else if (global.currentQuest == "Lanterns")
{
	icon_to_draw = spr_iconLantern;
	num_of_icons = 5 - obj_qLanterns.numLanterns;
	scale = 1.5;
	xoffset = 160;
	rotation = -25;
}
else if (!global.onQuest)
{
	icon_to_draw = spr_iconCheese;
	num_of_icons = global.movesLeft;
	scale = 0.85;
	xoffset = 200;
	rotation = 0;
}