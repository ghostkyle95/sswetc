if (timer > 0)
    timer--
else
{
    timer = timer_max
    if (comboscore > 0)
    {
        //if (combominus <= 1)
            //combominus = 1
        comboscore -= 1;
        with (instance_create(obj_player.x, obj_player.y, obj_collecteffect))
			sprite_index = choose(spr_collect1, spr_collect2, spr_collect3, spr_collect4, spr_collect5);
		global.collect += 1;
        if (comboscore < 0)
            comboscore = 0
    }
    else if (alarm[1] == -1)
        alarm[1] = 50
}
if (global.combotime > 0 && global.combo > 0)
    y = approach(y, (ystart + 100), 10)
if (room == rank_room || room == timesuproom)
    instance_destroy()
