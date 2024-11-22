with (obj_player)
{
	scr_hurtplayer()
}
with (instance_nearest(x, y, obj_sluggy))
{
	if (obj_sluggy.state != baddiestates.slugparry)
	{
		state = baddiestates.slugparry;
		sprite_index = spr_sluggy_parry;
		image_index = 0;
		movespeed = -8;
		flash = true;
		image_xscale = -sign(x - obj_player.x);
		scr_sound(sound_parry);
	}
}
