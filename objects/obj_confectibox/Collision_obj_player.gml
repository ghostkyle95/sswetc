if (sprite_index != spr_confectiboxopen)
{
	var _content = instance_create(x + (sprite_width / 2), y + (sprite_height / 2), BoxContent);
	if (object_get_parent(_content.object_index) == par_confecti)
	{
		with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_explosioneffect))
		{
			sprite_index = spr_taunteffect;
			depth = -2;
		}
		scr_sound(sfx_confecticollected);
		global.collect += 1000;
		global.combofreeze = 30;
		global.combotime = 60;
	}
	if content == obj_confectimallow
		scr_queue_tvanim(obj_tv.marshtvspr, 200);
	else if content == obj_confectichoco
		scr_queue_tvanim(obj_tv.chocotvspr, 200);
	else if content == obj_confecticrack
		scr_queue_tvanim(obj_tv.smoretvspr, 200);
	else if content == obj_confectiworm
		scr_queue_tvanim(obj_tv.gummywormtvspr, 200);
	else if content == obj_confecticandy
		scr_queue_tvanim(obj_tv.candytvspr, 200);
	else
		scr_queue_tvanim(obj_tv.collecttvspr, 200);
	with (obj_player)
	{
		if irandom_range(0,100) <= 25
			scr_happyvoiceline()
	}
	sprite_index = spr_confectiboxopen;
	image_index = 0;
	ds_list_add(global.saveroom, id);
}
