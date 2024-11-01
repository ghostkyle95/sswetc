// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_wallkick(){
	static attack_afterimagetimer = 6;
    hsp = movespeed
    move = key_right + key_left
	if (move != 0)
        movespeed = approach(movespeed, (move * 12), 1)
    else
        movespeed = approach(movespeed, 0, 0.5)
	if (key_down)
		vsp = 22
		
	if (sprite_index == spr_player_wallkickstart && animation_end())
		sprite_index = spr_player_wallkickloop
		
	if (key_slap && !grounded)
	{
		if (move != 0)
			xscale = move;
		movespeed = 12;
		machhitAnim = false;
		state = states.mach3;
		flash = true;
		vsp = -7;
		sprite_index = spr_walljumpstart;
		with (instance_create(x, y, obj_jumpdust))
			image_xscale = other.xscale;
		freefallsmash = false;
	}
	
	if (grounded)
	{
		if (key_attack)
		{
			movespeed = 12;
			sprite_index = spr_mach4;
			state = states.mach3;
		}
		else
		{
			sprite_index = spr_idle
			state = states.normal;
		}
	}
	
	if (attack_afterimagetimer > 0)
		attack_afterimagetimer--;
	if (attack_afterimagetimer <= 0)
	{
		with (instance_create(x, y, obj_attack_aftereffect))
			playerid = other.id;
		attack_afterimagetimer = 6;
	}
}