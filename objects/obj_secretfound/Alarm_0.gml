global.secretsfound += 1
with (obj_tv)
{
	message = "You've found "+string(global.secretsfound)+" out of 3 secrets!";
	showtext = true;
	alarm[0] = 150;
}
scr_sound(sfx_secretfound);
instance_destroy();
