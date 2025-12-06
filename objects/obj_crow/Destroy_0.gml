if (instance_exists(my_seed)) {
    with (my_seed) instance_destroy();
}
global.raceLose = true;
room_goto(Room_Town);