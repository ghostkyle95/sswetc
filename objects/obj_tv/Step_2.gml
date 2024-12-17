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
		scr_sound(sfx_comboend);
		chooseOnecomboend = true;
	}
}
comboendImage += 0.35;
if (!combocanFade)
	combofade = clamp(combofade + 0.25, 0, 25);
else
	combofade = clamp(combofade - 0.05, 0, 25);
if (draw_combo != global.combo && global.combotime > 0 && global.combo > 0)
{
	draw_combo = global.combo;
	ComboShake = true;
	alarm[2] = 20;
}
