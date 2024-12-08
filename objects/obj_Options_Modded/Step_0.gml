if (canmove)
{
	scr_getinput();
	if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > 0)
	{
		optionselected -= 1;
		scr_sound(sfx_step);
		/*optionsaved_fullscreen = global.fullscreen;
		optionsaved_resolution = global.selectedResolution;
		optionsaved_smoothcam = global.smoothcam;
		optionsaved_screentilt = global.screentilt;
		optionsaved_hitstun = global.hitstunEnabled;*/
	}
	if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 2)
	{
		optionselected += 1;
		scr_sound(sfx_step);
		/*optionsaved_fullscreen = global.fullscreen;
		optionsaved_resolution = global.selectedResolution;
		optionsaved_smoothcam = global.smoothcam;
		optionsaved_screentilt = global.screentilt;
		optionsaved_hitstun = global.hitstunEnabled;*/
	}
	switch (optionselected)
	{
		case modded_selected.back:
			subtitle = "GO BACK TO MAIN SCREEN";
			CursorY = -999;
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				instance_destroy();
			}
			break;
		case modded_selected.debugmode:
			subtitle = "TOGGLE DEBUG MODE";
			CursorY = 100;
			optionsaved_debug += (key_right2 + key_left2);
			optionsaved_debug = wrap(optionsaved_debug, 0, 1);
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				global.debugmode = optionsaved_debug;
			}
			break;
		case modded_selected.combotype:
			subtitle = "CHOOSE THE STYLE OF YOUR COMBO HUD";
			CursorY = 200;
			optionsaved_combotype += (key_right2 + key_left2);
			optionsaved_combotype = wrap(optionsaved_combotype, 0, 2);
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				switch (optionsaved_combotype)
				{
					case 0:
						global.combohudtype = combotype.democombo;
						break;
					case 1:
						global.combohudtype = combotype.verticalcombo;
						break;
					case 2:
						global.combohudtype = combotype.horizontalcombo;
						break;
				}
				ini_open("optionData.ini");
				ini_write_real("Settings", "combotype", optionsaved_combotype);
				ini_close();
				global.selectedCombo = optionsaved_combotype;
			}
			break;
	}
	if (key_slap2 || key_start)
	{
		scr_sound(sfx_enemythrow);
		instance_destroy();
	}
	obj_Options_Main.CursorY = CursorY;
}
