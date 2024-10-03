function scr_player_freefall()
{
	landAnim = true;
	if vsp >= 2
	{
		if steppybuffer > 0
			steppybuffer--;
		else
		{
			instance_create(x + irandom_range(-25, 25), y + irandom_range(-10, 35), obj_cloudeffect)
			steppybuffer = 8;
		}
		if vsp > 17
		{
			if punch_afterimage > 0
				punch_afterimage--;
			else
			{
				punch_afterimage = 5;
				with (instance_create(x, y, obj_mach3effect))
				{
					playerid = other.object_index;
					image_index = other.image_index - 1;
					image_xscale = other.xscale;
					sprite_index = other.sprite_index;
				}
			}
		}
		vsp += 0.5;
	}

	move = key_left + key_right;
	if !grounded
	{
		hsp = move * movespeed;
		if move != dir && move != 0
		{
			dir = move;
			movespeed = 0;
		}
		if move != 0 && movespeed < 7
			movespeed += 0.25;
		else if move != 0
			movespeed -= 0.05;
		if move != 0
			xscale = move;
		if move == 0 || scr_solid(x + move, y)
			movespeed = 0;
	}
	if vsp > 0
		freefallsmash++;
	else if vsp < 0
		freefallsmash = -14;
	if (global.cane)
		sprite_index = spr_caneslam;
	if ((grounded && !input_buffer_jump < 8) && !place_meeting(x, y + 1, obj_destructibles))
	{
		if (scr_slope() && !place_meeting(x, y, obj_dashpad) && key_down && freefallsmash > 10)
		{
			flash = false;
			state = states.machroll;
			movespeed = 12;
			if (place_meeting(x, y + 1, obj_slope))
			{
				with (instance_place(x, y + 1, obj_slope))
					other.xscale = -sign(image_xscale);
			}
		}
		else
		{
			scr_sound(sound_maximumspeedland);
			image_index = 0;
			state = states.freefallland;
			jumpAnim = true;
			jumpstop = false;
			with (obj_baddie)
			{
				if (point_in_camera(x, y, view_camera[0]) && grounded)
				{
					vsp = -7;
					hsp = 0;
				}
			}
			with (obj_camera)
			{
				shake_mag = 10;
				shake_mag_acc = 30 / room_speed;
			}
			combo = 0;
			bounce = false;
			instance_create(x, y, obj_landcloud);
			freefallstart = 0;
			if sprite_index == spr_bodyslamfall
				sprite_index = spr_bodyslamland;
			else if sprite_index == spr_crusherfall
				sprite_index = spr_crusherland;
		}
	}
	image_speed = 0.35;
	if (freefallsmash >= 10 && !instance_exists(obj_groundpoundeffect))
		instance_create(x, y, obj_groundpoundeffect);
	if key_slap2 && sprite_index == spr_crusherfall && character == CHARACTERS.NOISE
	{
		if (move != 0)
			xscale = move
		machpunchAnim = false;
		machhitAnim = false;
		vsp = -5
		state = states.mach2
		movespeed = 12
		sprite_index = spr_playerN_sidewayspin
		with (instance_create(x, y, obj_crazyrunothereffect))
			image_xscale = other.xscale
		image_index = 0
	}
}
