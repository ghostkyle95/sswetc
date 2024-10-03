function scr_player_crouchslide()
{
	hsp = xscale * movespeed;
	mask_index = spr_crouchmask;
	if crouchslipbuffer > 0
		crouchslipbuffer--;
	else if !key_down && !scr_solid(x, y - 32) && !scr_solid(x, y - 16)
	{
		if movespeed >= 12
			state = states.mach3;
		else
			state = states.mach2;
		sprite_index = spr_rollgetup;
		image_index = 0;
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
		hsp = xscale * -2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		machslideAnim = true;
		machhitAnim = false;
		instance_create(x + (xscale * 10), y + (xscale * 10), obj_bumpeffect);
	}
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
		instance_create(x, y, obj_slidecloud);
	image_speed = 0.35;
}
