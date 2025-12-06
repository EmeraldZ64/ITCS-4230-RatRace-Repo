globalvar percentBlue; // globalvar is deprecated please change to global. when not a lazybones
global.movesLeft = 5;

// GLOBAL VARIABLES FOR RACE QUEST
global.raceWin = false;
global.raceLose = false;
global.atMarket = false;

// GLOBAL VARIABLES FOR STORAGE QUEST
global.playerWonStorage = false;
global.playerFinishedStorage = false;

// GLOBAL VARIABLES FOR SNEAK QUEST
global.playerWonSneak = false;
global.playerFinishedSneak = false;

// GLOBAL VARIABLES FOR STATUE QUEST
global.statueQuestUnlocked = false;

global.quizQuestUnlocked = false;

global.gameStarted = false;

percentBlue = .40;

// define values for dialogue scores
#macro AWFUL -.05
#macro BAD -.02
#macro EHH -.01
#macro NEUTRAL 1 - 1 // 0 is a constant can't use blehhh
#macro OKAY .01
#macro GOOD .02
#macro GREAT .05

window_set_size( 1920, 1080 );