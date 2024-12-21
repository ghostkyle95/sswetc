draw_sprite_tiled_ext(bg_characterselect, 0, x++, y++, 1, 1, c_white, 0.8);
draw_rectangle_color(-5000, 0, 0, 1080, 2752517, 2752517, 2752517, 2752517, false);
draw_rectangle_color(960, 0, 5960, 1080, 2752517, 2752517, 2752517, 2752517, false);

var _char = characters[selected], _xmid = camera_get_view_width(view_camera[0]) / 2, 
_ymid = camera_get_view_height(view_camera[0]) / 2;

pal_swap_set(_char.palette, 1, 0);
image_speed = 0.35;
draw_sprite_ext(_char.sprite_index, image_index, _xmid, _ymid + 25, 2, 2, 0, c_white, 1);
shader_reset();

draw_set_font(global.tvfont);
draw_set_halign(fa_center);
draw_text(_xmid, _ymid + 75, _char.name);
