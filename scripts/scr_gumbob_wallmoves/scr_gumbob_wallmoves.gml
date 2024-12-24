// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gumbob_wallstick(){
    move = key_right + key_left;
	sprite_index = spr_gumbob_wallstick
	vsp = 0;
	
	if animation_end() && sprite_index == spr_gumbob_wallstick
	{
		sprite_index =  spr_gumbob_wadmode;
		state = states.gumbobwallbounce;
		capebumpbuffer = 10;
		xscale *= -1;
			
		hsp = 8*xscale;
		vsp = -12;
	}
}

function scr_gumbob_wallbounce(){
	hsp = approach(hsp, (xscale * movespeed), 0.5)
    move = key_right + key_left
	if capebumpbuffer > 0
		capebumpbuffer--
	if (move != 0)
	{
		movespeed = 12;
		if capebumpbuffer == 0
			xscale = move;
	}
    else
        movespeed = 0;
		
		
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
	
	if (key_down && !place_meeting(x, y, obj_dashpad) && !grounded && sprite_index != spr_dive)
	{
		flash = false;
		state = states.machroll;
		vsp = 10;
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