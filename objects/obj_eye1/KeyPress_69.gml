var Dialogue = 
[
{speaker: "Eye 1", line: "hey"},
{speaker: "Eye 1", line: "my dad told me not to talk to children of light"},
{speaker: "Eye 1", line: "get outta here stinky!!!"}
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

