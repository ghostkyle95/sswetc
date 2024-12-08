function scr_playersounds()
{
	if (!audio_is_playing(sfx_minecartrail) && state == states.minecart && grounded)
		scr_sound(sfx_minecartrail);
	else if (state != states.minecart || !grounded)
		audio_stop_sound(sfx_minecartrail);
		
	if (sprite_index == spr_mach1 && (!audio_is_playing(sfx_plrmach1) && grounded))
		scr_sound(sfx_plrmach1);
	else if (sprite_index != spr_mach1 || (!grounded || move == -xscale))
		audio_stop_sound(sfx_plrmach1);
		
	if ((sprite_index == spr_mach && state = states.mach2 || sprite_index == spr_climbwall) && !audio_is_playing(sfx_plrmach2))
		scr_sound(sfx_plrmach2);
	else if (sprite_index != spr_mach) && (sprite_index != spr_climbwall)
		audio_stop_sound(sfx_plrmach2);
		
	if (((state == states.mach3 && sprite_index != spr_crazyrun) || sprite_index == spr_machslideboost3 || sprite_index == spr_mach3wallclimb) && !audio_is_playing(sfx_plrmach3))
		scr_sound(sfx_plrmach3);
	else if ((state != states.mach3 && sprite_index != spr_machslideboost3) || sprite_index == spr_crazyrun) && (sprite_index != spr_mach3wallclimb)
		audio_stop_sound(sfx_plrmach3);
		
	if (sprite_index == spr_crazyrun && !audio_is_playing(sfx_plrmach4))
		scr_sound(sfx_plrmach4);
	else if (sprite_index != spr_crazyrun)
		audio_stop_sound(sfx_plrmach4);
		
	if (sprite_index == spr_mach2jump) && !audio_is_playing(sfx_flip) && character != CHARACTERS.SWAB
		scr_sound(sfx_flip);
	if (audio_is_playing(sfx_flip) && sprite_index != spr_mach2jump)
		audio_stop_sound(sfx_flip);
		
	if (sprite_index == spr_superjumppreplight) && (!audio_is_playing(sfx_plrsjumphold))
		scr_sound(sfx_plrsjumphold);
	if (audio_is_playing(sfx_plrsjumphold) && sprite_index != spr_superjumppreplight)
		audio_stop_sound(sfx_plrsjumphold);
		
	if (sprite_index == spr_sidewayspinend && !audio_is_playing(sfx_airspin) && !audio_is_playing(sfx_airspinstart))
		scr_sound(sfx_airspin);
	else if (sprite_index != spr_sidewayspinend)
		audio_stop_sound(sfx_airspin);
	
	if (doisemode == false)
	{
		if (sprite_index == spr_wallbounce && !audio_is_playing(sfx_wallbounceloop) && !audio_is_playing(sfx_wallbouncestart) && !audio_is_playing(sfx_wallbounceland))
			scr_sound(sfx_wallbounceloop);
		else if (sprite_index != spr_wallbounce)
		{
			audio_stop_sound(sfx_wallbouncestart);
			audio_stop_sound(sfx_wallbounceloop);
		}
	}
	
	if (sprite_index == spr_tornadofall && !audio_is_playing(sfx_tornadofast))
		scr_sound(sfx_tornadofast);
	else if (sprite_index != spr_tornadofall)
		audio_stop_sound(sfx_tornadofast);
		
	if (sprite_index == spr_tornado && !audio_is_playing(sfx_torndadoslow))
		scr_sound(sfx_torndadoslow);
	else if (sprite_index != spr_tornado)
		audio_stop_sound(sfx_torndadoslow);
		
	if ((sprite_index == spr_bodyslamfall || sprite_index == spr_divebombfall) && !audio_is_playing(sfx_groundpoundloop))
		scr_sound(sfx_groundpoundloop);
	else if (sprite_index != spr_bodyslamfall && sprite_index != spr_divebombfall)
		audio_stop_sound(sfx_groundpoundloop);
		
	if (sprite_index != spr_sidewayspin && sprite_index != spr_sidewayspinend && audio_is_playing(sfx_airspinstart))
		audio_stop_sound(sfx_airspinstart);
}
