var dist, input_x, input_y, velocity_x, velocity_y;

if (state == PLAYERSTATES.ROAMING)
{
	#region HANDLE SPEED AND MOVEMENT INPUT

	// get the input directions
	// if holding both keys (1 and 1), input variable will be 0
	input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	if (input_x != 0) or (input_y != 0)
	{
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
		vspeed += input_y * move_accel;
	
		// limit max movement speed + normalize
		dist = sqrt(hspeed * hspeed + vspeed * vspeed);
		move_speed = min(move_speed_max, dist);
	
		if (dist != 0)
		{
			// set new normal vector
			move_norm_x = hspeed / dist;
			move_norm_y = vspeed / dist;
		}
	}
	else // Stop Player Movement
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
}

x = clamp(x, 0, room_width - sprite_width / 2);
y = clamp(y, 0, room_height - sprite_height / 2);