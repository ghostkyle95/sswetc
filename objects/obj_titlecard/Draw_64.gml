if (start)
{
	draw_sprite(titlecard_sprite, titlecard_index, titlecardx, 0);
	var s = 1;
	draw_sprite(title_sprite, title_index, titlecardtitlex, titlecardtitley + bobbingtitle);
	
	for (var i = 0; i < array_length(noisehead); i++)
    {
        var head = noisehead[i]
        if (!head.visible)
        {
        }
        else
        {
            head.visual_scale = approach(head.visual_scale, 1, 0.25)
			pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0);
            draw_sprite_ext(spr_titlecard_noise, head.image_index, head.x, head.y, (head.scale * head.visual_scale), (head.scale * head.visual_scale), 0, c_white, 1)
			pal_swap_reset()
        }
    }
}
if (!instance_exists(obj_fadeout))
	draw_set_alpha(fadealpha);
else
	draw_set_alpha(obj_fadeout.fadealpha);
draw_rectangle_color(0, 0, 10000, 10000, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
bobbingtitle = wave(3, -3, 2, 0)