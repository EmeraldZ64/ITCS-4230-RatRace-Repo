if (instance_exists(my_seed)) {
    with (my_seed) instance_destroy();
}
global.raceLose = true;
audio_play_sound(s_LoseTrumpet, 4, false);
audio_stop_sound(s_Crow)
room_goto(Room_Town);