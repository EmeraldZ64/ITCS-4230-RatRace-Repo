// Inherit the parent event
event_inherited();

numLanterns = 0;
lanternsFinished = false;
hasPromptedTellMJ = false;
hasToldMJ = false;

placeLantern = function()
{
	numLanterns++;
}

tellMontyJack = function()
{
	hasToldMJ = true;
}