// constructor and definition function for the struct dialoguePage to be used in the NPC dialogue arrays

function dialoguePage(_speaker, _line, _isEndingLine = false, _choiceLines = []) constructor
{
	speaker = _speaker;
	line = _line;
	isEndingLine = _isEndingLine;
	choiceLines = _choiceLines;
}