function quest(_name, _questObj) constructor
{
	state = QUESTSTATE.NOTSTARTED; //move ts to base quest object
	
	name = _name;
	questObj = _questObj; //probably useless
}

enum QUESTSTATE
{
	NOTSTARTED = 0,
	INPROGRESS = 1,
	COMPLETE = 2
}