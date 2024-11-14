if (ds_list_find_index(global.escaperoom, id) == -1)
{
	with (instance_create(x + 32, y + 32, obj_debris))
		sprite_index = spr_bigbreakEscape_Debris;
	repeat (3)
	{
		with (instance_create(x + 32, y + 32, obj_debris))
			sprite_index = spr_bigbreakEscape_Debris;
		with (instance_create(x + 32, y + 32, obj_debris))
			sprite_index = spr_bigbreakEscape_Debris;
	}
	if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
	{
		audio_stop_sound(sound_destroyblock1);
		audio_stop_sound(sound_destroyblock2);
	}
	scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
	ds_list_add(global.escaperoom, id);
	
	global.collect += 100;
	global.combofreeze = 120;
	global.combotime = 60;
	create_small_number(x, y, "100");
	if (audio_is_playing(sound_points))
		audio_stop_sound(sound_points);
	scr_sound(sound_points);
	with (instance_create(x, y, obj_collecteffect))
	{
		sprite_index = spr_collectslice
		choosed = true;
	}
}
