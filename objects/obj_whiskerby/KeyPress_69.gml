#region Tutorial Dialogue
var TutorialDialogue = 
[
	new dialoguePage("Whiskerby","Ah, Miss Briea, what brings you to my estate today?"),
	new dialoguePage("Briea","Heyyy, Baron Whiskerby! I'm just out here spreading OKAY vibes and OKAY policies."),
	new dialoguePage("Briea","Oh! Also, these super epic limited edition buttons!"),
	new dialoguePage("Whiskerby","Mmm. Yes, yes buttons, a quaint political tradition."),
	new dialoguePage("Whiskerby","Well, I'm conflicted on who I'll be supporting in this election. Neither of you is quite my style."),
	new dialoguePage("Whiskerby","But maybe this token of your campaign might... illuminate something in me.", , ,
	[
		new dialogueChoice("Give Button", 6, OKAY, , function() {obj_qTutorial.giveButton("Whiskerby")}),
		new dialogueChoice("Keep Button", 9)
	]),
	
	// 6 - gave button
	new dialoguePage("Briea","Totally get it! Here ya go! Trust the vibes are going to be great when you're supporting me!"),
	new dialoguePage("Whiskerby","My my... I must say it's not completely hideous, and surprisingly sturdy. Consider my interest in your campaign piqued."),
	new dialoguePage("Whiskerby","Good luck, Miss Briea.", true),
	
	// 9 - did not give
	new dialoguePage("Briea","Ya know what I think I might hold off. Shiny buttons won't sway a rodent like you. You make decisions with your brain, not your coat."),
	new dialoguePage("Whiskerby","Hmm, how peculiar. Most candidates are lining up to trade trinkets for my approval, but I respect your restraint. Almost refreshing...", true)
]

var TutorialLater =
[
	new dialoguePage("Whiskerby","Back again Miss Briea, have you reconsidered your minimalist approach to campaign tokens?", , ,
	[
		new dialogueChoice("Give Button", 1, OKAY, , function() {obj_qTutorial.giveButton("Whiskerby")}),
		new dialogueChoice("Keep Button", 3)
	]),
	
	// 1 - gave button
	new dialoguePage("Briea","Yep! I figured you deserve some deluxe vibes! Here ya go."),
	new dialoguePage("Whiskerby","Well! A change of heart. And quite a tasteful trinket at that. I appreciate a candidate who can adapt when the moment calls for it.", true),
	
	// 3 - did not give
	new dialoguePage("Briea", "Nah, sorry Barron, but if I get your vote I want it to come from what I'm offering, not just my fancy trinkets."),
	new dialoguePage("Whiskerby","Hm. Stubborn, but I have to respect your principal. Good luck Miss Briea.", true)
]

var GaveAButton = 
[
	new dialoguePage("Briea","(I still have some buttons to give away...)")
]

#endregion

#region Quiz Quest Dialogue

var QuizQuest = 
[
	new dialoguePage("Whiskerby", "Miss Briea, I was thinking, how can I trust you to lead if I'm not sure you even know our town's rich history?"),
	new dialoguePage("Whiskerby", "If we are not aware of our past, we are doomed to repeat it."),
	new dialoguePage("Whiskerby","Would you care to prove yourself with a test? If you've spent any time in the town square, I'm sure this will be a brieze.",false, -1, 
	[
		new dialogueChoice("Bet!", 3, ,"Quiz"),
		new dialogueChoice("Maybe later...", 30)
	]),
	
	// 3, 4
	new dialoguePage("Briea", "Bet! I know our history like the back of my paw. I'll slay this test just watch!"),
	new dialoguePage("Whiskerby", "I like your confidence, let's see if it's not misguided. How did our founder find our great valley?", false, -1,
	[
		new dialogueChoice("Tripping over cheese",5,OKAY, ,obj_qQuiz.gotCorrect),
		new dialogueChoice("A witch prophesied it",6,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("A cat chase",7,EHH, ,obj_qQuiz.gotWrong)
	]),
	
	// 5, 6, 7
	new dialoguePage("Briea", "That's too easy, every rodent knows the story of him tripping over some fancy cheese and rolling into a perfect valley.", false, 8),
	new dialoguePage("Briea", "I'm pretty sure he found a witch who prophesied where he'd find the most perfect place to settle.", false, 9),
	new dialoguePage("Briea", "Didn't a feisty feline chase the poor guy here?",false, 9),
	
	// 8 - right
	new dialoguePage("Whiskerby","Impressive, that one was easy though, so how about something a little more hard. What cheese brought the rival families, Mozza and Rella together?",false, -1, 
	[
		new dialogueChoice("Mozzarella",10,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Gouda",11,OKAY, ,obj_qQuiz.gotCorrect),
		new dialogueChoice("Parmesean",12,EHH, ,obj_qQuiz.gotWrong),
	]),
	
	// 9 - wrong
	new dialoguePage("Whiskerby","Hmph. Not off to a great start. I thought every rodent knew the story of the cheese wheel leading our leader here. Hopefully, you'll know this: what cheese brought the rival families Mozza and Rella together?",false, -1, 
	[
		new dialogueChoice("Mozzarella",10,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Gouda",11,OKAY, ,obj_qQuiz.gotCorrect),
		new dialogueChoice("Parmesean",12,EHH, ,obj_qQuiz.gotWrong),
	]),
	
	// 10, 11, 12
	new dialoguePage("Briea", "They bonded over a ball of Mozzarella!",false, 14),
	new dialoguePage("Briea", "They became goouda friends over some Gouda!",false, 13),
	new dialoguePage("Briea", "They stopped causing harm with some Parmesan!",false, 14),
	
	// 13 - right
	new dialoguePage("Whiskerby","Wow, nice memory you've got. This one might trip you up, though. How long did the Battle of the Crows last?",false, -1, 
	[
		new dialogueChoice("3 days",15,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("3 weeks",16,OKAY, ,obj_qQuiz.gotCorrect),
		new dialogueChoice("3 years",17,EHH, ,obj_qQuiz.gotWrong)
	]),
	
	// 14 - wrong
	new dialoguePage("Whiskerby","OKAY guess, but no... It was gouda, everyone knows it possesses' the power to quell any quarrel. Now, how long did the Battle of the Crows last?",false, -1, 
	[
		new dialogueChoice("3 days",15,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("3 weeks",16,OKAY, ,obj_qQuiz.gotCorrect),
		new dialogueChoice("3 years",17,EHH, ,obj_qQuiz.gotWrong)
	]),
	
	// 15, 16, 17
	new dialoguePage("Briea", "We quickly squashed those pesky peckers; 3 days was all we needed!",false, 19),
	new dialoguePage("Briea", "A brutal battle, but we found peace after only 3 weeks.",false, 18),
	new dialoguePage("Briea", "Oh, I know we were dealing with the consequences of that battle for a while, so it had to be at least 3 years.",false, 19),
	
	// 18 - right
	new dialoguePage("Whiskerby","That's right! I'm impressed. Let's see if you can keep it up. Who set up our Squeack-toral voting system?",false, -1, 
	[
		new dialogueChoice("Our founder",20,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Founders Daughter",21,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Founders Son",22,OKAY, ,obj_qQuiz.gotCorrect)
	]),
	
	// 19 - wrong
	new dialoguePage("Whiskerby", "Not quite right... It was 3 weeks, you can still win my approval though. Who set up our Squeak-toral voting system?",false, -1, 
	[
		new dialogueChoice("Our founder",20,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Founders Daughter",21,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Founders Son",22,OKAY, ,obj_qQuiz.gotCorrect)
	]),
	
	// 20, 21, 22
		new dialoguePage("Briea", "Jarlsberg had that down since day one, I bet!", false, 24),
		new dialoguePage("Briea", "Jarlsberg's daughter was a queen, and she gave us the right to vote!",false, 24),
		new dialoguePage("Briea", "Jarlsberg's son ate down when he made our voting system!",false, 23),
	
	// 23 - right
	new dialoguePage("Whiskerby", "good job, you're almost done now. This one should be easy. When is the festival of Jarlsberg? Hopefully the summer heat hasn't cooked your brain.",
	false, -1, 
	[
		new dialogueChoice("Summer Solstice",25,OKAY, ,obj_qQuiz.gotCorrect),
		new dialogueChoice("Autumn Equinox",26,EHH, ,obj_qQuiz.gotWrong),
		new dialogueChoice("Winter Solstice",27,EHH, ,obj_qQuiz.gotWrong),
	]),
	
	// 24 - wrong
	new dialoguePage("Whiskerby", "Aren't you running for mayor? Disappointing you don't even know Jarlsberg's son is the one who's given you the right to run. This is your last chance for redemption. When is the festival of Jarlsberg?",
	false, -1, 
	[
	new dialogueChoice("Summer Solstice",25,OKAY, ,obj_qQuiz.gotCorrect),
	new dialogueChoice("Autumn Equinox",26,EHH, ,obj_qQuiz.gotWrong),
	new dialogueChoice("Winter Solstice",27,EHH, ,obj_qQuiz.gotWrong),
	]
	),
	
	// 25, 26, 27
	new dialoguePage("Briea", "Well, no cap, that's too easy, it's in a few days. Always a day before the Summer solstice.",false, 28),
	new dialoguePage("Briea", "Lowkey I'm pretty sure it's like a few days after the Autumn Equinox, right?",false, 29),
	new dialoguePage("Briea", "I'm pretty sure it happens during the Winter Solstice if I'm not wrong.",false, 28),
	
	// 28 - wrong
	new dialoguePage("Whiskerby", "Well, that one might have been too easy since it's so soon. But good job, that's all the questions I had.",true),
	// 29 - wrong
	new dialoguePage("Whiskerby", "What? It's literally in a few days... How did you get that one wrong?",true),
	
	//30 - quest later
	new dialoguePage("Briea", "Erm... Ya know, I could totally ace this right now, but I'm a bit busy. Could you actually give me a second, definitely not to go study the town square information signs."),
	new dialoguePage("Whiskerby", "You know where to find me.", true)
]

#endregion

var DefaultDialogue = 
[
	new dialoguePage("Whiskerby","Ah, Briea."),
	new dialoguePage("Whiskerby","You find me admiring my exquisite cheese collection, and of course reflecting on our town's illustrative history."),
	new dialoguePage("Whiskerby","If you wish to educate yourself, no better place to start than the placards in the town square.")
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
		else if (ds_list_find_index(obj_qTutorial.ds_list_NPCsWithButtons, "Whiskerby") != -1) // npc was given a button
		{
			was_given_button = true;
			display_dialogue(GaveAButton);
		}
		else if (!was_given_button)
		{
			display_dialogue(TutorialLater);
		}
	}
	else if (!global.onQuest) and (obj_qQuiz.state != QUESTSTATE.COMPLETE) and (global.quizQuestUnlocked)
	{
		if (!foundQuest)
		{
			display_dialogue(QuizQuest);
			foundQuest = true;
		}
		else
			display_dialogue(QuizQuest, 2);
	}
	else // not in quest
	{
		display_dialogue(DefaultDialogue);
	}
}