var Dialogue =
[
new dialoguePage("NPC", "this is the line"),
new dialoguePage("Player", "the player will make a choice for this", false, -1,
[
new dialogueChoice("Dialogue Choice A", 2),
new dialogueChoice("Dialogue Choice B", 3)
]),
new dialoguePage("Player", "you chose 1", false, 4),
new dialoguePage("Player", "you chose 2", false, 4),

new dialoguePage("Player", "this should appear last", true),
new dialoguePage("Player", "secret dialogue")
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	//has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(Dialogue, array_length(Dialogue) - 1);
	has_interacted = true;
}