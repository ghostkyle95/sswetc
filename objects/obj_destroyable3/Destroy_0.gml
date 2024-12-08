if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat (7)
	{
		with (instance_create(x + 32, y + 32, obj_debris))
			sprite_index = spr_bigdebris;
	}
	if (audio_is_playing(sfx_destroyblock1) || audio_is_playing(sfx_destroyblock2))
	{
		audio_stop_sound(sfx_destroyblock1);
		audio_stop_sound(sfx_destroyblock2);
	}
	scr_sound(choose(sfx_destroyblock1, sfx_destroyblock2));
	ds_list_add(global.saveroom, id);
}
