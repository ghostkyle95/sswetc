function scr_player_punch()
{
	movespeed = false;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = true;
	if image_index >= (image_number - 1)
		state = states.normal;
	sprite_index = spr_punch;
	image_speed = 0.35;
}
