with (obj_player)
{
	if (state != states.Sjump)
	{
		scr_sound(sfx_sjump);
		sprite_index = spr_superjump;
		state = states.Sjump;
		sjumpspeed = 12;
		vsp = -12;
		other.image_index = 0;
		other.image_speed = 0.35;
		freefallsmash = 0;
	}
}
obj_player.x = x;
