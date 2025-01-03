function scr_player_machroll()
{
	var machroll = spr_machroll
	
	if movespeed > 12
		machroll = spr_fastroll
	else
		machroll = spr_machroll
		
	if (!place_meeting(x, y + 1, obj_railh))
		hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (xscale * movespeed) + 5;
	//mach2 = 100;
	machslideAnim = true;
	move = key_right + key_left;
	if (grounded)
		sprite_index = machroll;
	if (grounded && sprite_index == spr_dive)
		sprite_index = machroll
	if (!instance_exists(obj_cloudeffect) && grounded)
		instance_create(x, y + 43, obj_cloudeffect);
	image_speed = 0.8;
	if (!key_down && grounded && (!scr_solid(x + 27, y - 32) && (!scr_solid(x - 27, y - 32) && (!scr_solid(x, y - 32) && !scr_solid(x, y - 16)))))
	{
		image_index = 0;
		scr_sound(sfx_rollgetup);
		//movespeed = min(movespeed, 12);
		state = states.mach2
		sprite_index = spr_rollgetup;
	}
	else if (sprite_index != spr_dive && !grounded)
	{
		if (character != CHARACTERS.NOISE || doisemode == true)
		{
			sprite_index = spr_dive;
			vsp = 10;
		}
		else
		{	
            sprite_index = spr_tornado
            state = states.machcancel
            savedmove = xscale
            vsp = 20
            movespeed = hsp
            input_buffer_slap = 0
            input_buffer_jump = 0
            image_index = 0
            return;
		}
	}
	if (key_jump && !grounded && character != CHARACTERS.NIKOCADO)
	{
		if (character != CHARACTERS.NOISE || doisemode == true)
		{
			image_index = 0;
			state = states.freefallprep;
			sprite_index = spr_divebombstart;
			vsp = -3;
		}
		else
		{
            sprite_index = spr_tornado
            state = states.machcancel
            vsp = 20
            hsp = 0
            savedmove = xscale
            movespeed = 0
            input_buffer_slap = 0
            input_buffer_jump = 0
            image_index = 0
            return;
		}
	}
	if ((scr_solid(x + 1, y, true) && !place_meeting(x + sign(hsp), y, obj_slope) || scr_solid_slope(x + 1, y)) && xscale == 1 && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		if doisemode == true
		{
			xscale *= -1
			instance_create(x, y, obj_bangeffect);
			scr_sound(sfx_bump);
		}
		else
		{
			movespeed = 0;
			state = states.bump;
			sprite_index = spr_wallsplat
			image_index = 0
		}
	}
	if ((scr_solid(x - 1, y, true) && !place_meeting(x + sign(hsp), y, obj_slope) || scr_solid_slope(x - 1, y)) && xscale == -1 && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		if doisemode == true
		{
			xscale *= -1
			instance_create(x, y, obj_bangeffect);
			scr_sound(sfx_bump);
		}
		else
		{
			movespeed = 0;
			state = states.bump;
			sprite_index = spr_wallsplat
			image_index = 0
		}
	}
	if place_meeting(x + hsp, y, obj_slope) && place_meeting(x, y-1, obj_destructibles)
	{
		var block = instance_place(x, y-1, obj_destructibles);
		instance_destroy(block);
	}
}
