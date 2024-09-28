if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat (2)
	{
		instance_create(x + 16, y + 16, obj_debris2);
		with (instance_create(x + 16, y + 16, obj_debris2))
			sprite_index = spr_smallbreakEscape_Debris;
		with (instance_create(x + 16, y + 16, obj_debris2))
			sprite_index = spr_smallbreakEscape_Debris;
	}
	if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
	{
		audio_stop_sound(sound_destroyblock1);
		audio_stop_sound(sound_destroyblock2);
	}
	scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
	ds_list_add(global.saveroom, id);
	if (global.collectsound == 10)
		scr_sound(sound_points);
		global.collectsound = 0;
		global.collect += 10;
		global.pizzameter += 1;
		create_small_number(x + 16, y, "10");
		global.combofreeze = 30;
		global.combotime += 1;
		with (instance_create(x, y, obj_collecteffect))
		{
			sprite_index = other.sprite_index;
			choosed = true;
		}
}
