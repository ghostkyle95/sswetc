draw_set_halign(fa_center);
draw_set_font(global.font);
draw_sprite_tiled(bg_options, 0, x++, y++);

var _xpos = instance_exists(obj_Options_Modded) ? 50 : 250;
draw_sprite_ext(spr_arrow, -1, _xpos, CursorY + 24, 1, 1, 0, c_white, 1);

if (!selected)
{
	draw_option(150, 30, "BACK", optionselected == option_selected.back);
	draw_option(480, 100, "AUDIO CONFIG", optionselected == option_selected.audio);
	draw_option(480, 200, "VIDEO CONFIG", optionselected == option_selected.video);
	draw_option(480, 300, "CONTROL CONFIG", optionselected == option_selected.input);
	draw_option(480, 400, "MODDED CONFIG", optionselected == option_selected.modded);
	draw_set_font(global.smallfont);
	draw_text(480, 512, subtitle);
}
