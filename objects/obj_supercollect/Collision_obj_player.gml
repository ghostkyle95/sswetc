if (global.collectsound == 10)
	scr_sound(sfx_collect);
global.collectsound = 0;
global.collect += 1000000000000000000000000000000000000000000000000000000000000000000000000000000000;
global.pizzameter += 1;
create_small_number(x, y, "10");
global.combofreeze = 30;
instance_destroy();
