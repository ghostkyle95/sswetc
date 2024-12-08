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
		if (global.impactjump == true)
		{
			sprite_index = spr_machfreefall;
			vsp = -8;
			state = states.jump;
			jumpAnim = true;
			jumpstop = true;
			freefallsmash = false;
		}
		else
		{
			facehurt = true
			divebombfacehurt = (sprite_index == spr_divebombland) ? true : false
			sprite_index = (sprite_index == spr_divebombland) ? spr_divebombfacehurtup : spr_facehurtup
			image_index = 0
			state = states.normal
			jumpstop = true
		}
		if (key_jump2 && character == CHARACTERS.SWAB)
		{
			sprite_index = spr_bodyslamjump;
			vsp = -16;
			state = states.jump;
			jumpAnim = true;
			jumpstop = true;
			freefallsmash = false;
		}
	}
	image_speed = 0.35;
}
