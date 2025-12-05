var StatueQuestPrompt = 
[
	new dialoguePage("Briea","Oh my gouda gracious! Someone chomped the founder's face! Who does that?"),
	new dialoguePage("Emment","Back up, Miss Briea! This is official business. We got a cheese vandal on the loose and I ain't need none of your antics getting in my way."),
	new dialoguePage("Briea","Damn, relax, Officer...  I just wanna help protect our town's historical statue."),
	new dialoguePage("Emment","Hmph... Last thing I need is your 'help' while a nibbling bandit is on the loose."),
	new dialoguePage("Emment","Now, if Mr. Ric Otto were here, I'm sure he'd be able to actually help.", , ,
	[
		new dialogueChoice("Help Out", 6, , "Statue"),
		new dialogueChoice("Help Later", 5)
	]),
	// 5 - not accept yet
	new dialoguePage("Briea","(...I'll come back to this later.)", true),
	
	// 6 - quest accept
	new dialoguePage("Briea","Ouch, okay boomer... Listen, let me cook. I'll have this mystery solved faster than you can say sharp chedda."),
	new dialoguePage("Briea","Wait a minute... I recognize those molar marks!"),
	new dialoguePage("Briea","(Melvin the Mole Rat, you've been snackin' agin...)"),
	new dialoguePage("Emment","Well, please enlighten me...", , ,
	[
		new dialogueChoice("Blame Ric Otto", 10, , , obj_qStatue.decisionBad),
		new dialogueChoice("Tell the Truth", 13, , , obj_qStatue.decisionGood),
	]),
	
	// 10 - blame ric otto
	new dialoguePage("Briea","These are the distinct marks of a rat up to no good!"),
	new dialoguePage("Briea","Ya'know, Ric Otto was talking about changing history. Maybe he was taking it a little too literally. So not chill."),
	new dialoguePage("Emment","Yeah, right... Sounds like a convenient story, mouse. You sure you're not just stirring the fondue pot?", true),
	
	// 13 - tell the truth
	new dialoguePage("Briea","Well, I hate to say it, but it's def the work of Melvin. This bite is giving mole molar for sure."),
	new dialoguePage("Briea","You know poor guy can barely see and is always taking bites of random stuff."),
	new dialoguePage("Emment","Melvin, huh. Should have known... That dirt-sniffer is always up to no good."),
	new dialoguePage("Briea","See, I told you I would solve this cheesy mess! I'm sure I can count on your vote now that I made your job easier!"),
	new dialoguePage("Emment","Don't push it, mouse. But good work, I guess.", true)
]

if (obj_player.can_interact) and (interactible)
{
    if (!global.onQuest) and (global.statueQuestUnlocked)
	{
		if (!foundQuest)
		{
			display_dialogue(StatueQuestPrompt);
			foundQuest = true;
		}
		else
		{
			display_dialogue(StatueQuestPrompt, 4);
		}
	}
}