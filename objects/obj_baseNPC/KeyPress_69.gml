var Dialogue = 
[
{speaker: "NPC", line: "This is test dialogue"},
{speaker: "NPC", line: "More test dialogue"},
{speaker: "PLAYER", line: "literally so much test dialogue perhaps too much test dialogue its all so much"}
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(Dialogue, array_length(Dialogue) - 1);
	has_interacted = true;
}