if !((room == Room_Town) or (room == Room_Organize))
{
	audio_stop_sound(song);
}
else if (!audio_is_playing(song))
{
	audio_play_sound(song, 1, true);
}