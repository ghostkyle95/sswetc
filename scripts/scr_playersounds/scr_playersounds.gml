function scr_playersounds()
{
	if (!audio_is_playing(sfx_railgrind) && state == states.minecart && grounded)
		scr_sound(sfx_railgrind);
	else if (state != states.minecart || !grounded)
		audio_stop_sound(sfx_railgrind);
		
	if (sprite_index == spr_mach1 && (!audio_is_playing(sound_dash1) && grounded))
		scr_sound(sound_dash1);
	else if (sprite_index != spr_mach1 || (!grounded || move == -xscale))
		audio_stop_sound(sound_dash1);
		
	if ((sprite_index == spr_mach || sprite_index == spr_climbwall) && state = states.mach2 && !audio_is_playing(sound_dash2))
		scr_sound(sound_dash2);
	else if (sprite_index != spr_mach) && (sprite_index != spr_climbwall)
		audio_stop_sound(sound_dash2);
		
	if (((state == states.mach3 && sprite_index != spr_crazyrun) || sprite_index == spr_machslideboost3) && !audio_is_playing(sound_maxspeed))
		scr_sound(sound_maxspeed);
	else if ((state != states.mach3 && sprite_index != spr_machslideboost3) || sprite_index == spr_crazyrun)
		audio_stop_sound(sound_maxspeed);
		
	if (sprite_index == spr_crazyrun && !audio_is_playing(sound_dash3))
		scr_sound(sound_dash3);
	else if (sprite_index != spr_crazyrun)
		audio_stop_sound(sound_dash3);
		
	if (sprite_index == spr_mach2jump) && !audio_is_playing(sfx_flip)
		scr_sound(sfx_flip);
	if (sprite_index == spr_superjumppreplight) && !audio_is_playing(sound_superjumpcharge2)
		scr_sound(sound_superjumpcharge2);
	
	if (audio_is_playing(sfx_flip) && sprite_index != spr_mach2jump)
		audio_stop_sound(sfx_flip);
		
	if (audio_is_playing(sound_superjumpcharge2) && sprite_index != spr_superjumppreplight)
		audio_stop_sound(sound_superjumpcharge2);
}
