depth = 0
image_speed = 0.35
switch sprite_index
{
    case spr_secretportal_spawnopennew:
        with (obj_player)
        {
            if (object_index != obj_player2 || global.coop)
            {
                x = other.x
                y = other.y
                roomstartx = x
                roomstarty = y
                hsp = 0
                vsp = 0
                movespeed = 0
                cutscene = true
                visible = false
            }
        }
        waitbuffer = 80
        drop = false
        if (floor(image_index) == (image_number - 1))
        {
            sprite_index = spr_secretportal_spawnidle
            with (obj_player)
            {
					if (tauntstoredstate != states.cotton && tauntstoredstate != states.cottondrill && tauntstoredstate != states.cottonroll && tauntstoredstate != states.minecart)
					{
                        visible = true
                        cutscene = false
                        sprite_index = spr_bodyslamstart
                        image_index = 0
                        state = states.freefallprep
                        freefallsmash = 0
                        vsp = -5
					}
					else
					{
                        visible = true
                        cutscene = false
                        state = tauntstoredstate
                        movespeed = tauntstoredmovespeed
                        hsp = tauntstoredhsp
                        sprite_index = tauntstoredsprite
					}
            }
        }
        break
    case spr_secretportal_spawnidle:
        if (!drop)
        {
            with (obj_player)
            {
                    x = other.x
                    y = other.y - 10
                    visible = true
                    hsp = 0
                    movespeed = 0
                    vsp = 10
                    scale_xs = Approach(scale_xs, 1, 0.05)
                    scale_ys = Approach(scale_ys, 1, 0.05)
                    fallinganimation = 0
                    if (scale_xs == 1)
                        other.drop = true
                    if other.drop
                    {
                        if ((!isgustavo) && (tauntstoredstate == states.cotton || tauntstoredstate == states.cottonroll || tauntstoredstate == states.cottondrill || tauntstoredstate == states.minecart))
                        {
                            state = tauntstoredstate
                            movespeed = tauntstoredmovespeed
                            hsp = tauntstoredhsp
                            sprite_index = tauntstoredsprite
                            if (state == states.actor || state == states.backbreaker || state == states.chainsaw || state == states.machcancel)
                            {
                                sprite_index = spr_bodyslamstart
                                image_index = 0
                                state = states.freefallprep
                                freefallsmash = 0
                                vsp = -5
                            }
                        }
                    }
            }
        }
        if drop
        {
            if (waitbuffer > 0)
                waitbuffer--
            else
            {
                sprite_index = spr_secretportal_spawnclosenew
                image_index = 0
            }
        }
        break
    case spr_secretportal_spawnclosenew:
        if (floor(image_index) == (image_number - 1))
        {
            image_index = image_number - 1
            instance_destroy()
        }
        break
}

