var shakeX = irandom_range(-Collectshake, Collectshake);
var shakeY = irandom_range(-Collectshake, Collectshake);
if (room != scootercutsceneidk && room != rm_credits && room != devroom && room != palroom && room != rank_room && room != realtitlescreen)
{
	pal_swap_set(spr_heatpal, heatpal, 0);
	draw_sprite_part_ext(spr_heatmeterunder, obj_stylebar.image_index, 0, 0, global.style * 4.25, sprite_get_height(spr_heatmeterunder), -6 + shakeX, 8 + DrawY + shakeY, 1, 1, c_white, 1);
	draw_sprite_ext(spr_heatmeter, obj_stylebar.image_index, 128 + shakeX, 96 + shakeY + DrawY, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_cakehud, obj_stylebar.image_index, 128 + shakeX, 96 + shakeY + DrawY, 1, 1, 0, c_white, 1);
	if (global.collect > global.crank)
		draw_sprite_ext(spr_cranktopping, obj_stylebar.image_index, 128 + shakeX, 96 + shakeY + DrawY, 1, 1, 0, c_white, 1);
	if (global.collect > global.brank)
		draw_sprite_ext(spr_branktopping, obj_stylebar.image_index, 128 + shakeX, 96 + shakeY + DrawY, 1, 1, 0, c_white, 1);
	if (global.collect > global.arank)
		draw_sprite_ext(spr_aranktopping, obj_stylebar.image_index, 128 + shakeX, 96 + shakeY + DrawY, 1, 1, 0, c_white, 1);
	if (global.collect > global.srank)
		draw_sprite_ext(spr_sranktopping, obj_stylebar.image_index, 128 + shakeX, 96 + shakeY + DrawY, 1, 1, 0, c_white, 1);
	shader_reset();
	draw_set_font(global.collectfont);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	var _string = string(global.collect);
	var _string_length = string_length(_string);
	for (var i = 0; i < _string_length; i++)
	{
		var _xx = 140 + (-(string_width(_string) / 2) + ((string_width(_string) / _string_length) * i));
		var _yyoffset = ((i % 2) == 0) ? -4 : 0;
		draw_text(_xx + shakeX, 29 + obj_stylebar.hudbounce + _yyoffset + DrawY + shakeY, string_char_at(_string, i + 1));
	}
	
	// rank bubble
	enum RANKS { D, C, B, A, S };
	var _score = global.collect, _rframe = RANKS.D,
	_rw = sprite_get_width(spr_rankbubble), _rh = sprite_get_height(spr_rankbubble),
	_rxo = sprite_get_xoffset(spr_rankbubble), _ryo = sprite_get_yoffset(spr_rankbubble),
	_rx = 217 + _rxo, _ry = 22 + _ryo + DrawY;
	
	if (_score >= global.srank) _rframe = RANKS.S;
	else if (_score >= global.arank) _rframe = RANKS.A;
	else if (_score >= global.brank) _rframe = RANKS.B;
	else if (_score >= global.crank) _rframe = RANKS.C;
	
	if (oldrank != _rframe) {
		if (_score > 0) ranksize = 2.5;
		oldrank = _rframe;
	}
	ranksize = approach(ranksize, 1, 0.1);
	
	var _rlocal = global.crank, _rminus = 0;
	switch (_rframe) {
		case (RANKS.A): _rlocal = global.srank; _rminus = global.arank; break;
		case (RANKS.B): _rlocal = global.arank; _rminus = global.brank; break;
		case (RANKS.C): _rlocal = global.brank; _rminus = global.crank; break;
	}
	var _rfill = (_score - _rminus) / ( _rlocal - _rminus), 
	_t = _rh * _rfill, _top = _rh - _t;
	
	draw_sprite_ext(spr_rankbubble, _rframe, _rx, _ry, ranksize, ranksize, 0, c_white, 1);
	if (_rframe < RANKS.S)
		draw_sprite_part_ext(spr_rankfill, _rframe, 0, _top, _rw, _rh - _top, 
		_rx - (_rxo * ranksize), (_ry + (_top * ranksize)) - (_ryo * ranksize), ranksize,
		ranksize, c_white, 1);
}
draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(c_white);
if (global.panic || global.starrmode)
{
	if (global.seconds < 10)
	{
		if (global.minutes < 1)
			draw_set_color(c_red);
		else
			draw_set_color(c_white);
		draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ":0" + string(global.seconds)));
	}
	else if (global.seconds >= 10)
	{
		if (global.minutes < 1)
			draw_set_color(c_red);
		else
			draw_set_color(c_white);
		draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ":" + string(global.seconds)));
	}
}
