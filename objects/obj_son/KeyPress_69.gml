var Dialogue = 
[
{speaker: "Eye 1", line: "..."},
{speaker: "Eye 1", line: "Dad's looking for me?"},
{speaker: "Eye 1", line: "..."},
{speaker: "Eye 1", line: "Tell him he can suck butt."},
{speaker: "Eye 1", line: "...and I'll be home by 7."}

]

var AltDialogue = 
[
{speaker: "Eye 1", line: "Just 5 more minutes !!!!"}
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(AltDialogue);
	
}