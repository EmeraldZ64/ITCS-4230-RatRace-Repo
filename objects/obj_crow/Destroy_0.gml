if (instance_exists(my_seed)) {
    with (my_seed) instance_destroy();
}
global.percentBlue-=0.05;
room_goto(Room_Demo);