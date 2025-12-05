#region Tutorial Dialogue

var TutorialDialogue = 
[
	new dialoguePage("Emment","Miss Briea. What can I do for you? You ain't stirrin' up more trouble now, are you?"),
	new dialoguePage("Briea","Trouble? Me? Sir, please... those days are DONE. I'm squeaky clean, polished, and politically correct."),
	new dialoguePage("Briea","I'm just handin' out these cute lil' buttons."),
	new dialoguePage("Emment","Well, with all due respect, don't bother leavin' one with me."),
	new dialoguePage("Emment","I'm lookin' for a candidate who knows what they're doin'. Not a kid playin' make-believe with no clue how things really work in this town.", , ,
	[
		new dialogueChoice("Give Button", 5, GOOD, , function() {obj_qTutorial.giveButton("Emment")}),
		new dialogueChoice("Keep Button", 8)
	]),
	
	// 5 - gave button
	new dialoguePage("Briea","Oof, harsh words, man. But hey, I respect the honesty. Take one anyway, and I'll prove you wrong. Promise. Big promise vibes."),
	new dialoguePage("Emment","Hmph... You got guts, I'll give you that. Ambition too."),
	new dialoguePage("Emment","Just hope all that confidence doesn't end with you bitin' off more cheese than you can chew.", true),
	
	// 8 - did not give
	new dialoguePage("Briea","Yeah... I'm gettin' the vibe you'd sooner eat a rusty mousetrap than wear my button. So I'll save this one for someone who might actually smile at me."),
	new dialoguePage("Emment","Wise choice. You'll need thick fur in this line of work, Briea.", true)
]

var TutorialLater = 
[
	new dialoguePage("Emment","Miss Briea, back so soon? Not to cause trouble, I hope...", , ,
	[
		new dialogueChoice("Give Button", 1, GOOD, , function() {obj_qTutorial.giveButton("Emment")}),
		new dialogueChoice("Keep Button", 3)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","Aww, come on, sir, I told you my paws are clean now. Here, have a button, like a truce to prove I'm good to my word."),
	new dialoguePage("Emment","Hmph... fine, I'll take it. But I'm watching you like a crow watches crumbs.", true),
	
	// 3 - did not give
	new dialoguePage("Briea","No, no... I can see you're not in a chill mood, so I'mma just skedaddle."),
	new dialoguePage("Emment","Wise move, kid...", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]
#endregion

var DefaultDialogue = 
[
	new dialoguePage("Emment", "...")
]

if (obj_player.can_interact) and (interactible)
{
	if (global.currentQuest == "Tutorial")
	{
		if (!has_interacted)
		{
			display_dialogue(TutorialDialogue);
			has_interacted = true;
		}
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Emment") != -1) // melvin was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else // not on quest
	{
		display_dialogue(DefaultDialogue);
	}
}