var TutorialDialogue =
[
new dialoguePage("Filbert","Oh! erm... Miss Briea! Sorry... you erm startled me. I was, uh, just filling out this form... about losing a form... It's fine... Everything's fine."),
new dialoguePage("Briea","Aww, relax, Filbert, I'm not here to bust you on bad paperwork. I'm just handing out these swag buttons. Spreading the Brieagenda ya'know."),
new dialoguePage("Filbert","Erm... They look real nice, but... uh, it's just-"),
new dialoguePage("Filbert","I'm trying to stay neutral. Ya'know Ric Otto's got the experience, but you've got the energy. So much energy... Maybe too much? No! Just much...",
false, -1,
[
new dialogueChoice("Give Button", 4, GREAT, , obj_qTutorial.giveButton),
new dialogueChoice("Keep Button", 7)
]
),
// 4, great
new dialoguePage("Briea","I'll take that as a compliment... Here! Take one, it's not a commitment, just an epic accessory."),
new dialoguePage("Filbert","Oh... oh wow. Okay. I'll... I'll wear it on the inside of my vest! So no one thinks I'm biased."),
new dialoguePage("Filbert","But, um... thanks. Really. You're very... brave? Yes. That's the word", true),

// 7, neutral
new dialoguePage("Briea","I get it, King, you're in your mysterious era. I'll save 'em for someone who's not afraid of decisions."),
new dialoguePage("Filbert","Ah... yeah thats erm... Probably smart. Thanks for talking with me.", true),

new dialoguePage("Filbert","Good luck on the race..!"),
new dialoguePage("Filbert","(...Am I allowed to say that?)", true)
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
		else if (has_interacted)
		{
			display_dialogue(TutorialDialogue, array_length(TutorialDialogue) - 2);
		}
	}
}