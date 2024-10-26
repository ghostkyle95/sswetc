function scr_player_freefallprep()
{
	hsp = 0;
	if (((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
		movespeed = 0;
	start_running = true;
	alarm[4] = 14;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	machslideAnim = true;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	move = key_left + key_right;
	if sprite_index == spr_bodyslamstart
		vsp = approach(vsp, -8, -0.5)
	else if sprite_index == spr_crusherstart
		vsp = approach(vsp, -20, -0.5)
	if (!grounded)
	{
		hsp = move * movespeed;
		if (move != xscale && momemtum && movespeed != 0)
			movespeed -= 0.05;
		if (movespeed == 0)
			momemtum = false;
		if ((move == 0 && !momemtum) || scr_solid(x + hsp, y))
		{
			movespeed = 0;
			mach2 = 0;
		}
		if (move != 0 && movespeed < 7)
			movespeed += 0.25;
		if (movespeed > 7)
			movespeed -= 0.05;
		if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
			movespeed = 0;
		if (dir != xscale)
		{
			mach2 = 0;
			dir = xscale;
			movespeed = 0;
		}
		if (move == -xscale)
		{
			mach2 = 0;
			movespeed = 0;
			momemtum = false;
		}
		if (move != 0)
			xscale = move;
	}
	image_speed = 0.5;
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_bodyslamstart)
	{
		//vsp += 14;
		state = states.freefall;
		freefallsmash = false;
		sprite_index = spr_bodyslamfall;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_crusherstart)
	{
		//vsp += 14;
		state = states.freefall;
		freefallsmash = false;
		sprite_index = spr_crusherfall;
	}
}
