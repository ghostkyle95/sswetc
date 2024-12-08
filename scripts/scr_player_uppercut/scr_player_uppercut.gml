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
	else if (move == 0)
	{
		movespeed = approach(movespeed, 0, 0.4)
	}
	if (key_slap2 && !grounded)
	{
		if (character != CHARACTERS.SWAB)
		{
			if (move != 0)
				xscale = move;
			movespeed = 12;
			machhitAnim = false;
			state = states.mach2;
			flash = true;
			vsp = -7;
			sprite_index = spr_mach2jump;
			with (instance_create(x, y, obj_jumpdust))
				image_xscale = other.xscale;
			freefallsmash = false;
		}
		else
		{
			if (move != 0)
				xscale = move;
			state = states.sjumpcancelprep;
			flash = true;
			vsp = 0;
			hsp = 0;
			image_index = 0;
			sprite_index = spr_uppercutcancelstart;
			sjumpspeed = 0;
			with (instance_create(x, y, obj_jumpdust))
				image_xscale = other.xscale;
		}
	}
	if (!instance_exists(obj_dashcloud) && grounded)
	{
		with (instance_create_depth(x, y, 0, obj_dashcloud))
			image_xscale = other.xscale;
	}
	if (grounded && vsp > 0)
	{
		scr_sound(sound_step);
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
