// Inherit the parent event
event_inherited();

numCorrect = 0;
numQuestions = 0;

gotCorrect = function()
{
	numCorrect++;
	numQuestions++;
}

gotWrong = function()
{
	numQuestions++;
}