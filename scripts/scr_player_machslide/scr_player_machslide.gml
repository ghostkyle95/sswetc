function scr_player_machslide()
{
	if (sprite_index == spr_hurtroll && grounded)
		sprite_index = spr_crouchslide;
	if (sprite_index == spr_crouchslide && movespeed <= 0)
		state = states.normal;
	if (sprite_index == spr_machslidestart && floor(image_index) == (image_number - 1))
		sprite_index = spr_machslide;
	hsp = movespeed * xscale
	movespeed = approach(movespeed, 0, 0.5);
	image_speed = 0.35;
	landAnim = false;
	if (floor(movespeed) <= 0 && (sprite_index == spr_machslide || sprite_index == spr_crouchslide))
	{
		image_index = 0;
		if (sprite_index == spr_machslide)
			machslideAnim = true;
		movespeed = 0;
		state = states.normal;
	}
	if (animation_end() && sprite_index == spr_machslideboost && mach2 != 0 && grounded)
	{
		movespeed = 8.30;
		momemtum = true;
		state = states.mach2;
		sprite_index = spr_mach;
		image_index = 0;
		xscale *= -1;
		instance_create(x, y, obj_jumpdust);
	}
	else if (!grounded) && animation_end() && sprite_index == spr_machslideboost
		sprite_index = spr_machslideboostfall
	if (animation_end() && sprite_index == spr_machslideboost3 && mach2 != 0 && grounded)
	{
		movespeed = 12;
		sprite_index = spr_mach4;
		momemtum = true;
		state = states.mach3;
		image_index = 0;
		xscale *= -1;
		instance_create(x, y, obj_jumpdust);
	}
	else if (!grounded) && animation_end() && sprite_index == spr_machslideboost3
		sprite_index = spr_machslideboost3fall
	if (grounded && sprite_index == spr_machslideboostfall)
	{
		movespeed = 8.30;
		momemtum = true;
		state = states.mach2;
		sprite_index = spr_mach;
		image_index = 0;
		xscale *= -1;
		instance_create(x, y, obj_jumpdust);
	}
	if (grounded && sprite_index == spr_machslideboost3fall)
	{
		movespeed = 12;
		sprite_index = spr_mach4;
		momemtum = true;
		state = states.mach3;
		image_index = 0;
		xscale *= -1;
		instance_create(x, y, obj_jumpdust);
	}
	if !instance_exists(obj_dashcloud) && grounded
	{
		with (instance_create(x, y, obj_dashcloud))
		{
			image_xscale = other.xscale;
			other.dashcloudid = id;
		}
	}
}
