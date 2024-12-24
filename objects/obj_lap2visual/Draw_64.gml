var xx = (irandom_range(-1, 1))
var yy = (irandom_range(-1, 1))

pal_swap_set(spr_lappal, palette, 0);

draw_sprite(sprite_index, 0, (x + xx), (y + yy));

draw_set_font(global.lapfont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + 32 + xx, (y + yy) - 64, string(global.laps+1))

shader_reset();