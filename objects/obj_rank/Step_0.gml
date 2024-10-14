scr_getinput();
if (floor(image_index) == (image_number - 1))
	image_speed = 0;
if (global.rank == "s")
	sprite_index = obj_player.spr_srank;
if (global.rank == "a")
	sprite_index = obj_player.spr_arank;
if (global.rank == "b")
	sprite_index = obj_player.spr_brank;
if (global.rank == "c")
	sprite_index = obj_player.spr_crank;
if (global.rank == "d")
	sprite_index = obj_player.spr_drank;
if (global.rank == "p")
	sprite_index = obj_player.spr_prank;
