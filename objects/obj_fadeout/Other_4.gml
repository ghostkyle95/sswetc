with (obj_player) if (room == outer_room1 && state == states.titlescreen) {
	vsp = 5;
	xscale = 1;
	movespeed = 11;
	state = states.backbreaker;
	sprite_index = spr_machfreefall;
}