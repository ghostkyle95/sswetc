// nikocado peter plus
var _draw = (nik_validspr ? sprite_index : spr_playerNIK_idle);

pal_swap_set(spr_palette, paletteselect, 0);
draw_sprite_ext(_draw, image_index, x, y, (xscale*scale_xs), (yscale*scale_ys), draw_angle, image_blend, image_alpha);
shader_reset();

if flash {
	shader_set(shd_hit);
	draw_sprite_ext(_draw, image_index, x, y, (xscale*scale_xs), (yscale*scale_ys), draw_angle, image_blend, image_alpha);
	if (alarm[11] <= 0) alarm[11] = 5;
	shader_reset();
};

if (global.debugmode)
{
	draw_set_font(font_dev);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x, y - 150, movespeed);
	draw_text(x, y - 125, string_upper(sprite_get_name(_draw)));
	draw_text(x, y - 100, hsp);
	draw_text(x, y - 75, vsp);
	draw_text(x, y - 50, "State: " + string(state) + ", " + string(stateName));
	draw_text(x, y - 25, string_upper(room_get_name(room)));
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	draw_set_halign(fa_left);
}
