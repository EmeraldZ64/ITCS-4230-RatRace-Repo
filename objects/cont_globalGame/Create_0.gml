globalvar percentBlue;
globalvar movesLeft;

percentBlue = .50;

// define values for dialogue scores
#macro AWFUL -.05
#macro BAD -.02
#macro NEUTRAL 1 - 1 // 0 is a constant can't use blehhh
#macro GOOD .02
#macro GREAT .05

instance_create_layer(0, 0, "GUI", obj_voteBar);