pausedmusic = global.music;
if (global.panic && !obj_pause.pause && room != timesuproom)
{
	if (global.lap)
	{
		var musarraylength = array_length(global.lapmusarray)
		var selectedmus = (global.laps > musarraylength) ? global.lapmusarray[musarraylength] : global.lapmusarray[global.laps - 1];
		if (!audio_is_playing(selectedmus))
		{
			audio_stop_all_music();
			scr_music(selectedmus);
			pausedmusic = selectedmus;
		}
	}
	else
	{
		if (!audio_is_playing(global.panicmus))
		{
			audio_stop_all_music();
			scr_music(global.panicmus);
			pausedmusic = global.panicmus;
		}
	}
}
else if (!global.panic && room == timesuproom)
	audio_stop_sound(global.music);
if (room != hub_room1 && room != outer_room2)
	fadeoff = audio_sound_get_track_position(global.music) / audio_sound_length(global.music);
else
	fadeoff = 0;
