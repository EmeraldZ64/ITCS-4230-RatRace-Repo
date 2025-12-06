if !((room == Room_Start) or (room == Room_HTP) or (room == Room_Credits))
{
	audio_stop_sound(song);
}
else if (!audio_is_playing(song))
{
	audio_play_sound(song, 1, true);
}