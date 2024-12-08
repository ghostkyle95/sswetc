function draw_option(_x, _y, _text, _color)
{
	draw_set_color(c_white);
	if (_color == 0)
		draw_set_color(0x666666);
	draw_text(_x, _y, _text);
	draw_set_color(c_white);
}

// genuinely cant be bothered to give the variables names rn
function draw_option_ext(_a, _b, _c, _d, _e, _f) {
	var _g = "ERROR";
	if is_array(_f) for (var _h = 0; _h < array_length(_f); _h++;) 
		if (_e == _h) _g = _f[_h];
	draw_set_color(_d ? c_white : c_grey);
	draw_text(_a, _b, $"{_c}: {_g}");
	draw_set_color(c_white);
}
