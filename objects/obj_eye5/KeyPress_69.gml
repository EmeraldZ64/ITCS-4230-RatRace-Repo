var Dialogue = 
[
{speaker: "Eye 1", line: "That old man can never get his kids to behave"},
{speaker: "Eye 1", line: "and they're always up to some skullduggery too!"},
{speaker: "Eye 1", line: "They'll always respect old Uncle Cornealius, though..."},
{speaker: "Eye 1", line: "...probably because I give them candy and totally enable them, haha."},

]

var AltDialogue = 
[
{speaker: "Eye 1", line: "Hey, it's me, Uncle Cornealius"}
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(AltDialogue);
	has_interacted = true;
}