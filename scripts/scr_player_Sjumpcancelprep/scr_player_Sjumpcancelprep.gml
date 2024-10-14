// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_Sjumpcancel(){
	hsp = 0
	vsp = 0
	if sprite_index == spr_Sjumpcancelprep and animation_end()
	{
		if (move != 0)
			xscale = move;
		movespeed = 12;
		machhitAnim = false;
		state = states.mach3;
		flash = true;
		vsp = -5;
		image_index = 0;
		sprite_index = spr_Sjumpcancel;
		with (instance_create(x, y, obj_jumpdust))
			image_xscale = other.xscale;
	}
}