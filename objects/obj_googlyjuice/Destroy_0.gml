if (ds_list_find_index(global.baddieroom, id) == -1)
{
	scr_sound(sfx_glassbreak);
	with (instance_create(x, y, obj_puddle))
		vsp = -4;
}
repeat (10)
{
	with (instance_create(x, y, obj_debris))
	{
		sprite_index = spr_juicedebris;
		image_index = irandom_range(1,10)
	}
}
event_inherited();
