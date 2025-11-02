var Dialogue = 
[
{speaker: "Eye 1", line: "They call me the evil red eye"},
{speaker: "Eye 1", line: "it sucks man"},
{speaker: "Eye 1", line: "I'm LITERALLY such a nice guy and the femeyes never give me a chance"},
{speaker: "Eye 1", line: "..."},
{speaker: "Eye 1", line: "have you heard of Jordan Peyeterson?"}
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