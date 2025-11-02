var Dialogue = 
[
{speaker: "Angel", line: "..."},
{speaker: "Angel", line: "CHILD OF LIGHT"},
{speaker: "Angel", line: "DO MY EYES DECIEVE ME?"},
{speaker: "Angel", line: "..."},
{speaker: "Angel", line: "..."},
{speaker: "Angel", line: "YEAH, THEY DID"},
{speaker: "Angel", line: "LITTLE RASCAL RAN OFF WHEN I WASN'T LOOKING"},
{speaker: "Angel", line: "GO FIND THAT LITTLE STINKER"},
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