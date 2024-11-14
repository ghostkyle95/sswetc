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
                global.lap = true
                global.laps++
				if (global.laps == 2)
				{
					if (global.minutes != 0 && global.seconds != 0)
					{
						global.minutes = 0;
						global.seconds = 0;
					}
				}
                for (var i = 0; i < ds_list_size(global.escaperoom); i++)
                {
                    var b = ds_list_find_value(global.escaperoom, i)
                    var q = ds_list_find_index(global.baddieroom, b)
                    var t = false
                    if (q == -1)
                    {
                        q = ds_list_find_index(global.saveroom, b)
                        t = true
                    }
                    if (q != -1)
                    {
                        if (!t)
                            ds_list_delete(global.baddieroom, q)
                        else
                            ds_list_delete(global.saveroom, q)
                    }
                }
				ds_list_clear(global.escaperoom);
                instance_create(0, 0, obj_fadeout)
            }
        }
    }
}
else
    image_alpha = 0.5
