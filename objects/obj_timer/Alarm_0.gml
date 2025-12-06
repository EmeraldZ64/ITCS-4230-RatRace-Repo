seconds -= 1;

if (seconds <= 0) {
	obj_player_race.hspeed=0;
	if (!obj_player_race.finished){
		global.raceLose = true;
		if (global.raceLose) {
			var spawn_x = obj_player_race.x + 200; 
			var spawn_y = obj_player_race.y - 1000; 

			var c = instance_create_layer(spawn_x, spawn_y, "Instances", obj_crow);
			c.state = "fly_to_player";

}
	}

} else {
    // Restart the alarm for another second
    alarm[0] = room_speed;
}