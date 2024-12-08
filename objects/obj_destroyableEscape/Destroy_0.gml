if (ds_list_find_index(global.escaperoom, id) == -1)
{
	var rep = 4 + ((sprite_width / 32) - 1);
	repeat (rep)
	{
		with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_debris))
			sprite_index = spr_smallbreak2Escape_Debris;
	}
	if (audio_is_playing(sfx_destroyblock1) || audio_is_playing(sfx_destroyblock2))
	{
		audio_stop_sound(sfx_destroyblock1);
		audio_stop_sound(sfx_destroyblock2);
	}
	scr_sound(choose(sfx_destroyblock1, sfx_destroyblock2));
	ds_list_add(global.escaperoom, id);
}
