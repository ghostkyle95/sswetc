draw_sprite_tiled_ext(bg_paused, 0, x++, y++, 1 , 1,c_white, 0.8);
draw_rectangle_color(-5000, 0, 0, 1080, 2752517, 2752517, 2752517, 2752517, false);
draw_rectangle_color(960, 0, 5960, 1080, 2752517, 2752517, 2752517, 2752517, false);

pal_swap_set(chararray[chosencharacter].palettesprite, chararray[chosencharacter].palettenum, 0);
draw_sprite_ext(chararray[chosencharacter].idlesprite, image_index, 480, 270, 2, 2, 0, c_white, 1);
shader_reset();