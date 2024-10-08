function scr_rocketfist_pizzano()
{
	if (sprite_index == spr_superjumpprepside)
	{
		vsp = 0;
		hsp = 0;
		move = 0;
		if (sprite_index == spr_superjumpprepside && floor(image_index) == (image_number - 1))
		{
			image_index = 0;
			if (grounded)
				sprite_index = spr_rocketfistground;
			else
				sprite_index = spr_superjumpside;
			movespeed = 12;
			flash = true;
		}
	}
	if (sprite_index != spr_superjumpprepside)
	{
		if (!key_up && !key_down)
			vsp = 0;
		move = key_left + key_right;
		hsp = xscale * movespeed;
		if ((move != 0 && move != xscale) && movespeed > 1)
			movespeed -= 0.05;
		if ((move != 0 && move == xscale) && movespeed < 24)
			movespeed += 0.1;
		if (key_jump && grounded)
		{
			state = states.mach2;
			sprite_index = spr_mach2jump
			vsp = -12;
		}
		if (key_up)
			vsp = -5;
		if (key_down)
			vsp = 5;
		if (scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
		{
			vsp = -6;
			movespeed = -6;
			sprite_index = spr_mach3hitwall;
			state = states.bump;
		}
		if (!grounded && hsp != 0 && sprite_index != spr_superjumpside)
			sprite_index = spr_superjumpside;
		if (key_slap2 && key_up && charged)
		{
			flash = true;
			alarm[0] = 240;
			image_index = 0;
			state = states.Sjump;
			sprite_index = spr_superjumppreplight;
		}
		if (key_down && grounded)
			sprite_index = spr_crouchslide;
		else if (!key_down && grounded && hsp != 0)
			sprite_index = spr_rocketfistground;
	}
	image_speed = 0.35;
}
