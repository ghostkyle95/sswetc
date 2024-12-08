function scr_player_cotton()
{
	if (dir != xscale)
	{
		dir = xscale;
		movespeed = 0;
	}
	if (sprite_index != spr_cothitwall && sprite_index != spr_cotton_slam2 && sprite_index != spr_cotton_slam3)
		move = key_left + key_right;
	if (sprite_index != spr_cotattack)
	{
		if (move != 0)
			xscale = move;
	}
	hsp = move * movespeed;
	if (move != 0)
	{
		if (movespeed < 8)
			movespeed += 0.5;
		if (movespeed > 8 && sprite_index != spr_cotton_attack && grounded)
			movespeed = 8;
	}
    else if (movespeed > 0 && sprite_index != spr_cotton_attack)
        movespeed -= 0.5
	if (vsp > 5)
		vsp = 5;
	if (key_jump && grounded)
	{
		vsp = -14;
		grav = 0.025;
		image_index = 0;
		sprite_index = spr_cotjump;
		instance_create(x, y, obj_highjumpcloud2);
		scr_sound(sfx_cottonjump);
	}
	if (key_slap2 && sprite_index != spr_cotattack && groundedcot)
	{
		flash = true;
		image_index = 0;
		sprite_index = spr_cotattack;
		grounded = false;
		vsp = -5;
		grav = 0.2;
		scr_sound(sfx_cottonattack);
		groundedcot = false;
	}
	if (sprite_index == spr_cotattack)
	{
		hsp = 8 * xscale;
		movespeed = 0;
		instance_create(x, y, obj_swordhitbox);
		move = xscale;
		if ((-key_left2 && xscale == 1) || (key_right2 && xscale == -1))
		{
			movespeed = 0;
			vsp = 0;
			hsp = 0;
			sprite_index = spr_cotfall;
		}
		if animation_end()
			sprite_index = spr_cotfall;
	}
	if (grounded && sprite_index == spr_cotattack)
	{
		image_index = 0;
		sprite_index = spr_cotidle;
	}
	if (sprite_index == spr_cotidle && move != 0)
	{
		image_index = 0;
		sprite_index = spr_cotwalk;
	}
	if (sprite_index == spr_cotwalk && move == 0)
	{
		image_index = 0;
		sprite_index = spr_cotidle;
	}
	if (sprite_index == spr_cotjump && animation_end())
	{
		image_index = 0;
		sprite_index = spr_cotfall;
	}
	if (sprite_index == spr_cotdoublejump && animation_end())
	{
		image_index = 0;
		sprite_index = spr_cotdoublefall;
	}
	if ((sprite_index == spr_cotfall || sprite_index == spr_cotdoublefall || sprite_index == spr_cotjump || sprite_index == spr_cotdoublejump) && grounded && vsp >= 0)
	{
		image_index = 0;
		sprite_index = spr_cotland;
		instance_create(x, y, obj_landcloud);
		scr_sound(sfx_land);
	}
	if (sprite_index == spr_cotfall && key_jump)
	{
		vsp = -10;
		grav = 0.1;
		image_index = 0;
		sprite_index = spr_cotdoublejump;
		with (instance_create(x, y, obj_highjumpcloud2))
		{
			image_xscale = other.xscale;
			sprite_index = spr_cottonpoof;
		}
		scr_sound(sfx_cottondoublejump);
	}
	if (sprite_index == spr_cotland && animation_end())
		sprite_index = spr_cotidle;
	if (key_down2 && !grounded && drill && sprite_index != spr_cothitwall && sprite_index != spr_cotton_slam2 && sprite_index != spr_cotton_slam3)
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
	if (!grounded && sprite_index != spr_cotjump && sprite_index != spr_cotattack && sprite_index != spr_cotdoublejump && sprite_index != spr_cotdoublefall && sprite_index != spr_cotdrill && sprite_index != spr_cothitwall && sprite_index != spr_cotton_slam2 && sprite_index != spr_cotton_slam3)
		sprite_index = spr_cotfall;
	if (grounded && !drill)
		drill = true;
	if (sprite_index == spr_cotwalk)
		image_speed = ((movespeed / 6) * 0.15) + 0.35;
	else
		image_speed = 0.35;
	if animation_end() && sprite_index == spr_cothitwall
	{
		movespeed = 0;
		vsp = 0;
		sprite_index = spr_cotidle;
	}
}
