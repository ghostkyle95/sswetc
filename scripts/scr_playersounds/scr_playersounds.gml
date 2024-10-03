function scr_playersounds()
{
	if state == states.minecart && grounded
	{
		if !audio_is_playing(sfx_railgrind)
			scr_sound(sfx_railgrind);
	}
	else
		audio_stop_sound(sfx_railgrind);
		
	if (sprite_index == spr_mach2jump)
	{
		if (!audio_is_playing(sfx_flip))
			scr_sound(sfx_flip);
	}
	else
		audio_stop_sound(sfx_flip);
		
	// what the SLOP?!?!?!	
	
	var arr =
	[
		sfx_mach1,
		sfx_mach2,
		sfx_mach3,
		sfx_mach4,
	]
	if (state == states.mach2 && grounded && vsp >= 0 || state == states.climbwall || state == states.mach3) && sprite_index != spr_player_rollgetup
	{
		var machsnd = sfx_mach1;
		if state == states.mach2 && sprite_index != spr_mach1 || state == states.climbwall
			machsnd = sfx_mach2;
		else if state == states.mach3 && sprite_index != spr_crazyrun
			machsnd = sfx_mach3;
		else if sprite_index == spr_crazyrun
			machsnd = sfx_mach4;
		for (var i = 0; i < array_length(arr); i++)
		{
			if machsnd != arr[i]
				audio_stop_sound(arr[i]);
			else if !audio_is_playing(machsnd)
				scr_sound(machsnd);
		}
	}
	else
	{
		for (var i = 0; i < array_length(arr); i++)
			audio_stop_sound(arr[i]);
	}
	if (sprite_index == spr_superjumppreplight)
	{
		if (!audio_is_playing(sound_superjumpcharge2))
			scr_sound(sound_superjumpcharge2);
	}
	if (audio_is_playing(sound_superjumpcharge2) && sprite_index != spr_superjumppreplight)
		audio_stop_sound(sound_superjumpcharge2);
}
