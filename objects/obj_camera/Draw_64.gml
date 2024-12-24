if (global.levelname == "none") { global.collect = 0; exit; };

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
var _score = global.collect + floor(((global.combo^2) * 0.25) + (10 * global.combo)), _rframe = RANKS.D,
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

/* escape timer
draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(c_white);
if (global.panic) {
	var _clr = (global.minutes >= 1 ? c_white : c_red),
	_cln = (global.seconds >= 10 ? ":" : ":0");
	
	draw_set_color(_clr);
	draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, 
	$"{global.minutes}{_cln}{global.seconds}");
}*/
clock_index += 0.35
var timerx = 480
var timery = (605 + timer_y)
var perc = clamp((1 - (target_fill / global.maxwave)), 0, 1)
var harry_ypos = (-12 * perc)
var dist = clamp((perc * 268), 0, 268)
if global.panic
{
	timer_tonguesupindex += 0.35;
    if ((timer_tonguesupindex >= sprite_get_number(spr_coneball_bartimertonguesup)))
		timer_tonguesupindex = -1;
    if (((((global.minutes * 60) + global.seconds) * 60) > 0))
    {
		timer_coneballindex += 0.35;
		tongue_index += 0.35;
        if ((timer_coneballindex >= sprite_get_number(coneball_sprite)))
            timer_coneballindex= frac(timer_coneballindex);
        if ((tongue_index >= sprite_get_number(spr_coneball_bartimertonguesup)))
            tongue_index = 0;
    }
    else
    {
        if ((coneball_sprite == spr_coneball_bartimer))
        {
            coneball_sprite = spr_coneball_bartimesup
			timer_tonguesupindex = 0;
            timer_coneballindex = 0;
            timer_buffer = 200;
        }
        if ((timer_coneballindex < (sprite_get_number(coneball_sprite) - 1)))
            timer_coneballindex += 0.35;
    }
	target_fill = lerp(target_fill, (((global.minutes * 60) + global.seconds) * 60), 0.03)
	if ((coneball_sprite != spr_coneball_bartimesup))
	{
		draw_sprite_ext(spr_coneball_bartimer, timer_coneballindex, (timerx + 135), (timery - 20), 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_coneball_bartimertongue, timer_coneballindex, timerx + 7, timery + 3, 1, 1, 0, c_white, 1);
		draw_sprite_part(spr_coneball_bartimer_rolltrail, 0, 0, 0, (dist + 50), 113, (timerx - 182), (timery - 46));
		draw_sprite_ext(spr_coneball_bartimer_roll, roll_index, ((timerx - 140) + dist), ((timery + harry_ypos) + 36), 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_coneball_bartimerfront, timer_coneballindex, (timerx + 135), (timery - 20), 1, 1, 0, c_white, 1);
	}
	else if ((coneball_sprite == spr_coneball_bartimesup))
	{
		if timer_tonguesupindex != -1
			draw_sprite_ext(spr_coneball_bartimertonguesup, floor(timer_tonguesupindex), timerx, timery, 1, 1, 0, c_white, 1);
	}
	if ((coneball_sprite == spr_coneball_bartimesup))
		draw_sprite_ext(coneball_sprite, floor(timer_coneballindex), (timerx + 135), (timery - 20), 1, 1, 0, c_white, 1);
    var seconds;
    if global.seconds < 10
        seconds = concat("0", global.seconds);
    else
        seconds = string(global.seconds);
    draw_set_font(global.numberfont);
    var _offset = 0;
    if global.minutes < 1
        _offset = random_range(2, -2);
    draw_text(timer_x + 190 + _offset, 605 + timer_y + _offset - (sprite_get_yoffset(spr_font) / 2), concat(global.minutes, ":", seconds));
    draw_sprite(spr_coneball_bartimer_clock, clock_index, timer_x + 142 + _offset, 620 + timer_y + _offset - (sprite_get_yoffset(spr_font) / 2));
}
