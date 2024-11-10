function scr_player_freefallland()
{
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = false;
	machhitAnim = false;
	movespeed = 0;
	facehurt = true;
	start_running = true;
	alarm[4] = 14;
	hsp = 0;
	if !(floor(image_index) == (image_number - 1))
		vsp = 0;
	if (floor(image_index) == (image_number - 1))
	{
		sprite_index = spr_machfreefall;
		vsp = -8;
		if (key_jump2 && character == CHARACTERS.SWAB)
		{
			sprite_index = spr_bodyslamjump;
			vsp = -16;
		}
		state = states.jump;
		jumpAnim = true;
		jumpstop = true;
		freefallsmash = false;
	}
	image_speed = 0.35;
}
