if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat (4)
		instance_create(x + 16, y + 16, obj_geyserdestroydebris);
	image_speed = 0.35;
	if (audio_is_playing(sfx_destroyblock1) || audio_is_playing(sfx_destroyblock2))
	{
		audio_stop_sound(sfx_destroyblock1);
		audio_stop_sound(sfx_destroyblock2);
	}
	scr_sound(choose(sfx_destroyblock1, sfx_destroyblock2));
	ds_list_add(global.saveroom, id);
}
