scr_collide()
if (obj_player.sprite_index != obj_player.spr_breakdance)
{
    instance_create(x, y, obj_poofeffect)
    instance_destroy()
}
