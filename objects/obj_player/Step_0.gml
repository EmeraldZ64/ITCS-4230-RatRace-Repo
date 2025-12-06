var dist, input_x, input_y, velocity_x, velocity_y;

if (state == PLAYERSTATES.ROAMING)
{
	can_interact = true;
	
	#region HANDLE SPEED AND MOVEMENT INPUT

	// get the input directions
	// if holding both keys (1 and 1), input variable will be 0
	input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	if (input_x != 0) or (input_y != 0)
	{
		if (!audio_is_playing(s_Walking))
			audio_play_sound(s_Walking, 3, true);
		
		// Do Acceleration
	
		/* 
		normalize input, pythagorean theorem a, b, c where dist is c
	
		- find dist with sqrt(a^2 + b^2)
		- dist will either evaluate to 1 or sqrt(2) here
		- dist will damp input values so magnitude is consistently 1
		- this means diagonal movement will be same speed as directly forward or upward
	
		*/
		dist = sqrt(input_x * input_x + input_y * input_y);
		input_x /= dist;
		input_y /= dist;
	
		// add acceleration factor to current movement
		hspeed += input_x * move_accel;
		vspeed += input_y * move_accel_vertical;
	
		// limit speed to max movement speed + normalize
		dist = sqrt(hspeed * hspeed + vspeed * vspeed);
		move_speed = min(move_speed_max, dist);
	
		if (dist != 0)
		{
			// set new normal vector
			move_norm_x = hspeed / dist;
			move_norm_y = vspeed / dist;
		}
	}
	else // Do decelleration
		move_speed = max(move_speed - move_decel, 0);

	// update movement vector
	hspeed = move_norm_x * move_speed;
	vspeed = move_norm_y * move_speed;

	#endregion
}
else if (state == PLAYERSTATES.INDIALOGUE)
{
	hspeed = 0;
	vspeed = 0;
	can_interact = false;
	audio_stop_sound(s_Walking);
}

#region HANDLE PLAYER MOVEMENT FOR STATIC COLLISION OBJECTS

if (place_meeting(x + hspeed, y, obj_baseCollision)) // HANDLE HORIZONTAL CHECK
{
	// nudge player close by 1px until finally colliding (to close the gap)
	while(!place_meeting(x + sign(hspeed), y, obj_baseCollision))
	{
		x += sign(hspeed);
	}
	hspeed = 0; // finally set to 0
}
if (place_meeting(x, y + vspeed, obj_baseCollision)) // HANDLE VERTICAL CHECK
{
	while(!place_meeting(x, y + sign(vspeed), obj_baseCollision))
	{
		y += sign(vspeed);
	}
	vspeed = 0;
}
#endregion

if (hspeed == 0) and (vspeed == 0)
{
	audio_stop_sound(s_Walking);
}
#region DETERMINE SPRITE TO DISPLAY FOR PLAYER BASED ON CURRENT MOVEMENT
if (hspeed < 0) and (abs(hspeed) > abs(vspeed))
{
	sprite_index = spr_brieaWalkE;
	image_xscale = scale * -1;
}
else if (hspeed > 0) and (abs(hspeed) > abs(vspeed))
{
	sprite_index = spr_brieaWalkE;
	image_xscale = scale;
}
else if (vspeed > 0)
{
	sprite_index = spr_brieaWalkS;
}
else if (vspeed < 0)
{
	sprite_index = spr_brieaWalkN;
}
else if (vspeed == 0) and (hspeed == 0)
{
	sprite_index = spr_briea;
}
#endregion

// keep player from leaving gamemaker room space
x = clamp(x, - sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, 0 + sprite_height, room_height);

// dynamically set depth
depth = -y;

// keep hitbox consistent no matter the sprite
mask_index = spr_briea;