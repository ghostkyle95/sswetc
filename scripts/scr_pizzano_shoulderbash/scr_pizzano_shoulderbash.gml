function scr_pizzano_shoulderbash()
{
	hsp = xscale * movespeed;
	if movespeed < 12
		movespeed = 12;
	//instakillmove = 1
	if (key_down)
	{
		if (grounded)
		{
			//instakillmove = 0
			grav = 0.5;
			sprite_index = spr_crouchslip;
			machhitAnim = false;
			state = states.crouchslide;
			if (audio_is_playing(sfx_grabdash))
				audio_stop_sound(sfx_grabdash);
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
		//instakillmove = 0
		//movespeed = 10;
		sprite_index = spr_mach2jump;
		instance_create(x, y, obj_jumpdust);
		state = states.mach2;
		vsp = -9;
		if (audio_is_playing(sfx_grabdash))
			audio_stop_sound(sfx_grabdash);
	}	
	if (floor(image_index) == (image_number - 1))
	{
		//instakillmove = 0
		state = states.normal;
		grav = 0.5;
		flash = false;
	}
	if (key_attack && floor(image_index) == (image_number - 1) && sprite_index != spr_bump)
	{
		//instakillmove = 0
		//movespeed = 10;
		//mach2 = 20;
		if movespeed < 8
			movespeed = 8
		state = states.mach2;
		sprite_index = spr_mach;
	}
	if (grounded && (scr_solid(x + xscale, y) && !scr_slope_ext(x + xscale, y)) && !place_meeting(x + xscale, y, obj_destructibles))
	{
		//instakillmove = 0
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
		if (audio_is_playing(sfx_grabdash))
			audio_stop_sound(sfx_grabdash);
		scr_sound(sound_bump);
	}
	if (((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope))))
	{
		//instakillmove = 0
		wallspeed = movespeed;
		grabclimbbuffer = 10;
		state = states.climbwall;
	}
}
