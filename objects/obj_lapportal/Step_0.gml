if (global.panic)
{
    image_alpha = 1
    if (sprite_index == spr_pizzaportal)
    {
        playerid = noone
        with (obj_player)
        {
            if (other.playerid == noone && place_meeting(x, y, other))
            {
                state = states.actor
                visible = false
                other.sprite_index = spr_pizzaportalend
                other.image_index = 0
                other.playerid = id
                global.collect += 3000
                global.combotime = 60
				create_small_number(x, y, "3000")
            }
        }
    }
    else if (sprite_index == spr_pizzaportalend)
    {
        with (playerid)
        {
            hsp = 0
            vsp = 0
            visible = false
        }
        if (floor(image_index) == (image_number - 1))
        {
            image_index = image_number - 1
            image_speed = 0
            if (!instance_exists(obj_fadeout))
            {
                with (obj_player)
                {
                    targetDoor = "LAP"
                    targetRoom = other.targetRoom
                }
				if (global.laps > 2)
				{
					if (global.minutes != 0 && global.seconds != 0)
					{
						global.minutes = 0;
						global.seconds = 0;
					}
				}
                global.laps++
                global.lap = true
                instance_create(0, 0, obj_fadeout)
            }
        }
    }
}
else
    image_alpha = 0.5
