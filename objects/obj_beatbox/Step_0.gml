scr_collide()
if !audio_is_playing(sfx_boomboxsong)
	scr_sound(sfx_boomboxsong);
if (obj_player.sprite_index != obj_player.spr_breakdance)
{
    instance_create(x, y, obj_poofeffect)
	audio_stop_sound(sfx_boomboxsong);
    instance_destroy()
}
