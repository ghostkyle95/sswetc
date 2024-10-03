function scr_player_handstandjump()
{
	move = key_left + key_right;
	landAnim = false;
	hsp = xscale * movespeed;
	if character == CHARACTERS.PIZZELLE
		grav = 0;
	momemtum = true;
	dir = xscale;
	if movespeed < 8
		movespeed = 8;
	else if movespeed < 10
		movespeed += 0.5;
	if (move != xscale && move != 0)
	{
		grav = 0.5;
		if !grounded
		{	
			state = states.jump;
			image_index = 0;
			sprite_index = spr_suplexdashCancel;
			jumpAnim = true;
			momemtum = false;
			xscale *= -1;
		}
		else
			state = states.normal;
		if (audio_is_playing(sound_suplex1))
			audio_stop_sound(sound_suplex1);
			
	}
	if image_index >= (image_number - 1) && !key_attack
	{
		state = states.normal;
		grav = 0.5;
		flash = false;
	}
	if key_down && grounded
	{
		movespeed = 12;
		grav = 0.5;
		sprite_index = spr_crouchslip;
		crouchslipbuffer = 25;
		machhitAnim = false;
		state = states.machroll;
		if (audio_is_playing(sound_suplex1))
			audio_stop_sound(sound_suplex1);
	}
	if (key_jump && grounded)
	{
		sprite_index = spr_longjumpstart;
		image_index = 0;
		instance_create(x, y, obj_jumpdust);
		state = states.mach2;
		vsp = -11;
		jumpstop = false;
		if (audio_is_playing(sound_suplex1))
			audio_stop_sound(sound_suplex1);
	}
	if (grounded && (scr_solid(x + xscale, y) && !scr_slope_ext(x + xscale, y)) && !place_meeting(x + xscale, y, obj_destructibles))
	{
		movespeed = 0;
		state = states.jump;
        vsp = -6;
		mach2 = 0;
		image_index = 0;
		machslideAnim = true;
		machhitAnim = false;
		jumpAnim = false;
		instance_create(x + (10 * xscale), y + 10, obj_bumpeffect);
		if (audio_is_playing(sound_suplex1))
			audio_stop_sound(sound_suplex1);
		scr_sound(sound_bump);
		sprite_index = spr_suplexbump
	}
	if (((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope))))
	{
		wallspeed = movespeed;
		state = states.climbwall;
	}
	image_speed = 0.35;
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
		instance_create(x, y, obj_slidecloud);
	if (key_attack && image_index >= (image_number - 1) && sprite_index != spr_bump)
	{
		if movespeed < 10
			movespeed = 10;
		state = states.mach2;
		sprite_index = spr_mach;
	}
}
