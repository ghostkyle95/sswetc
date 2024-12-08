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
