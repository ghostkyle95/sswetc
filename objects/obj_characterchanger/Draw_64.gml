draw_sprite_tiled_ext(bg_characterselect, 0, x++, y++, 1, 1, c_white, 0.8);
draw_rectangle_color(-5000, 0, 0, 1080, 2752517, 2752517, 2752517, 2752517, false);
draw_rectangle_color(960, 0, 5960, 1080, 2752517, 2752517, 2752517, 2752517, false);

var _char = characters[selected], _xmid = camera_get_view_width(view_camera[0]) / 2, 
_ymid = camera_get_view_height(view_camera[0]) / 2;

image_speed = 0.35;
pal_swap_set(_char.palette, 1, 0);
draw_sprite_ext(_char.sprite_index, image_index, _xmid, _ymid - 25, 2, 2, 0, c_white, 1);
shader_reset();

draw_set_font(global.tvfont); 
draw_set_halign(fa_center); 
draw_text(_xmid, _ymid + 75, _char.name);

draw_set_font(global.smallfont); 
draw_text(_xmid, _ymid + 125, $"{selected + 1} OUT OF {array_length(characters)}");

var _flip = 1;
repeat (2) {
	draw_sprite_ext(spr_uparrow, 0, _xmid - 125 * _flip, _ymid, 1, 1, 90 * _flip, c_white, 1);
	_flip = -1;
};
