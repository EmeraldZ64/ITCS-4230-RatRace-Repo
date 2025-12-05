var moved = keyboard_check(ord("A"));
var spd = 2;
if (moved)
{
	image_speed = 0.55; 
	image_xscale =.55*-1;

    switch (obj_barron.state)
    {
        case WATCH_STATE.LOOK_AWAY:
            // safe

			if (keyboard_check(ord("A"))) x -= spd;

            break;

        case WATCH_STATE.QUESTION:
            // movement during ? makes watcher suspicious !
            if (obj_barron.alarm[0] > 10) {
                obj_barron.alarm[0] -= 2; // speed up transition slightly
            }
            if (keyboard_check(ord("A"))) x -= spd;

            break;

        case WATCH_STATE.ALERT:
			if (obj_barron.alarm[0] > 5) {
                obj_barron.alarm[0] -= 3; // speed up transition more
            }
			if (keyboard_check(ord("A"))) x -= spd;

            break;
        case WATCH_STATE.TURN_TO_PLAYER:
            // CAUGHT
			global.playerFinishedSneak = true;
			global.playerWonSneak = false;
            room_goto(Room_Town);
            break;
    }
}else
{
    image_speed = 0; 
    image_index = 0; 
	image_xscale =.55;

}
