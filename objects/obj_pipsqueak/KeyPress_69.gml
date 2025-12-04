var Dialogue =
[
new dialoguePage("Briea","Hey kid, you'd be so slay to tell your parents to vote for me!"),
new dialoguePage("Pipsqueak", "fanum tax monday left me broken W rizz nickeh30 metal pipe falling"),
new dialoguePage("Briea", "Oh... does that mean you will?"),
new dialoguePage("Pipsqueak","Alpha i am a surgeon dog doin' level 600 gyatt sussy."),
new dialoguePage("Briea","Ya'know, I think I'm just gonna go..."),
new dialoguePage("Pipsqueak","busting it down ya cut g roblox grimace shake colleen ballinger rn", true),
new dialoguePage("Pipsqueak","67")
]

if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(Dialogue, array_length(Dialogue) - 1);
	has_interacted = true;
}