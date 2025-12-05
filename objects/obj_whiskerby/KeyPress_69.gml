#region Tutorial Dialogue
var TutorialDialogue = 
[
	new dialoguePage("Whiskerby","Ah, Miss Briea, what brings you to my estate today?"),
	new dialoguePage("Briea","Heyyy, Baron Whiskerby! I'm just out here spreading good vibes and good policies."),
	new dialoguePage("Briea","Oh! Also, these super epic limited edition buttons!"),
	new dialoguePage("Whiskerby","Mmm. Yes, yes buttons, a quaint political tradition."),
	new dialoguePage("Whiskerby","Well, I'm conflicted on who I'll be supporting in this election. Neither of you is quite my style."),
	new dialoguePage("Whiskerby","But maybe this token of your campaign might... illuminate something in me.", , ,
	[
		new dialogueChoice("Give Button", 6, GREAT, , function() {obj_qTutorial.giveButton("Whiskerby")}),
		new dialogueChoice("Keep Button", 9)
	]),
	
	// 6 - gave button
	new dialoguePage("Briea","Totally get it! Here ya go! Trust the vibes are going to be great when you're supporting me!"),
	new dialoguePage("Whiskerby","My my... I must say it's not completely hideous, and surprisingly sturdy. Consider my interest in your campaign piqued."),
	new dialoguePage("Whiskerby","Good luck, Miss Briea", true),
	
	// 9 - did not give
	new dialoguePage("Briea","Ya know what I think I might hold off. Shiny buttons won't sway a rodent like you. You make decisions with your brain, not your coat."),
	new dialoguePage("Whiskerby","Hmm, how peculiar. Most candidates are lining up to trade trinkets for my approval, but I respect your restraint. Almost refreshing...", true)
]

var TutorialLater =
[
	new dialoguePage("Whiskerby","Back again Miss Briea, have you reconsidered your minimalist approach to campaign tokens?", , ,
	[
		new dialogueChoice("Give Button", 1, GREAT, , function() {obj_qTutorial.giveButton("Whiskerby")}),
		new dialogueChoice("Keep Button", 3)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","Yep! I figured you deserve some deluxe vibes! Here ya go."),
	new dialoguePage("Whiskerby","Well! A change of heart. And quite a tasteful trinket at that. I appreciate a candidate who can adapt when the moment calls for it.", true),
	
	// 3 - did not give
	new dialoguePage("Briea", "Nah, sorry Barron, but if I get your vote I want it to come from what I’m offering, not just my fancy trinkets."),
	new dialoguePage("Whiskerby","Hm. Stubborn, but I have to respect your principal. Good luck Miss Briea.", true)
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
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Whiskerby") != -1) // melvin was given a button
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