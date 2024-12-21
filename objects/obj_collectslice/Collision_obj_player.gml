global.collect += 25;
global.combofreeze = 30;
global.combotime += 30;
create_small_number(x, y, "25");
if (audio_is_playing(sfx_collect))
	audio_stop_sound(sfx_collect);
scr_sound(sfx_collect);
repeat (3)
	instance_create(x + random_range(-5, 5), y + random_range(-5, 5), obj_collecteffect);
instance_destroy();
