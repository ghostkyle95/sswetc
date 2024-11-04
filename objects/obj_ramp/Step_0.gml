var s = 16
if place_meeting(x, (y - s), obj_player)
{
    with (obj_player)
    {
        var by = 4
        if (state == states.mach3)
            by = 10
        var bx = 8
        if (state == states.mach3)
            bx = 18
        if ((state == states.mach2 || state == states.tumble || state == states.mach3 || state == states.trickjump) && y <= (other.y + by) && xscale == sign(other.image_xscale) && place_meeting(x, (y + s), other))
        {
            vsp = -12
            movespeed = 14
            if (sprite_index != spr_rampjump)
            {
                sprite_index = spr_rampjump
                image_index = 0
            }
            state = states.trickjump
            ramp_buffer = 16
        }
    }
}