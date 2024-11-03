function scr_player_crouchslide()
{
	movespeed = 12
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
		hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (xscale * movespeed) + 5;
	mask_index = spr_crouchmask;
	if (!key_down && !scr_solid(x + 27, y - 32) && !scr_solid(x - 27, y - 32) && !scr_solid(x, y - 32) && !scr_solid(x, y - 16))
	{
		switch (character)
		{
			default:
				sprite_index = spr_rollgetup;
				image_index = 0;
				state = states.mach3;
				break;
		}
	}
	if sprite_index != spr_rollgetup
	{
		if (!grounded)
		{
			if character != CHARACTERS.NOISE
			{
				sprite_index = spr_dive;
				vsp = 10;
				state = states.machroll
			}
			else
			{	
				sprite_index = spr_playerN_divebomb
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
		else
			sprite_index = spr_crouchslip
	}
	if (movespeed <= 0 && (!scr_slope() || scr_solid(x + xscale, y, true)) && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		state = states.normal;
		movespeed = 0;
		mach2 = 0;
		crouchslideAnim = true;
		image_index = 0;
		crouchAnim = true;
		start_running = true;
		alarm[4] = 14;
	}
	if (scr_solid(x + xscale, y, true) && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		movespeed = 0;
		state = states.bump;
		sprite_index = spr_wallsplat;
		image_index = 0;
	}
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
		instance_create(x, y, obj_slidecloud);
	image_speed = 0.35;
}
