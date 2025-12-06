var RaceQuestEnd = 
[
	// won
	new dialoguePage("Briea","Fastest mouse in the burrow, baby! Somebody better frame this moment."),
	new dialoguePage("Cheese Louise","Well, would you look at that! Hello there, dear, are those for me?"),
	new dialoguePage("Briea","Yep! That pesky crow didn't stand a chance. Bet Ric Otto would break a hip tryin' to pull those moves! Here's your seeds!"),
	new dialoguePage("Cheese Louise","Oh, bless your heart, sweetie. I can tell you've been runnin' yourself ragged for this town. You remind me of me when I still had some spring in my step."),
	new dialoguePage("Briea","Aww, thanks! I'm just tryin' to make sure every rodent's got what they need before the big vote."),
	new dialoguePage("Cheese Louise","Well, sugar, you've certainly earned mine.", true),
	
	// 6 - lose
	new dialoguePage("Briea","Okay, in my defense... that crow was basically a flying missile."),
	new dialoguePage("Goose","Damn girl, that was lowkey embarrassing to watch.", true)
]

if (state == QUESTSTATE.INPROGRESS) and (obj_player.state != PLAYERSTATES.INDIALOGUE) and !(playerStartedRaceGame)
{
	room_goto(Room_Race);
	playerStartedRaceGame = true;
}
if (state != QUESTSTATE.COMPLETE)
{
	if (global.raceWin)
	{
		// set player position to market
		obj_player.x = 650;
		obj_player.y = 2930;
		
		display_dialogue(RaceQuestEnd);
		completeQuest();
		percentBlue += GREAT;
	}
	else if (global.raceLose)
	{
		// set player position to goose
		obj_player.x = 860;
		obj_player.y = 4550;
		
		display_dialogue(RaceQuestEnd, 6);
		completeQuest();
		percentBlue += BAD;
	}
}