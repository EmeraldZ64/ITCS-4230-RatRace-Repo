//*** MOVEMENT SYSTEM used Badwrong's Movement and Vectors Gamemaker Tutorial

image_xscale *= 2.5;
image_yscale *= 2.5;

move_speed = 0; // magnitude of vector, in effect

// MOVEMENT VALUES

move_speed_max = 12;
move_accel_vertical = 7;
move_accel = 10;
move_decel = 5;

// movement vector values
move_norm_x = 0;
move_norm_y = 0;

can_interact = true;

enum PLAYERSTATES
{
	ROAMING = 0,
	INDIALOGUE = 1
}

state = PLAYERSTATES.ROAMING;