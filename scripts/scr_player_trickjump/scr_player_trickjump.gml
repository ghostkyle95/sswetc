function scr_player_trickjump() //gml_Script_scr_player_trickjump
{
    hsp = movespeed * xscale
    if (sprite_index != spr_supertaunt1 && sprite_index != spr_supertaunt2 && sprite_index != spr_supertaunt3)
    {
        if (character != CHARACTERS.NOISE)
            image_speed = 0.35
        if (sprite_index == spr_rampjump && floor(image_index) == (image_number - 1))
            image_index = image_number - 1
    }
    else
    {
        if (character != CHARACTERS.NOISE)
            image_speed = 0.5
        if (floor(image_index) == (image_number - 1))
            sprite_index = spr_rampjump
    }
    if (scr_solid((x + xscale), y) && (!scr_slope()) && (place_meeting((x + sign(hsp)), y, obj_solid)) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        state = states.bump
        image_index = 0
        sprite_index = spr_wallsplat
    }
    if (ramp_buffer > 0)
        ramp_buffer--
    if (character == CHARACTERS.NOISE)
        image_speed = approach(image_speed, 0.4, 0.1)
    if (grounded && ramp_buffer <= 0)
    {
        image_speed = 0.5
        if (sprite_index == spr_rampjump)
        {
            sprite_index = spr_rollgetup
            if (movespeed < 12)
                state = states.mach2
            else
                state = states.mach3
        }
        else
        {
            state = states.freefallland
            sprite_index = spr_bodyslamland
            image_index = 0
        }
        ramp = false
    }
}

