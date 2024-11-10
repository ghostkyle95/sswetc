// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerN_machcancel(){
	
    noisemachcancelbuffer = 10
    hsp = movespeed
    move = key_right + key_left
    if (move != 0)
        savedmove = move
    if (sprite_index == spr_tornado || sprite_index == spr_tornadoland || sprite_index == spr_tornadofall)
    {
        if (move != 0)
        {
            if (abs(movespeed) < 12)
                movespeed = approach(movespeed, (move * 12), 1)
            else
                movespeed = approach(movespeed, (move * abs(movespeed)), 1)
        }
        else
            movespeed = approach(movespeed, 0, 0.25)
        var xx = movespeed
        if (xx == 0)
            xx = xscale
        if (grounded && vsp > 0 && place_meeting((x + xx), y, obj_solid))
        {
            mask_index = spr_crouchmask
            if ((!(place_meeting((x + xx), y, obj_solid))) || place_meeting((x + xx), y, obj_destructibles))
            {
                state = states.machroll
                sprite_index = spr_machroll
                image_index = 0
                instance_destroy(instance_place((x + xx), y, obj_destructibles))
                if (movespeed != 0)
                    xscale = sign(movespeed)
                movespeed = abs(movespeed)
                if (movespeed < 6)
                    movespeed = 6
            }
            mask_index = spr_player_mask
        }
		if (grounded && sprite_index == spr_tornadofall)
		{
			image_index = 0
			sprite_index = spr_tornadoland
		}
		if (animation_end() && sprite_index == spr_tornadoland)
		{
			image_index = 0
			sprite_index = spr_tornado
		}
    }
    else if (move != 0)
        movespeed = approach(movespeed, (move * 8), 1)
    else
        movespeed = approach(movespeed, 0, 0.5)
   if scr_noise_machcancel_grab()
        return;
    if (sprite_index != spr_tornadofall && (!grounded) && key_down)
    {
        sprite_index = spr_tornadofall
        state = states.machcancel
        vsp = 20
        input_buffer_jump = 0
        image_index = 0
        return;
    }
	/*if (((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope)))) && sprite_index == spr_wallbounce
	{
		if key_jump
		{
			wallspeed = movespeed;
			state = states.climbwall;
		}
	}*/
    if (grounded && vsp >= 0 && sprite_index != spr_wallbounce && !key_down)
    {
        vsp = -7
        if (move != 0)
            xscale = move
        sprite_index = spr_wallbounce
		scr_sound(sfx_wallbounceland)
    }
    if (grounded && key_attack && vsp >= 0 && sprite_index == spr_wallbounce)
    {
        if (move != 0)
            xscale = move
        else if (savedmove != 0)
            xscale = savedmove
        jumpstop = true
        sprite_index = spr_mach4
        state = states.mach3
        movespeed = 12
        flash = true
        image_index = 0
        with (instance_create(x, y, obj_crazyrunothereffect))
            image_xscale = other.xscale
    }
    if (grounded && (!key_attack) && vsp >= 0 && sprite_index == spr_wallbounce)
    {
        state = states.normal
        movespeed = abs(hsp)
    }
	if (key_jump && key_up && !grounded && sprite_index != spr_airdash1 && sprite_index != spr_airdash2 && character != CHARACTERS.PIZZANO && character != CHARACTERS.SWAB && !(sprite_index == spr_tornado || sprite_index == spr_tornadoland || sprite_index == spr_tornadofall))
	{
		image_index = 0;
		state = states.freefallprep;
		sprite_index = spr_crusherstart;
		vsp = -16;
		scr_sound(sound_crusherjump)
	}
    if (sprite_index == spr_tornado || sprite_index == spr_tornadoland || sprite_index == spr_tornadofall)
    {
        image_speed = abs(movespeed) / 40 + 0.4
    }
    else
        image_speed = 0.5
    scr_cantaunt()
}

function scr_noise_machcancel_grab() //gml_Script_scr_noise_machcancel_grab
{
    image_speed = 0.5
    move = key_left + key_right
    if (key_slap2 && (!key_up))
    {
        if (move != 0)
        {
			if doisemode == false
			{
				//input_buffer_shoot = 0
				if (move != 0)
				    xscale = move
				//input_buffer_slap = 0
				scr_sound(sfx_airspinstart)
				key_slap = false
				key_slap2 = false
				jumpstop = true
				machpunchAnim = false;
				if (vsp > -5)
				    vsp = -5
				state = states.mach2
				movespeed = 12
				sprite_index = spr_sidewayspin
				with (instance_create(x, y, obj_crazyrunothereffect))
				    image_xscale = other.xscale
				image_index = 0
				//particle_set_scale((5 << 0), xscale, 1)
				//create_particle(x, y, (5 << 0), 0)
			}
			else
			{
				//input_buffer_shoot = 0
				if (move != 0)
				    xscale = move
				//input_buffer_slap = 0
				key_slap = false
				key_slap2 = false
				jumpstop = true
				machpunchAnim = false;
				if (vsp > -5)
				    vsp = -5
				state = states.mach3
				movespeed = 12
				sprite_index = spr_walljumpstart
				with (instance_create(x, y, obj_crazyrunothereffect))
				    image_xscale = other.xscale
				image_index = 0
				//particle_set_scale((5 << 0), xscale, 1)
				//create_particle(x, y, (5 << 0), 0)
			}
        }
        else
        {
            if (savedmove != 0)
                xscale = savedmove
            //scr_shotgunshoot()
        }
        return true;
    }
    return false;
}