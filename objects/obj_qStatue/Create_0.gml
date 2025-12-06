// Inherit the parent event
event_inherited();

gaveAnswer = false;
answerValue = 0;

decisionBad = function()
{
	gaveAnswer = true;
	answerValue = BAD;
}

decisionGood = function()
{
	gaveAnswer = true;
	answerValue = GOOD;
}