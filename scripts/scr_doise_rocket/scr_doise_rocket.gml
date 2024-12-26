function scr_doise_rocket()
{
	if (sprite_index == spr_superjumpprepside)
	{
		vsp = 0;
		hsp = 0;
		move = 0;
		image_speed = 0.5;
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
	if (sprite_index == spr_jetpackturn || sprite_index == spr_groundedjetpackturn)
	{
		hsp = movespeed * xscale
		movespeed = approach(movespeed, 0, 0.5);
		
		if sprite_index == spr_jetpackturn
			vsp = 0;
			
		if (floor(image_index) == (image_number - 1) && !grounded)
		{
			movespeed = 12;
			sprite_index = spr_superjumpside;
			momemtum = true;
			image_index = 0;
			xscale *= -1;
			instance_create(x, y, obj_jumpdust);
		}
		else if (floor(image_index) == (image_number - 1) && grounded)
		{
			movespeed = 12;
			sprite_index = spr_rocketfistground;
			momemtum = true;
			image_index = 0;
			xscale *= -1;
			instance_create(x, y, obj_jumpdust);
		}
	}
	if (sprite_index != spr_superjumpprepside && sprite_index != spr_jetpackturn && sprite_index != spr_jetpackjump && sprite_index != spr_groundedjetpackturn)
	{
		if (!key_up && !key_down)
			vsp = 0;
		move = key_left + key_right;
		hsp = xscale * movespeed;
		if ((move != 0 && move != xscale) && movespeed > 1)
			movespeed -= 0.05;
		if ((move != 0 && move == xscale) && movespeed < 24)
			movespeed += 0.1;
		if (key_jump)
		{
			charged = true;
			flash = true;
			alarm[0] = 240;
			image_index = 0;
			state = states.doiserocketjump;
			sprite_index = spr_jetpackjump;
			vsp = -12;
		}
		if ((move == -xscale) && Dashpad_buffer <= 0)
		{
			scr_sound(sfx_plrmachturn);
			image_index = 0;
			// temp scrapped until we get a new grounded turn sprite...
			
			//if grounded == false
				sprite_index = spr_jetpackturn;
			//else
				//sprite_index = spr_groundedjetpackturn;
			flash = false;
			mach2 = 100;
		}
		if (key_up)
			vsp = -5;
		if (key_down)
			vsp = 5;
		if (!grounded && hsp != 0 && sprite_index != spr_superjumpside && sprite_index != spr_jetpackjump  && sprite_index != spr_jetpackturn && sprite_index != spr_mach3hitwall && sprite_index != spr_groundedjetpackturn)
			sprite_index = spr_superjumpside;
			
		if (grounded && hsp != 0 && sprite_index != spr_rocketfistground && sprite_index != spr_jetpackjump && sprite_index != spr_jetpackturn && sprite_index != spr_mach3hitwall && sprite_index != spr_groundedjetpackturn)
			sprite_index = spr_rocketfistground;
		if ((scr_solid(x + xscale, y, true) || scr_solid_slope(x + sign(hsp), y)) && !place_meeting(x + xscale, y, obj_destructibles))
		{
			scr_sound(sfx_groundpoundland);
			with (obj_camera)
			{
				shake_mag = 20;
				shake_mag_acc = 40 / room_speed;
			}
			image_speed = 0.35;
			with (obj_baddie)
			{
				if (point_in_camera(x, y, view_camera[0]) && grounded)
				{
					stun = true;
					alarm[0] = 200;
					ministun = false;
					vsp = -5;
					hsp = 0;
				}
			}
			hsp = -6 * xscale;
			vsp = -6;
			movespeed = -6;
			image_speed = 0.35
			image_index = 0;
			sprite_index = spr_mach3hitwall;
			state = states.bump;
		}
			
		if (key_slap2 && key_up)
		{
			flash = true;
			alarm[0] = 240;
			image_index = 0;
			state = states.Sjump;
			sjumpspeed = 12;
			sprite_index = spr_superjump;
		}
		if place_meeting(x + hsp, y, obj_slope) && place_meeting(x, y-1, obj_destructibles)
		{
			var block = instance_place(x, y-1, obj_destructibles);
			instance_destroy(block);
		}
	}
	image_speed = 0.35;
}

function scr_doise_rocketjump()
{
	sprite_index = spr_wallbounce;
	image_speed = 0.35;
	hsp = 12 * xscale
	
	if ((scr_solid(x + xscale, y, true) || scr_solid_slope(x + sign(hsp), y)) && !place_meeting(x + xscale, y, obj_destructibles))
	{
		scr_sound(sfx_bump);
		xscale *= -1
	}
	
	if (key_attack2 && !grounded)
	{
		flash = true;
		charged = false;
		sprite_index = spr_superjumpprepside;
		image_speed = 0.4;
		image_index = 0;
		movespeed = 0;
		vsp = 0;
		mach2 = 0;
		state = states.jetpackdoise;
	}
	
    if (grounded && vsp >= 0 && sprite_index == spr_wallbounce)
    {
        state = states.normal
        movespeed = abs(hsp)
    }
}
