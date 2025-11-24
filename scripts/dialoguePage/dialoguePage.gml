// constructor and definition function for the struct dialoguePage to be used in the NPC dialogue arrays

/// @function			dialoguePage(_speaker, _line, _isEndingLine, _skipToLine, _choiceLines)
/// @description		constructor for dialoguePage to define a new line of dialogue
/// @param {string}		_speaker	The line to put in the namecard
/// @param {string}		_line		The line to put in the dialogue box
/// @param {bool}		_isEndingLine	Tell the dialogue box to end after this line
/// @param {real}		_skipToLine		The index of the dialogue array to skip to after this line (-1 for none)
/// @param {Array}		_choiceLines	An array of dialogueChoice structs to choose from at the end of this line
function dialoguePage(_speaker, _line, _isEndingLine = false, _skipToLine = -1, _choiceLines = "Empty") constructor
{
	speaker = _speaker;
	line = _line;
	isEndingLine = _isEndingLine;
	skipToLine = _skipToLine;
	choiceLines = _choiceLines;
}