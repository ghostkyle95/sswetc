bgx++;
bgy++;
if (selected == 0)
{
	scr_getinput();
	if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > 0)
	{
		optionselected -= 1;
		scr_sound(sfx_step);
	}
	if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 4)
	{
		optionselected += 1;
		scr_sound(sfx_step);
	}
	switch (optionselected)
	{
		case option_selected.back:
			subtitle = "GO BACK TO MAIN SCREEN";
			CursorY = -999;
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				instance_destroy();
			}
			break;
		case option_selected.audio:
			subtitle = "ADJUST AUDIO SETTINGS";
			CursorY = 100;
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				selected = true;
				instance_create(0, 0, obj_Options_Audio);
			}
			break;
		case option_selected.video:
			subtitle = "ADJUST VIDEO SETTINGS";
			CursorY = 200;
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				selected = true;
				instance_create(0, 0, obj_Options_Video);
			}
			break;
		case option_selected.input:
			subtitle = "CHANGE CONTROL INPUTS";
			CursorY = 300;
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				selected = true;
				instance_create(0, 0, obj_Options_Input);
			}
			break;
		case option_selected.modded:
			subtitle = string_upper("ADJUST MODDED SETTINGS");
			CursorY = 400;
			if (key_jump)
			{
				scr_sound(sfx_enemythrow);
				selected = true;
				instance_create(0, 0, obj_Options_Modded);
			}
			break;
		case option_selected.misc:
			subtitle = string_upper("Adjust Miscellaneous Settings");
			CursorY = 500;
			if (key_jump)
				scr_sound(sfx_enemythrow);
			break;
	}
	if (key_slap2 || key_start)
	{
		scr_sound(sfx_enemythrow);
		instance_destroy();
	}
}
