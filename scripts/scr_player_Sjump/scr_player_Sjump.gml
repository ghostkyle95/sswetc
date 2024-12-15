function scr_player_Sjump()
{
	Sjumpcan_doublejump = false;
	mach2 = 0;
	jumpAnim = true;
	dashAnim = true;
	landAnim = false;
	moveAnim = true;
	stopAnim = true;
	crouchslideAnim = true;
	crouchAnim = false;
	machhitAnim = false;
	move = key_left + key_right;
	if (sprite_index == spr_superjump)
	{
		sjumpspeed = approach(sjumpspeed, 18, 1)
		vsp = -sjumpspeed
		if (character == CHARACTERS.NOISE || character == CHARACTERS.SWAB)
		{
			hsp = move * movespeed;
			movespeed = 2;
		}
		else
		{
			hsp = 0;
			movespeed = 0;
		}
	}
	if (scr_solid(x, y + vsp) && !place_meeting(x, y + vsp, obj_boxofpizza) && !place_meeting(x, y + vsp, obj_metalblock) && !place_meeting(x, y + vsp, obj_destructibles))
	{
		scr_sound(sfx_groundpoundland);
		sprite_index = spr_superjumpland;
		with (obj_camera)
		{
			shake_mag = 10;
			shake_mag_acc = 30 / room_speed;
		}
		with (obj_baddie)
		{
			if (point_in_camera(x, y, view_camera[0]) && grounded)
			{
				image_index = 0;
				state = baddiestates.idle;
				vsp = -7;
				hsp = 0;
			}
		}
		image_index = 0;
		state = states.Sjumpland;
		machhitAnim = false;
		movespeed = 0;
		sjumpspeed = 0;
	}
	image_speed = 0.5;
	if (key_attack2 && !grounded && vsp < -10 && (character == CHARACTERS.PIZZELLE || character == CHARACTERS.SWAB))
	{
		scr_sound(sfx_superjumpcancel);
		if (move != 0)
			xscale = move;
		state = states.sjumpcancelprep;
		flash = true;
		vsp = 0;
		hsp = 0;
		image_index = 0;
		sprite_index = spr_Sjumpcancelprep;
		sjumpspeed = 0;
		with (instance_create(x, y, obj_jumpdust))
			image_xscale = other.xscale;
	}
	if (key_attack2 && !grounded && vsp < -10 && character == CHARACTERS.NOISE)
	{
		if !doisemode
		{
			if (move != 0)
				xscale = move
			machpunchAnim = false;
			machhitAnim = false;
			vsp = -5
			state = states.mach2
			movespeed = 12
			sprite_index = spr_sidewayspin
			with (instance_create(x, y, obj_crazyrunothereffect))
				image_xscale = other.xscale
			image_index = 0
			sjumpspeed = 0;
		}
		else
		{
			scr_sound(sfx_superjumpcancel);
			flash = true;
			charged = false;
			sprite_index = spr_superjumpprepside;
			image_index = 0;
			movespeed = 0;
			vsp = 0;
			mach2 = 0;
			state = states.jetpackdoise;
			if move != 0
				xscale = move;
			sjumpspeed = 0;
		}
	}
	
	if (key_attack2 && !grounded && vsp < -10 && character == CHARACTERS.PIZZANO && 
	sprite_index != spr_superjumpland)
		pizzano_do_rocket();
	
	scr_collide_player();
}
