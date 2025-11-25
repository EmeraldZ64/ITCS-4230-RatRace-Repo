globalvar percentBlue; // globalvar is deprecated please change to global. when not a lazybones
globalvar movesLeft;
globalvar raceWin;
globalvar raceLose;
globalvar atMarket;

percentBlue = .50;
atMarket = false;

// define values for dialogue scores
#macro AWFUL -.05
#macro BAD -.02
#macro NEUTRAL 1 - 1 // 0 is a constant can't use blehhh
#macro GOOD .02
#macro GREAT .05

instance_create_layer(0, 0, "GUI", obj_voteBar);