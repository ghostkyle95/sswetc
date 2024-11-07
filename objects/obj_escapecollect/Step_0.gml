if (collectvanish && collectboxid.activated)
{
	x = xstart;
	y = ystart;
	instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_cloudeffect);
	repeat (3)
		instance_create(x + (sprite_width / 2) + random_range(-5, 5), y + (sprite_height / 2) + random_range(-5, 5), obj_cloudeffect);
	collectvanish = false;
	in_the_void = false;
}
if (global.collectsound < 10)
	global.collectsound += 1;
if (!global.panic)
	image_alpha = 0.5;
if (OldPanic != global.panic && global.panic && !place_meeting(xstart, ystart, obj_player))
{
	image_alpha = 1;
	OldPanic = global.panic;
	instance_create(x, y, obj_poofeffectsmall);
}
