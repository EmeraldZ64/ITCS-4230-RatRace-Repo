#region Tutorial Dialogue
var TutorialDialogue = 
[
	
]

var TutorialLater =
[
	
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]

#endregion

if (obj_player.can_interact) and (interactible)
{
	if (global.currentQuest == "Tutorial")
	{
		if (!has_interacted)
		{
			display_dialogue(TutorialDialogue);
			has_interacted = true;
		}
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Filbert") != -1) // melvin was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
}