function scr_player_cottondrill()
{
	image_speed = 0.35;
	if (dir != xscale)
	{
		dir = xscale;
		movespeed = 0;
	}
	move = key_left + key_right;
	if (move != 0)
		xscale = move;
	hsp = 0;
	sprite_index = spr_cotdrill;
	if (grounded)
	{
		if (scr_slope() && !place_meeting(x, y, obj_dashpad))
		{
			state = states.cottonroll;
			movespeed = 12;
			sprite_index = spr_cotroll;
			if (place_meeting(x, y + 1, obj_slope))
			{
				with (instance_place(x, y + 1, obj_slope))
					other.xscale = -sign(image_xscale);
			}
		}
		else
		{
			state = states.cotton;
			sprite_index = spr_cotland;
			vsp = 0;
			movespeed = 0;
			image_index = 0;
		}
	}
	if (key_slap2 && sprite_index != spr_cotattack && groundedcot)
	{
		state = states.cotton;
		flash = true;
		image_index = 0;
		sprite_index = spr_cotattack;
		grounded = false;
		vsp = -5;
		grav = 0.2;
		scr_sound(sfx_plrgrabdash);
		groundedcot = false;
	}
	if (key_jump)
	{
		state = states.cotton;
		vsp = -10;
		grav = 0.1;
		image_index = 0;
		sprite_index = spr_cotdoublejump;
		instance_create(x, y, obj_highjumpcloud2);
		with (instance_create(x, y, obj_highjumpcloud2))
		{
			image_xscale = other.xscale;
			sprite_index = spr_cottonpoof;
		}
		scr_sound(sfx_plrjump);
	}
}
