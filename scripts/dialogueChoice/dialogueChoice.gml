/// @function			dialogueChoice(_text, _skipToLine, _voteValue, _questAccept, _questDo)
///@description			constructor for dialogueChoice to define a new player choice for a dialoguePage
/// @param {string}		_text		string to display for choice selection box
/// @param {real}		_skipToLine	index of dialoguePage to skip to if this is chosen (-1 for none)
/// @param {real}		_voteValue	value to add to global vote score
/// @param {string}		_questAccept	name of quest (defined in quest object) to start if this line chosen
/// @param {function}	_questDo		the name of a function in quest object to execute if this line chosen

function dialogueChoice(_text, _skipToLine = -1, _voteValue = NEUTRAL, _questAccept = "", _questDo = "") constructor
{
	text = _text;
	skipToLine = _skipToLine;
	voteValue = _voteValue;
	questAccept = _questAccept;
	questDo = _questDo;
}
