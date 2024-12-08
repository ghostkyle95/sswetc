with (obj_player)
{
	with (obj_player)
	{
		if (state == states.cheesepep || state == states.cheesepepstick)
		{
			scr_sound(sfx_metaldestroy);
			obj_player.grav = 0.5;
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			instance_create(x, y, obj_slimedebris);
			if (x != other.x)
				obj_player.hsp = sign(x - other.x) * 5;
			else
				obj_player.hsp = 5;
			vsp = -3;
			image_index = 0;
			obj_player.image_index = 0;
			obj_player.flash = true;
			state = states.bump;
		}
		else if (state != states.hurt && !hurted && !cutscene && state != states.bump)
		{
			scr_hurtplayer()
		}
		freefallsmash = 0;
	}
}
with (instance_nearest(x, y, obj_sluggy))
{
	state = baddiestates.slugparry;
	sprite_index = spr_sluggy_parry;
	image_index = 0;
	movespeed = -8;
	flash = true;
	image_xscale *= obj_player.image_xscale;
}
alarm[0] = 1;
