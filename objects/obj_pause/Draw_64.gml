if (!pause) exit;

// screenshot
var _camera = { x : view_xport[0], width : view_wport[0], y : view_yport[0], height : view_hport[0] };
draw_rectangle_color(0, 0, _camera.x + _camera.width, _camera.y + _camera.height, c_black, c_black, c_black, c_black, false);
draw_sprite(screenshot, 0, 0, 0);

// bg
draw_sprite_tiled_ext(bg_paused, 0, x++, y++, 1, 1, c_white, 0.5);
draw_rectangle_color(-5000, 0, 0, 1080, 2752517, 2752517, 2752517, 2752517, false);
draw_rectangle_color(960, 0, 5960, 1080, 2752517, 2752517, 2752517, 2752517, false);
draw_sprite(spr_pause, 0, 0, 0);

// buttons
var _button = function(_x, _y, _nam) constructor { x = _x; y = _y; name = _nam; return; }, 
_options = [ new _button(153, 9, "RESUME"), new _button(114, 130, "RETRY"), new _button(71, 256, "EXIT"), new _button(30, 382, "OPTIONS") ];
draw_set_font(global.font); draw_set_halign(fa_left); draw_set_color(c_white);
for (var _i = 0; _i < array_length(_options); _i++) { 
	draw_sprite(spr_pausebutton, selected == _i, _options[_i].x, _options[_i].y); 
	draw_text(_options[_i].x + 100, _options[_i].y + 40, _options[_i].name);
};

// confecti
draw_sprite(spr_pauseconfecti1, global.mallowfollow, 0, 0);
draw_sprite(spr_pauseconfecti2, global.chocofollow, 0, 0);
draw_sprite(spr_pauseconfecti3, global.crackfollow, 0, 0);
draw_sprite(spr_pauseconfecti4, global.wormfollow, 0, 0);
draw_sprite(spr_pauseconfecti5, global.candyfollow, 0, 0);

// pizzelle
pal_swap_set(spr_pal, palette, 0);
draw_sprite(spr_pizzelle_pause, global.panic, 686, 285);
shader_reset();

// time
if (global.levelname != "none") {
	draw_set_halign(fa_center);
	var _bullshit = (global.playseconds < 10 ? "0" : "");
	draw_text(86, 32, $"{global.playminutes}:{_bullshit}{global.playseconds}");
} else { global.playminutes = 0; global.playseconds = 0; };
