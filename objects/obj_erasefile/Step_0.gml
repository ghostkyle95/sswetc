scr_getinput();
if ((-key_left2 || keyboard_check_pressed(vk_left)) && optionselected > 0)
{
	optionselected -= 1;
	scr_sound(sfx_step);
}
if ((key_right2 || keyboard_check_pressed(vk_right)) && optionselected < 1)
{
	optionselected += 1;
	scr_sound(sfx_step);
}
if (optionselected && (key_jump || keyboard_check_pressed(vk_enter)))
{
	file_delete("saveData.ini");
	scr_sound(sfx_destroyblock1);
	scr_sound(sfx_explosion);
	instance_destroy();
}
if (key_slap2 || keyboard_check_pressed(vk_escape) || (!optionselected && (key_jump || keyboard_check_pressed(vk_enter))))
{
	scr_sound(sfx_enemythrow);
	instance_destroy();
}
