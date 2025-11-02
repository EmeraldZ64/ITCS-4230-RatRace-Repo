var Dialogue = 
[
{speaker: "Eye 1", line: "*yawn*"},
{speaker: "Eye 1", line: "fun fact about me"},
{speaker: "Eye 1", line: "I'm not who you're looking for"},
{speaker: "Eye 1", line: "Did you know that?"},
{speaker: "Eye 1", line: "That's a hoot"},
{speaker: "Eye 1", line: "Anyways"},
{speaker: "Eye 1", line: "fun fact about eyes"},
{speaker: "Eye 1", line: "all babies are born with blue eyes"}
]

var AfterDialogue = 
[
{speaker: "Eye 1", line: "...yeah I'm not gonna lie I lied about that babies with blue eyes thing"},
{speaker: "Eye 1", line: "sorry"},
]
if (interactible) and (obj_player.can_interact) and (!has_interacted)
{
	display_dialogue(Dialogue);
	has_interacted = true;
}
else if (interactible) and (obj_player.can_interact) and (has_interacted)
{
	display_dialogue(AfterDialogue);
}