function scr_player_bump()
{
	movespeed = 0;
	mach2 = 0;
	start_running = true;
	alarm[4] = 14;
	if ((grounded && vsp > 0))
		hsp = 0;
	if (sprite_index == spr_wallsplat)
		vsp = 0;
	if ((sprite_index != spr_catched && (sprite_index != spr_tumbleend && sprite_index != spr_airhitwall && sprite_index != spr_mach3hitwall && sprite_index != spr_wallsplat && sprite_index != spr_suplexbump)))
		sprite_index = spr_bump;
	if (sprite_index == spr_mach3hitwall || sprite_index == spr_airhitwall) && animation_end() && (!grounded)
	{
		image_index = image_number - 1
		image_speed = 0
	}
	if (animation_end() && sprite_index == spr_wallsplat)
		state = states.normal;
	if (image_speed = 0 && grounded && sprite_index != spr_wallsplat)
		state = states.normal;
	if (animation_end() && grounded && sprite_index != spr_wallsplat)
		state = states.normal;
	if (audio_is_playing(sfx_tumble))
		audio_stop_sound(sfx_tumble);
	image_speed = 0.35;
}
