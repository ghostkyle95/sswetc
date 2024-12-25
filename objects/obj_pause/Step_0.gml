scr_getinput();
if (!pause && !instance_exists(obj_fadeout))
{
	if (!global.shellactivate && key_start2 && room != rank_room && room != realtitlescreen && canmove && !instance_exists(obj_titlecard))
	{
		selected = 0;
		if (!instance_exists(obj_pausefadeout))
			instance_create(x, y, obj_pausefadeout);
		
		// screenshot gameplay
		if sprite_exists(screenshot) sprite_delete(screenshot);
		screenshot = sprite_create_from_surface(application_surface, 0, 0, 
		surface_get_width(application_surface), surface_get_height(application_surface), 
		false, false, 0, 0);
	}
}
if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
	instance_destroy(obj_pausefadeout);
if (pause)
{
	if (canmove)
	{
		scr_getinput();
		if (key_down2 && selected < 3)
		{
			selected += 1;
			scr_sound(sfx_land);
		}
		if (key_up2 && selected > 0)
		{
			selected -= 1;
			scr_sound(sfx_land);
		}
		if (key_jump)
		{
			switch (selected)
			{
				case 0:
					if (!instance_exists(obj_pausefadeout))
						instance_create(x, y, obj_pausefadeout);
					break;
				case 1:
					event_user(1);
					break;
				case 2:
					event_user(2);
					break;
				case 3:
					event_user(3);
					break;
			}
		}
	}
}
if (!pause)
	pal = obj_player.paletteselect;
