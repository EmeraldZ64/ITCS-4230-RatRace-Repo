var Dialogue =
[
	new dialoguePage("Ric Otto","Ah, if it isn't Miss Briea. Out trying to scrounge together some more votes before you lose?"),
	new dialoguePage("Briea","As a matter of fact, I am!- Wait! Not before I lose..."),
	new dialoguePage("Briea","I know the town will see I'm the change they need."),
	new dialoguePage("Briea","What about you? Taking a walk so your joints don’t give out mid-debate again?"),
	new dialoguePage("Ric Otto","My joints work just fine, I'll have you know. And I'm out trying to keep your squoke nonsense from infecting our beautiful town."),
	new dialoguePage("Briea","Squoke? You're just a hater, and I'll show you who is talking nonsense when they count the votes tomorrow and announce me mayor."),
	new dialoguePage("Ric Otto","We'll see...", true),
	
	new dialoguePage("Briea","(I can't get distracted..!)", true)
]

if (interactible) and (obj_player.can_interact)
{
	if (!has_interacted)
	{
		display_dialogue(Dialogue);
		has_interacted = true;
	}
	else if (has_interacted)
	{
		display_dialogue(Dialogue, array_length(Dialogue) - 1);
		has_interacted = true;
	}
}