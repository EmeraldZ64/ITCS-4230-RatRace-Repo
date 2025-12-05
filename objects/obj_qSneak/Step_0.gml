var FinishedSneakGame = 
[
	new dialoguePage("Briea","Period! It's giving Robin Hood. Time to give this to Melvin!", true),
	
	new dialoguePage("Whiskerby","HEY! Are you stealing my cheese!? I knew you were a no-good crumb-sniffer!"),
	new dialoguePage("Whiskerby","Wait until the townsfolk hear about this!"),
	new dialoguePage("Briea","I'm so cooked...", true)
]

if (state == QUESTSTATE.INPROGRESS) and (obj_player.state != PLAYERSTATES.INDIALOGUE) and !(playerStartedSneakGame)
{
	room_goto(Room_Sneak);
	playerStartedSneakGame = true;
}

if (state != QUESTSTATE.COMPLETE)
{
	if (gaveMelvinCheese)
	{
		completeQuest();
		percentBlue += GREAT;
	}
	else if (global.playerFinishedSneak) and (!waitingToTellMelvin)
	{
		if (global.playerWonSneak)
		{
			// teleport behind Barron's house
			obj_player.x = 2600;
			obj_player.y = 2800;

			display_dialogue(FinishedSneakGame);
			waitingToTellMelvin = true;
		}
		else // lost sneak game
		{
			// teleport in front of Barron
			obj_player.x = 2630;
			obj_player.y = 3250;
			
			display_dialogue(FinishedSneakGame, 1);
			completeQuest();
			percentBlue += AWFUL;
			obj_melvin.deniedMelvin = true;
		}
	}
}

//show_debug_message("playerWonSneak: {0}", global.playerWonSneak);
//show_debug_message("Sneak State: {0}", state);