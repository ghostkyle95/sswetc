// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_doise_bounce(){
    hsp = movespeed
    move = key_right + key_left
	if (move != 0)
        movespeed = approach(movespeed, (move * 8), 1)
    else
        movespeed = approach(movespeed, 0, 0.5)
   if scr_noise_machcancel_grab()
        return;
    if ((!grounded) && key_down)
    {
        vsp = 20
        input_buffer_jump = 0
        return;
    }
    if (grounded && key_attack && vsp >= 0 && sprite_index == spr_wallbounce)
    {
        if (move != 0)
            xscale = move
        jumpstop = true
        sprite_index = spr_mach4
        state = states.mach3
        movespeed = 12
        flash = true
        image_index = 0
        with (instance_create(x, y, obj_crazyrunothereffect))
            image_xscale = other.xscale
    }
    if (grounded && vsp >= 0 && !key_attack && sprite_index == spr_wallbounce)
    {
        state = states.normal
        movespeed = abs(hsp)
    }
	noise_do_crusher();
    image_speed = 0.5
    scr_cantaunt()
}