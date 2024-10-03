if sprite_index != spr_pizzaportal && sprite_index != spr_pizzaportal_outline
{
	pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, false);
	draw_self();
	shader_reset();
}
else if sprite_index == spr_pizzaportal_outline
	draw_sprite_ext(sprite_index, image_index, x, y + Wave(-2, 2, 1, 5), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
else
	draw_self();