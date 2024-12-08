function scr_player_cottonroll()
{
	image_speed = 0.35;
	hsp = xscale * movespeed;
	if (movespeed < 12)
		movespeed += 0.25;
	if instance_place(x, y-1, obj_slope) != -4 && instance_place(x, y-1, obj_slope).image_xscale == xscale
		movespeed += 0.2
	if ((scr_solid(x + xscale, y) && !scr_slope_ext(x + xscale, y)) && !place_meeting(x + xscale, y, obj_destructibles) || scr_solid_slope(x + sign(hsp), y))
	{
		if (sprite_index == spr_cotroll)
		{
			instance_create(x, y, obj_bangeffect)
			xscale *= -1
		}
	}
	if (key_jump && sprite_index == spr_cotroll)
	{
		state = states.cotton;
		vsp = -14;
		grav = 0.025;
		image_index = 0;
		sprite_index = spr_cotjump;
		instance_create(x, y, obj_highjumpcloud2);
		scr_sound(sfx_cottonjump);
	}
	if (key_down2 && !grounded && drill && sprite_index == spr_cotroll)
	{
		vsp = 9;
		state = states.cottondrill;
		sprite_index = spr_cotdrill;
		image_index = 0;
		scr_sound(sfx_grabdash);
		flash = true;
		drill = false;
		with (instance_create(x, y, obj_afterimageoutward))
			hspeed = 7;
		with (instance_create(x, y, obj_afterimageoutward))
			hspeed = -7;
		with (instance_create(x, y, obj_afterimageoutward))
			vspeed = 7;
		with (instance_create(x, y, obj_afterimageoutward))
			vspeed = -7;
	}
}
