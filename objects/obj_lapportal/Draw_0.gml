if (sprite_index != spr_pizzaportal)
{
    pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0)
    draw_self()
}
else
    draw_self()
