//var Dialogue = 
//[
//{speaker: "NPC", line: "This is test dialogue"},
//{speaker: "NPC", line: "More test dialogue"},
//{speaker: "PLAYER", line: "literally so much test dialogue perhaps too much test dialogue its all so much"}
//]

var NewCodeDialogue =
[
new dialoguePage("NPC", "this is the line"),
new dialoguePage("Player", "this is the player's line", false, ["Choice A", "Choice B"]),
new dialoguePage("Player", "this should appear", true),
new dialoguePage("Player", "this shouldn't appear first")
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(NewCodeDialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(NewCodeDialogue, array_length(NewCodeDialogue) - 1);
	has_interacted = true;
}