function scr_pizzano_shoulderbash()
{
	hsp = xscale * movespeed;
	move = key_right + key_left
	if movespeed < 12
		movespeed = 12;
	if (move != xscale && move != 0)
	{
		state = states.jump;
		image_index = 0;
		sprite_index = spr_suplexdashCancel;
		jumpAnim = true;
		momemtum = false;
		mach2 = 0;
		xscale *= -1;
		if (audio_is_playing(sfx_plrgrabdash))
			audio_stop_sound(sfx_plrgrabdash);
	}
	if (key_down)
	{
		if (grounded)
		{
			grav = 0.5;
			sprite_index = spr_crouchslip;
			machhitAnim = false;
			state = states.crouchslide;
			if (audio_is_playing(sfx_plrgrabdash))
				audio_stop_sound(sfx_plrgrabdash);
		}
		else
		{
			//instakillmove = 0
			grav = 0.5;
			image_index = 1;
			state = states.freefallprep;
			sprite_index = spr_bodyslamstart;
			vsp = -3;
		}
	}
	if (key_jump && grounded)
	{
		sprite_index = spr_mach2jump;
		instance_create(x, y, obj_jumpdust);
		state = states.mach2;
		vsp = -9;
		if (audio_is_playing(sfx_plrgrabdash))
			audio_stop_sound(sfx_plrgrabdash);
	}	
	if (floor(image_index) == (image_number - 1))
	{
		state = states.normal;
		grav = 0.5;
		flash = false;
	}
	if (key_attack && floor(image_index) == (image_number - 1) && sprite_index != spr_bump)
	{
		if movespeed < 8
			movespeed = 8
		state = states.mach2;
		sprite_index = spr_mach;
	}
	if (grounded && ((scr_solid(x + xscale, y) && !scr_slope_ext(x + xscale, y)) && !place_meeting(x + xscale, y, obj_destructibles) || scr_solid_slope(x + sign(hsp), y)) && !place_meeting(x + xscale, y, obj_destructibles))
	{
		grav = 0.5;
		movespeed = 0;
		state = states.bump;
		hsp = -2.5 * xscale;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		machslideAnim = true;
		machhitAnim = false;
		instance_create(x + (10 * xscale), y + 10, obj_bumpeffect);
		if (audio_is_playing(sfx_plrgrabdash))
			audio_stop_sound(sfx_plrgrabdash);
		scr_sound(sfx_bump);
	}
	if (((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || !grounded && scr_solid_slope((x + hsp), y)) && (!(place_meeting((x + hsp), y, obj_destructibles)))) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope))
	{
		wallspeed = movespeed;
		grabclimbbuffer = 10;
		state = states.climbwall;
	}
}
