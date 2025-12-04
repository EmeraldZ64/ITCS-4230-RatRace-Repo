#region Tutorial Dialogue
var TutorialDialogue =
[
new dialoguePage("Monty Jack","If it isn't Briea. Out here spreading propaganda again?"),
new dialoguePage("Briea","Propaganda? Girl, please, Ric Otto's the one spreading lies and hate..."),
new dialoguePage("Briea","Anyways, I was just handing out these dope campaign buttons."),
new dialoguePage("Monty Jack","Well, feel free to skip me, I'd much rather sport Ric Otto's face."),
new dialoguePage("Monty Jack","He's a real rat of the rodents- Providing more than just big flashy promises with no results.",
false, -1,
[
new dialogueChoice("Give Button", 5, GOOD, , function(){obj_qTutorial.giveButton("Monty Jack")}),
new dialogueChoice("Keep Button", 7, BAD)
]
),
// 5, good
new dialoguePage("Briea","Ya'know what... Here's one anyway, even haters deserve a lil drip."),
new dialoguePage("Monty Jack","Hmph... Fine, I'll take it. Only so I can ironically wear it after you lose!", true),

// 7, neutral
new dialoguePage("Briea","Fine. I'll save my swag for someone less lame."),
new dialoguePage("Monty Jack","Smart move, don't know who'd want that trash, though...", true)
]

var TutorialLater = 
[
	new dialoguePage("Monty Jack","Ah, Briea is back. Care to share a word or two for my readers?", , ,
	[
		new dialogueChoice("Give Button", 1, GOOD, , function(){obj_qTutorial.giveButton("Monty Jack")}),
		new dialogueChoice("Keep Button", 4)
	]),
	
	new dialoguePage("Briea","How 'bout one of my buttons instead?"),
	new dialoguePage("Briea","You take it, and I promise when I win I'll give you an exclusive interview!"),
	new dialoguePage("Monty Jack","Hmmm, well I do love an exclusive. Don't expect me to wear it, though ~", true),
	
	new dialoguePage("Briea","How 'bout tell them I'm here to make a better burrow for every rodent!"),
	new dialoguePage("Monty Jack","That's it? I'll never sell a story that boring.", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]
#endregion

#region Lantern Quest Dialogue
var LanternQuestPrompt = 
[
	new dialoguePage("Briea","Woah! These are epic! They're for the festival of Jarlsberg, right?"),
	new dialoguePage("Monty Jack","Yeah... they took agesssss to make."),
	new dialoguePage("Monty Jack","Now I have to hang them around the square, but this was supposed to be done like, yesterday. Hehe..."),
	new dialoguePage("Briea","Oh! Okay..."),
	new dialoguePage("Monty Jack", "If only someone who was looking for rodents's approval could help me out...", , ,
	[
		new dialogueChoice("I'm down", 5, , "Lanterns"),
		new dialogueChoice("Maybe later", 8)
	]),
	// 5 - accept lanterns quest
	new dialoguePage("Briea", "I could hang them up for you!"),
	new dialoguePage("Monty Jack", "Really! Oh, well, that would be great! Here, place them anywhere around the square!"),
	new dialoguePage("Briea", "Lowkey, this should be pretty easy.", true),
	
	// 8 - don't accept quest
	new dialoguePage("Briea", "Uhm, I can maybe help. I'll come back later and let you know! You've already waited this long, a few more minutes won't hurt, right?"),
	new dialoguePage("Monty Jack", "Oh... Okay... I'll just be waiting here then... Wishing someone could help...", true),
	
	// 10 - returning to accept
	new dialoguePage("Monty Jack","Briea! Have you come to save me from my own mess? I'm sure I can write up a good headline that's sure to sway the votes of my readers if so!", , ,
	[
		new dialogueChoice("I'm down", 5, , "Lanterns"),
		new dialogueChoice("Maybe later", 8)
	])
]

var LanternQuestInProgress = 
[
	new dialoguePage("Briea", "I still have some lanterns to hang up...")
]

var LanternQuestDone = 
[
	new dialoguePage("Briea", "Hey! I set up all those lanterns for you. I gotta have hella aura now!"),
	new dialoguePage("Monty Jack", "Aura..?"),
	new dialoguePage("Monty Jack", "...Um, Anyway, thanks so much! You really saved my tail! I might consider voting for you now.")
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
		// npc was given a button
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Monty Jack") != -1)
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else if (global.currentQuest == "Lanterns")
	{
		if (!obj_qLanterns.lanternsFinished)
			display_dialogue(LanternQuestInProgress);
		else
		{
			display_dialogue(LanternQuestDone);
			obj_qLanterns.hasToldMJ = true;
		}
	}
	else if (!global.onQuest) and (obj_qLanterns.state != QUESTSTATE.COMPLETE)
	{
		if (!foundQuest)
		{
			display_dialogue(LanternQuestPrompt);
			foundQuest = true;
		}
		else
			display_dialogue(LanternQuestPrompt, 10);
	}
}