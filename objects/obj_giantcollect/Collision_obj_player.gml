if (global.collectsound == 10)
{
	scr_sound(sfx_collect);
	scr_sound(sfx_giantcollect);
}
global.collectsound = 0;
scr_queue_tvanim(obj_tv.collecttvspr, 200);
global.collect += 1000;
global.pizzameter += 5;
create_small_number(x, y, "1000");
global.combofreeze = 30;
global.combotime = 60;
with (obj_player)
{
	if irandom_range(0,100) <= 25
		scr_happyvoiceline()
}
repeat (15)
	instance_create(x + random_range(-60, 60), y + random_range(-60, 60), obj_collecteffect);
instance_destroy();
