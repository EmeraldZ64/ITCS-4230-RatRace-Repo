var SignDialogue = 
[
	new dialoguePage("Sign","'PLACARDS OF JARLSBERG'", , image_index),
	new dialoguePage("Sign","\"Our founder, Jarlsberg, discovered this valley after tripping over a cheese wheel, and it rolled to this very spot. He declared it a sign of good fortune and started development.\"", true),
	new dialoguePage("Sign","\"27 years after the town's founding, two rival families, the Mozza's and the Rella's finally made peace over a wheel of Gouda, to show goodwill.\"", true),
	new dialoguePage("Sign","\"The Battle of the Crows in '35 lasted 3 weeks and only ended when our town offered 20 full sunflowers. Tensions still remain with the sky fiends.\"", true),
	new dialoguePage("Sign","\"Our founder Jarlsberg originally wanted a Monarcheese, but once his son was in power he developed the squeak-toral system we use today.\"", true),
	new dialoguePage("Sign","\"Every year on the day before the summer solstice, we celebrate with the festival of Jarlsberg.\"", true)
]

if (obj_player.can_interact) and (interactible)
{
	display_dialogue(SignDialogue);
}