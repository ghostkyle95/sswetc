if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat (4)
		instance_create(x + 16, y + 16, obj_geyserdestroydebris);
	image_speed = 0.35;
	if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
	{
		audio_stop_sound(sound_destroyblock1);
		audio_stop_sound(sound_destroyblock2);
	}
	scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
	ds_list_add(global.saveroom, id);
}
