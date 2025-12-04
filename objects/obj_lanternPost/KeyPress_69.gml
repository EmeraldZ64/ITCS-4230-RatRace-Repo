//var PlaceLanternPrompt =
//[
//	new dialoguePage("Briea", "Clocked one!", , ,
//	[
//		new dialogueChoice("Place Lantern", , , , obj_qLanterns.placeLantern)
//	])
//]
var PlacedLantern = 
[
	new dialoguePage("Briea", "Clocked one!")
]

//if (global.currentQuest != "Lanterns")
//	onLanternsQuest = false;
//else
//	onLanternsQuest = true;


if (interactible) and (obj_player.can_interact) and !(has_interacted) and (global.currentQuest == "Lanterns")
{
	obj_qLanterns.placeLantern();
	display_dialogue(PlacedLantern);
	image_index = 1;
	
	interactible = false;
	has_interacted = true;
}
