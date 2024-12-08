if (global.combotime > 0 && global.combo > 0)
{
	chooseOnecomboend = false;
	combocanFade = false;
}
if (global.combotime <= 0)
{
	if (!chooseOnecomboend)
	{
		instance_destroy(obj_comboend)
		instance_create(x,y,obj_comboend)
		scr_sound(sound_comboend);
		chooseOnecomboend = true;
	}
}
if (draw_combo != global.combo && global.combotime > 0 && global.combo > 0)
{
	draw_combo = global.combo;
	ComboShake = true;
	alarm[2] = 20;
}
