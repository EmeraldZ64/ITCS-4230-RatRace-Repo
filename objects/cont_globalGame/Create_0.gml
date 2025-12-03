globalvar percentBlue; // globalvar is deprecated please change to global. when not a lazybones
globalvar movesLeft;

// MOVE THESE TO RACE's QUEST OBJECT WHEN POSSIBLE
// make them local variables of the quest object
globalvar raceWin;
globalvar raceLose;
globalvar atMarket;

global.gameStarted = false;

percentBlue = .40;
atMarket = false;

// define values for dialogue scores
#macro AWFUL -.05
#macro BAD -.02
#macro NEUTRAL 1 - 1 // 0 is a constant can't use blehhh
#macro GOOD .02
#macro GREAT .05

window_set_size( 1920, 1080 );