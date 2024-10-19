if (global.spaceblockswitch == false)
{
    //x = (-abs(sprite_width))
    //y = (-abs(sprite_height))
    sprite_index = spr_redswitchblock
	mask_index = spr_null
    image_alpha = 0.5
}
else if (global.spaceblockswitch == true && (x != xstart || sprite_index != spr_blueswitchblock) && (!(place_meeting(xstart, ystart, obj_player))) && (!(place_meeting(xstart, ystart, obj_baddie))))
{
    mask_index = spr_blueswitchblock
    sprite_index = spr_blueswitchblock
    //x = xstart
    //y = ystart
    image_alpha = 1
}
