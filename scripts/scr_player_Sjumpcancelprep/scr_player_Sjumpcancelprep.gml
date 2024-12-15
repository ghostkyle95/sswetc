// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_Sjumpcancel(){
	hsp = 0
	vsp = 0
	if (sprite_index == spr_Sjumpcancelprep || sprite_index == spr_uppercutcancelstart) && animation_end()
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
};

function pizzano_do_cape() {
	movespeed = 12;
	falltimer = 25;
	state = states.cape;
	sprite_index = spr_capebegin;
	image_index = 0;
	vsp = -10;
	return;
};

function pizzano_do_rocket() {
	if (move != 0) xscale = move;
	scr_sound(sfx_superjumpcancel);
	flash = true;
	charged = false;
	sprite_index = spr_superjumpprepside;
	image_index = 0;
	movespeed = 0;
	vsp = 0;
	mach2 = 0;
	state = states.rocketfistpizzano;
	return;
};
