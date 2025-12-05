#region Tutorial Dialogue
var TutorialDialogue =
[
new dialoguePage("Melvin", "Well, if it isn't my friend Briea. What brings you down to my humble dirt palace?"),
new dialoguePage("Briea", "Well, you see, I'm giving out these epic campaign buttons!"),
new dialoguePage("Melvin", "I don't need a button for you to know you got my vote."),
new dialoguePage("Melvin", "If you got a crumb of cheese, I'll be happy to take it off your paws, though. A shiny button wouldn't be too bad either, I guess.",
, , 
[
new dialogueChoice("Give Button", 4, GOOD, , function() {obj_qTutorial.giveButton("Melvin")}),
new dialogueChoice("Keep Button", 6)
]
),
// 4 - gave button
new dialoguePage("Briea","Sorry, Melvin, no cheese today. But here's a button, I know I've got your vote, but let your fellow rodents know too."),
new dialoguePage("Melvin","Of course, raincheck on that cheese though.", true),

// 6 - did not give
new dialoguePage("Briea","Ahh, Melvin, you know I'd love to, but I gotta save these for rodents still sittin' on the fence. Gotta min-max my clout, y'know..."),
new dialoguePage("Melvin","That's okay, just don't forget about me when you become the big shot mayor.", true)
]

var TutorialLater = 
[
	new dialoguePage("Melvin","Back so soon? Please tell me you've come with some gifts... preferably cheese.", , ,
	[
		new dialogueChoice("Give Button", 1, GOOD, , function() {obj_qTutorial.giveButton("Melvin")}),
		new dialogueChoice("Keep Button", 3)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","Still no cheese I fear. But would a super cool button be gouda?"),
	new dialoguePage("Melvin","Can I eat it? No... Thank's anyway Briea, still want some cheese though...", true),
	
	// 3 - did not give
	new dialoguePage("Briea","Sorry Melvin-  I ain't got anything for you right now."),
	new dialoguePage("Melvin","Awww...", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]
#endregion

#region Sneak Quest Dialogue
var SneakQuestPrompt =
[
	new dialoguePage("Melvin","Hey! Briea! 'A better burrow for all,' that's your slogan, right kid?"),
	new dialoguePage("Briea","I'm not a kid... But yep, that's my slogan! How can I help you?"),
	new dialoguePage("Melvin","You can probably tell, but I have not a crumb of cheese to my tail..."),
	new dialoguePage("Melvin","...but Barron has hoards and hoards of cheese they will never in their life be able to use!"),
	new dialoguePage("Melvin","If you could even get a crumb off of them, I would believe in your cause for sure.", , ,
	[
		new dialogueChoice("Stealing is bad", 5, BAD, , obj_melvin.deniedQuest),
		new dialogueChoice("I'll help", 7, ,"Sneak"),
		new dialogueChoice("Think on it", 9),
	]),
	
	// 5 - denied quest
	new dialoguePage("Briea","I don't gnaw... Stealing is wrong. But when I get voted in, I'll pass a Cheese Distribution Act and you'll be set."),
	new dialoguePage("Melvin","If you get voted in...", true),
	
	// 7 - accept quest
	new dialoguePage("Briea","You're right, they do have more than their fair share. I'm sure they won't miss a few crumbs. I won't let you down!"),
	new dialoguePage("Melvin","Good to see some rodents finally standing for what they say they believe in.", true),
	
	// 9 - maybe later
	new dialoguePage("Briea","Hmmm, I'll have to think about it."),
	new dialoguePage("Melvin","Don't think for too long... I might have to chew something new to sustain myself.", true),
	
	// 11 - returned
	new dialoguePage("Melvin","Hey, you came back! Does that mean you'll help me?", , ,
	[
		new dialogueChoice("Stealing is bad", 5, BAD, , obj_melvin.deniedQuest),
		new dialogueChoice("I'll help", 7, ,"Sneak"),
		new dialogueChoice("Think on it", 9),
	]),
	
	// 12 - after denial
	new dialoguePage("Melvin","Hey Briea...", true)
]

var QuestSneakWon = 
[
	new dialoguePage("Briea","See! I told you I wouldn't let you down! I doubt they'll ever notice it's missing either."),
	new dialoguePage("Melvin","Wow! You actually stuck to your word. You definitely have my vote!", true)
]
#endregion

var DefaultDialogue =
[
new dialoguePage("Melvin", "Hey Briea!")
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
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Melvin") != -1) // melvin was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else if (global.currentQuest == "Sneak") and (global.playerWonSneak)
	{
		display_dialogue(QuestSneakWon);
		obj_qSneak.gaveMelvinCheese = true;
	}
	else if (!global.onQuest) and (obj_qSneak.state != QUESTSTATE.COMPLETE)
	{
		if (!foundQuest)
		{
			display_dialogue(SneakQuestPrompt);
			foundQuest = true;
		}
		else
		{
			display_dialogue(SneakQuestPrompt, 11);
		}
	}
	else // not on quest
	{
		if (deniedMelvin)
			display_dialogue(SneakQuestPrompt, 12);
		else
			display_dialogue(DefaultDialogue);
	}
}