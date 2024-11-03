with (obj_tv)
{
	message = "YOU HAVE FOUND A SECRET!";
	showtext = true;
	alarm[0] = 150;
}
global.secretsfound += 1
scr_sound(sound_secretgot);
instance_destroy();
