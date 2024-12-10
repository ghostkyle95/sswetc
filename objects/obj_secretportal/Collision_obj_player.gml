if (active && ds_list_find_index(global.saveroom, id) == -1)
{
    if (sprite_index != spr_secretportal_enter)
    {
        sprite_index = spr_secretportal_enter
        image_index = 0
    }
    if (!touched)
    {
        with (obj_camera)
            lock = true
    }
    playerid = other.id
    other.x = x
    other.y = y - 30
    other.vsp = 0
    other.hsp = 0
    other.cutscene = true
    if (!touched)
    {
        other.superchargedeffectid = noone
        other.sprite_index = other.spr_hurt
        other.image_speed = 0.35
        other.tauntstoredstate = other.state
        other.tauntstoredmovespeed = other.movespeed
        other.tauntstoredhsp = other.hsp
        other.tauntstoredvsp = other.vsp
        other.tauntstoredsprite = other.sprite_index
        other.state = states.actor
    }
    touched = true
    instance_destroy(obj_supertaunteffect)
}
