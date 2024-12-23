// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gumbob_wallstick(){
    move = key_right + key_left;
    move2 = key_up - key_down;
	sprite_index = spr_gumbob_wallstick;
	
	if key_attack && move2 != 0
		vsp = (-move2 * 5);
	else
		vsp = approach(vsp, 0, 0.5);
	
	if (!scr_solid(x + xscale, y) && !scr_solid_slope(x + xscale, y))
	{
		instance_create(x, y, obj_jumpdust);
		vsp = 0;
		if (mach2 < 100)
			state = states.mach2;
		else if (mach2 >= 100)
		{
			state = states.mach3;
			sprite_index = spr_mach4;
		}
		else
		{
			state = states.jump;
			vsp = -wallspeed;
		}
	}
	
	if animation_end() && sprite_index == spr_gumbob_wallstick
	{
		sprite_index =  spr_gumbob_wadmode;
		state = states.gumbobwallbounce;
		if move != 0
			xscale = move;
		hsp = 12*xscale;
		vsp = -12;
	}
}

function scr_gumbob_wallbounce(){
    hsp = movespeed * xscale
    move = key_right + key_left
	if (move != 0)
        movespeed = approach(movespeed, ((move * xscale) * 12), 1)
    else
        movespeed = approach(movespeed, 0, 0.5)
		
	if (key_slap2 && !grounded)
	{
		if (move != 0)
			xscale = move;
		movespeed = 14;
		machhitAnim = false;
		state = states.mach3;
		flash = true;
		vsp = -7;
		sprite_index = spr_plrdashpad;
		image_index = 0;
		with (instance_create(x, y, obj_jumpdust))
			image_xscale = other.xscale;
		freefallsmash = false;
	}
	
	if (grounded)
	{
		if (key_attack)
		{
			if (move != 0)
				xscale = move;
			movespeed = 12;
			sprite_index = spr_mach4;
			state = states.mach3;
		}
		else
		{
			if (move != 0)
				xscale = move;
			sprite_index = spr_idle
			state = states.normal;
		}
	}
	
	if ((!grounded) && scr_solid(x + sign(hsp), y) || scr_solid_slope((x + hsp), y)) && (!(place_meeting((x + hsp), y, obj_destructibles))) || (grounded && (place_meeting((x + sign(hsp)), (y - 16), obj_solid) || scr_solid_slope((x + sign(hsp)), (y - 16))) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + hsp), y, obj_metalblock))) && place_meeting(x, (y + 1), obj_slope))
	{
		wallspeed = movespeed;
		grabclimbbuffer = 10;
		state = states.climbwall;
	}
}