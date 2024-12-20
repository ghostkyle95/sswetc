if (ds_list_find_index(global.escaperoom, id) == -1)
{
	var rep = 4 + ((sprite_width / 32) - 1);
	repeat (rep)
	{
		with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_metaldebris))
			sprite_index = spr_metalblockEscape_Debris;
	}
	with (obj_camera)
	{
		shake_mag = 20;
		shake_mag_acc = 40 / room_speed;
	}
	scr_sound(sfx_metaldestroy);
	ds_list_add(global.escaperoom, id);
}
