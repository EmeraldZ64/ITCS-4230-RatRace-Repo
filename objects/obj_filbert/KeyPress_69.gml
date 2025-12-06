#region Tutorial Dialogue
var TutorialDialogue =
[
new dialoguePage("Filbert","Oh! erm... Miss Briea! Sorry... you erm startled me. I was, uh, just filling out this form... about losing a form... It's fine... Everything's fine."),
new dialoguePage("Briea","Aww, relax, Filbert, I'm not here to bust you on bad paperwork. I'm just handing out these swag buttons. Spreading the Brieagenda ya'know."),
new dialoguePage("Filbert","Erm... They look real nice, but... uh, it's just-"),
new dialoguePage("Filbert","I'm trying to stay neutral. Ya'know Ric Otto's got the experience, but you've got the energy. So much energy... Maybe too much? No! Just much...",
false, -1,
[
new dialogueChoice("Give Button", 4, GOOD, , function() {obj_qTutorial.giveButton("Filbert")}),
new dialogueChoice("Keep Button", 7)
]
),
// 4, great
new dialoguePage("Briea","I'll take that as a compliment... Here! Take one, it's not a commitment, just an epic accessory."),
new dialoguePage("Filbert","Oh... oh wow. Okay. I'll... I'll wear it on the inside of my vest! So no one thinks I'm biased."),
new dialoguePage("Filbert","But, um... thanks. Really. You're very... brave? Yes. That's the word.", true),

// 7, neutral
new dialoguePage("Briea","I get it, King, you're in your mysterious era. I'll save 'em for someone who's not afraid of decisions."),
new dialoguePage("Filbert","Ah... yeah thats erm... Probably smart. Thanks for talking with me.", true)
]

var TutorialLater = 
[
	new dialoguePage("Filbert","Oh! Hello... again... Urm, did... did you need something else? I'm... err, happy to help. Hehe.", , ,
	[
		new dialogueChoice("Give Button", 1, GOOD, , function() {obj_qTutorial.giveButton("Filbert")}),
		new dialogueChoice("Keep Button", 4)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","How about you help me show off my swag merch!"),
	new dialoguePage("Filbert","Oh! Well... I erm still don't want anyone to think I'm biased... But I did offer to help..."),
	new dialoguePage("Filbert","...oh man. I um, guess I'll take it. Thanks...", true),
	
	// 4 - did not give
	new dialoguePage("Briea","No thanks, Filbert. Just stopping by."),
	new dialoguePage("Filbert","Ah! Well, that's... awfully kind of you, Miss Briea. I mean, stopping by. Hehe, don't get many visitors."),
	new dialoguePage("Filbert","Other than Emment... He's real nice too. Hehe...", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]
#endregion

var DefaultDialogue = 
[
	new dialoguePage("Filbert","Oh! Uh- hi..."),
	new dialoguePage("Filbert","Um, don't hehe mind me... Just uh existing over here... hehe, I'll shut up now before I say something stupid...")
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
	else // not on quest
	{
		display_dialogue(DefaultDialogue);
	}
}