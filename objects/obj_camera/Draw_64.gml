if (!is_level())
	exit;

var shakeX = irandom_range(-Collectshake, Collectshake), 
shakeY = irandom_range(-Collectshake, Collectshake);

// cake hud
var _sframe = obj_stylebar.image_index, _cx = 128 + shakeX, _cy = 96 + shakeY + DrawY;
pal_swap_set(spr_heatpal, heatpal, 0);
	
draw_sprite(spr_cakehud, _sframe, _cx, _cy);
if (global.collect > global.crank) draw_sprite(spr_cranktopping,  _sframe, _cx, _cy);
if (global.collect > global.brank) draw_sprite(spr_branktopping,  _sframe, _cx, _cy);
if (global.collect > global.arank) draw_sprite(spr_aranktopping,  _sframe, _cx, _cy);
if (global.collect > global.srank) draw_sprite(spr_sranktopping,  _sframe, _cx, _cy);
	
shader_reset();
	
// score counter
draw_set_font(global.collectfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
var _string = string(global.collect);
var _string_length = string_length(_string);
if savedcollect != global.collect
{
    color_array = array_create(_string_length, 0)
    for (var _i = 0; _i < array_length(color_array); _i++)
		color_array[_i] = choose(irandom_range(1,8))
	savedcollect = global.collect;
}

for (var i = 0; i < _string_length; i++)
{
	var _xx = 140 + (-(string_width(_string) / 2) + ((string_width(_string) / _string_length) * i));
	var _yyoffset = ((i % 2) == 0) ? -4 : 0;
    var c = color_array[i]
    pal_swap_set(spr_fontcollect_pal, c, 0)
	draw_text(_xx + shakeX, 29 + obj_stylebar.hudbounce + _yyoffset + DrawY + shakeY, string_char_at(_string, i + 1));
    pal_swap_reset()
}
	
// rank bubble
enum RANKS { D, C, B, A, S, P };
var _score = global.collect, _rframe = RANKS.D,
_rw = sprite_get_width(spr_rankbubble), _rh = sprite_get_height(spr_rankbubble),
_rxo = sprite_get_xoffset(spr_rankbubble), _ryo = sprite_get_yoffset(spr_rankbubble),
_rx = 217 + _rxo, _ry = 22 + _ryo + DrawY;
	
if (_score >= global.srank)
{
	if (global.secretsfound == 3 && global.combodropped == false && global.combo != 0 && global.lap == true)
		_rframe = RANKS.P;
	else
		_rframe = RANKS.S;
}
else if (_score >= global.arank) 
	_rframe = RANKS.A;
else if (_score >= global.brank) 
	_rframe = RANKS.B;
else if (_score >= global.crank) 
	_rframe = RANKS.C;
	
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

// escape timer
draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(c_white);
if (global.panic) {
	var _clr = (global.minutes >= 1 ? c_white : c_red),
	_cln = (global.seconds >= 10 ? ":" : ":0");
	
	draw_set_color(_clr);
	draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, 
	$"{global.minutes}{_cln}{global.seconds}");
}
