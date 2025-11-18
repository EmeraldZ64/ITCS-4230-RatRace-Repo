var Dialogue =
[
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	//has_interacted = true;
}
//else if (interactible) and (obj_player.can_interact) and (has_interacted)
//{
//	display_dialogue(Dialogue, array_length(Dialogue) - 1);
//	has_interacted = true;
//}