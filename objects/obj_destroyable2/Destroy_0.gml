if (ds_list_find_index(global.saveroom, id) == -1)
{
	instance_create(x + 16, y, obj_debris2);
	instance_create(x + 16, y, obj_debris2);
	instance_create(x + 16, y, obj_debris2);
	instance_create(x + 16, y, obj_debris2);
	if (global.collectsound == 10)
		scr_sound(sfx_collect);
		global.collectsound = 0;
		global.collect += 10;
		global.pizzameter += 1;
		create_small_number(x + 16, y, "10");
		global.combofreeze = 30;
		global.combotime += 10;
		with (instance_create(x, y, obj_collecteffect))
		{
			choosed = true;
		}
	if (audio_is_playing(sfx_destroyblock1) || audio_is_playing(sfx_destroyblock2))
	{
		audio_stop_sound(sfx_destroyblock1);
		audio_stop_sound(sfx_destroyblock2);
	}
	scr_sound(choose(sfx_destroyblock1, sfx_destroyblock2));
	ds_list_add(global.saveroom, id);
}
