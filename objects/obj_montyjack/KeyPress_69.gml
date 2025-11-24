var Dialogue =
[
new dialoguePage("Monty Jack","If it isn't Briea. Out here spreading propaganda again?"),
new dialoguePage("Briea","Propaganda? Girl, please, Ric Otto's the one spreading lies and hate..."),
new dialoguePage("Briea","Anyways, I was just handing out these dope campaign buttons."),
new dialoguePage("Monty Jack","Well, feel free to skip me, I'd much rather sport Ric Otto's face."),
new dialoguePage("Monty Jack","He's a real rat of the rodents- Providing more than just big flashy promises with no results.",
false, -1,
[
new dialogueChoice("Give Button", 5, GOOD),
new dialogueChoice("Keep Button", 7, BAD)
]
),
// 5, good
new dialoguePage("Briea","Ya'know what... Here's one anyway, even haters deserve a lil drip."),
new dialoguePage("Monty Jack","Hmph... Fine, I'll take it. Only so I can ironically wear it after you lose!", true),

// 7, neutral
new dialoguePage("Briea","Fine. I'll save my swag for someone less lame."),
new dialoguePage("Monty Jack","Smart move, don't know who'd want that trash though...", true),

new dialoguePage("Briea", "Better spend my time on some more open minded people...", true)
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(Dialogue, array_length(Dialogue) - 1);
}