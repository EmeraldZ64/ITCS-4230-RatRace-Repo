switch (state) {

    case "fly_to_player":
        var tx = obj_player_race.x;
		var ty = obj_player_race.y - obj_player_race.sprite_height;

		var dist = point_distance(x, y, tx, ty);


		direction = point_direction(x, y, tx, ty);
		speed = 7;

		
		if (dist < speed + 2) {
			x = tx;
			y = ty - 20;
			speed = 0;
			state = "grab";
		}
    break;


    case "grab":
        //crow stole seeds
		
		var seed = instance_create_layer(x+100, y + 100, "Instances", obj_seed);


		my_seed = seed;

        // After grabbing, fly up
        state = "fly_up";
        direction = 90; // straight up
        speed = 8;
    break;


    case "fly_up":
        // Fly upward until off screen
        if (y < -200) {
            instance_destroy(); 
        }
    break;
}
if (instance_exists(my_seed)) {
    my_seed.x = x+100;         
    my_seed.y = y + 100;    
}
