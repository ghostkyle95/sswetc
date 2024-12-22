obj_player.image_index = 0;
obj_player.image_speed = 0.35;
obj_player.sprite_index = obj_player.spr_slipnslidestart;
obj_player.state = states.puddle;
obj_player.vsp = -11;
obj_player.grounded = false;

with obj_player
	scr_sound(sfx_slipnslidestart);
	
instance_destroy();
