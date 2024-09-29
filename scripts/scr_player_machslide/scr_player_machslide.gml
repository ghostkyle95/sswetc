function scr_player_machslide()
{
	if (sprite_index == spr_player_hurtroll && grounded)
		sprite_index = spr_player_crouchslide;
	if (sprite_index == spr_player_crouchslide && movespeed <= 0)
		state = states.normal;
	if (sprite_index == spr_machslidestart && floor(image_index) == (image_number - 1))
		sprite_index = spr_machslide;
	hsp = movespeed * xscale
	movespeed = approach(movespeed, 0, 0.5);
	image_speed = 0.35;
	landAnim = false;
	if (floor(movespeed) <= 0 && (sprite_index == spr_machslide || sprite_index == spr_player_crouchslide))
	{
		image_index = 0;
		if (sprite_index == spr_machslide)
			machslideAnim = true;
		movespeed = 0;
		state = states.normal;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideboost && mach2 != 0)
	{
		movespeed = 8.30;
		momemtum = true;
		state = states.mach2;
		sprite_index = spr_player_mach;
		image_index = 0;
		xscale *= -1;
		instance_create(x, y, obj_jumpdust);
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_machslideboost3 && mach2 != 0)
	{
		movespeed = 12;
		sprite_index = spr_player_mach4;
		scr_sound(sound_dash2);
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
