function scr_player_handstandjump()
{
	switch (character)
	{
		case CHARACTERS.PIZZELLE:
		case CHARACTERS.NOISE:
		case CHARACTERS.PIZZANO:
			move = key_left + key_right;
			landAnim = false;
			//mach2 = 35;
			hsp = xscale * movespeed;
			grav = 0;
			momemtum = true;
			dir = xscale;
			if (movespeed < 12)
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
				if (audio_is_playing(sfx_grabdash))
					audio_stop_sound(sfx_grabdash);
			}
			if (floor(image_index) == (image_number - 1))
			{
				state = states.normal;
				grav = 0.5;
				flash = false;
			}
			if (key_down)
			{
				if (grounded)
				{
					grav = 0.5;
					sprite_index = spr_crouchslip;
					machhitAnim = false;
					state = states.crouchslide;
					if (audio_is_playing(sfx_grabdash))
						audio_stop_sound(sfx_grabdash);
				}
				else
				{
					grav = 0.5;
					image_index = 1;
					state = states.freefallprep;
					sprite_index = spr_bodyslamstart;
					vsp = -3;
				}
			}
			if (key_jump && grounded)
			{
				//movespeed = 10;
				sprite_index = spr_longjumpstart;
				instance_create(x, y, obj_jumpdust);
				state = states.mach2;
				vsp = -9;
				if (audio_is_playing(sfx_grabdash))
					audio_stop_sound(sfx_grabdash);
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
				if (audio_is_playing(sfx_grabdash))
					audio_stop_sound(sfx_grabdash);
				scr_sound(sound_bump);
				sprite_index = spr_suplexbump
			}
			if (((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles)   || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope)))))
			{
				wallspeed = movespeed;
				grabclimbbuffer = 10;
				state = states.climbwall;
			}
			image_speed = 0.3;
			if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
				instance_create(x, y, obj_slidecloud);
			break;
	}
	if (key_attack && floor(image_index) == (image_number - 1) && sprite_index != spr_bump)
	{
		//movespeed = 10;
		//mach2 = 20;
		if movespeed < 8
			movespeed = 8
		state = states.mach2;
		sprite_index = spr_mach;
	}
	if (key_slap2 && !key_down)
	{
		sprite_index = spr_machtumble;
		image_index = 0;
		image_speed = 0.2;
		state = states.machtumble;
		movespeed += 3
		if !grounded
			vsp = -5;
		with (instance_create(x, y, obj_jumpdust))
			image_xscale = other.xscale;
	}
}
