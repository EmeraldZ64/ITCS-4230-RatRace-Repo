var Dialogue =
[
	new dialoguePage("npc","accept my quest cro", false, -1,
	[
		new dialogueChoice("accept", -1, NEUTRAL, "Tutorial") // starts quest "Tutorial"
	]),
	new dialoguePage("npc","quest accepted bro", true)
]

var AfterAcceptDialogue = 
[
	new dialoguePage("npc","gimme the button", false, -1,
	[
		new dialogueChoice("give button", 1, GOOD, , obj_qBase.giveButton), // calls method in quest obj
		new dialogueChoice("nah", 2, BAD)
	]),
	new dialoguePage("npc","u gave button", true),

	new dialoguePage("npc","u did not give", true)
]

if (interactible) and (obj_player.can_interact) and (obj_qTutorial.state == QUESTSTATE.NOTSTARTED)
{
	display_dialogue(Dialogue);
}
else if (interactible) and (obj_player.can_interact) and (obj_qTutorial.state == QUESTSTATE.INPROGRESS)
{
	display_dialogue(AfterAcceptDialogue);
}