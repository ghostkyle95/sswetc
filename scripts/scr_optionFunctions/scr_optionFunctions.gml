function draw_option(_x, _y, _text, _color)
{
	draw_set_color(c_white);
	if (_color == 0)
		draw_set_color(0x666666);
	draw_text(_x, _y, _text);
	draw_set_color(c_white);
}

function draw_option_ext(_x, _y, _text, _color, _save, _array) {
	var _value = "ERROR";
	if is_array(_array) for (var _i = 0; _i < array_length(_array); _i++;) 
		if (_save == _i) _value = _array[_i];
	draw_set_color(_color ? c_white : 0x666666);
	draw_text(_x, _y, $"{_text}: {_value}");
	draw_set_color(c_white);
}
