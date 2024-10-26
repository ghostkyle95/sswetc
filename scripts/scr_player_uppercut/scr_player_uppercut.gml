function scr_player_uppercut()
{
	static attack_afterimagetimer = 6;
	image_speed = 0.35;
	if (sprite_index == spr_uppercutbegin && floor(image_index) == (image_number - 1))
	{
		sprite_index = spr_uppercutend;
		image_index = 0;
	}
	if (scr_solid(x + sign(hsp), y) && !scr_slope_ext(x + xscale, y) && move != 0)
		movespeed = 0;
	move = key_left + key_right;
	if (move == 0)
		hsp = xscale * movespeed;
	else
		hsp = move * movespeed;
	if (move != 0)
	{
		xscale = move;
		if (movespeed < 4)
			movespeed += 0.4;
		if (movespeed > 20)
			movespeed = 20;
	}
	if (!instance_exists(obj_dashcloud) && grounded)
	{
		with (instance_create_depth(x, y, 0, obj_dashcloud))
			image_xscale = other.xscale;
	}
	if (grounded && vsp > 0)
	{
		scr_sound(sfx_step);
		if (movespeed >= 12 && key_attack)
		{
			sprite_index = spr_mach4
			state = states.mach3;
			instance_create_depth(x, y, 0, obj_landcloud);
		}
		else if (movespeed < 12 && key_attack)
		{
			sprite_index = spr_mach
			state = states.mach2;
			instance_create_depth(x, y, 0, obj_landcloud);
		}
		else if (!key_attack)
		{
			state = false;
			landAnim = true;
			input_buffer_secondjump = false;
			jumpAnim = true;
			jumpstop = false;
			image_index = 0;
			freefallstart = false;
			instance_create_depth(x, y, 0, obj_landcloud);
		}
	}
	if (attack_afterimagetimer > 0)
		attack_afterimagetimer--;
	if (attack_afterimagetimer <= 0 && vsp <= 0)
	{
		with (instance_create(x, y, obj_attack_aftereffect))
			playerid = other.id;
		attack_afterimagetimer = 6;
	}
}
