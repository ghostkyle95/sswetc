function scr_player_normal()
{
	if (dir != xscale)
	{
		dir = xscale;
		movespeed = 2;
		facehurt = 0;
	}
	mach2 = 0;
	move = key_left + key_right;
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
		hsp = move * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (move * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (move * movespeed) + 5;
	if (!machslideAnim && !landAnim && !shotgunAnim)
	{
		if (move == 0)
		{
			if (idle < 400)
				idle++;
			if (idle >= 300 && floor(image_index) == (image_number - 1))
			{
				shotgunAnim = false;
				facehurt = false;
				idle = 0;
				image_index = 0;
			}
			if (sprite_index != spr_caneidle && !global.panic && sprite_index != spr_3hpidle)
			{
				if (idle >= 300 && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3)
				{
					randomise();
					idleanim = random_range(0, 100);
					if (idleanim <= 33)
						sprite_index = spr_idle1;
					else if (idleanim > 33 && idleanim < 66)
						sprite_index = spr_idle2;
					else if (idleanim > 66)
						sprite_index = spr_idle3;
					image_index = 0;
				}
				if (idle < 300)
				{
					if (!facehurt)
					{
						if (windingAnim < 1800 || angry)
						{
							start_running = true;
							movespeed = 0;
								if (global.cane)
									sprite_index = spr_caneidle;
								else
									sprite_index = spr_idle;
						}
						else if (character == "P")
						{
							idle = 0;
							windingAnim--;
							sprite_index = spr_winding;
						}
					}
					else if (facehurt && character == "P")
					{
						windingAnim = false;
						if (sprite_index != spr_facehurtup && sprite_index != spr_facehurt)
							sprite_index = spr_facehurtup;
						if (floor(image_index) == (image_number - 1) && sprite_index == spr_facehurtup)
							sprite_index = spr_facehurt;
					}
				}
			}
			if (global.panic)
				sprite_index = spr_escapeidle;
			if (instance_exists(obj_coneball) && sprite_index == spr_escapeidle)
				sprite_index = spr_timesupidle;
		}
		if (move != 0)
		{
			machslideAnim = false;
			idle = 0;
			facehurt = false;
			if (angry)
				sprite_index = spr_3hpwalk;
			else if (global.cane)
				sprite_index = spr_canewalk;
			else
				sprite_index = spr_move;
		}
		if (move != 0)
			xscale = move;
	}
	if (landAnim)
	{
		if (!shotgunAnim)
		{
			if (move == 0)
			{
				movespeed = 0;
				sprite_index = spr_land;
				if (floor(image_index) == (image_number - 1))
					landAnim = false;
			}
			if (move != 0)
			{
				sprite_index = spr_land2;
				if (floor(image_index) == (image_number - 1))
				{
					landAnim = false;
					if (!global.cane)
						sprite_index = spr_move;
					else
						sprite_index = spr_canewalk;
					image_index = 0;
				}
			}
		}
		if (shotgunAnim)
		{
			sprite_index = spr_shotgun_land;
			if (floor(image_index) == (image_number - 1))
			{
				landAnim = false;
				if (!global.cane)
					sprite_index = spr_move;
				else
					sprite_index = spr_canewalk;
				image_index = 0;
			}
		}
	}
	if (machslideAnim)
	{
		sprite_index = spr_machslideend;
		if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideend)
			machslideAnim = false;
	}
	if (sprite_index == spr_player_shotgun && floor(image_index) == (image_number - 1))
		sprite_index = spr_shotgun_idle;
	if (!landAnim)
	{
		if (shotgunAnim && move == 0 && sprite_index != spr_player_shotgun)
			sprite_index = spr_shotgun_idle;
		else if (shotgunAnim && sprite_index != spr_player_shotgun)
			sprite_index = spr_shotgun_walk;
	}
	if (scr_solid(x + sign(hsp), y) && xscale == 1 && move == 1 && !place_meeting(x + 1, y, obj_slope))
		movespeed = 0;
	if (scr_solid(x + sign(hsp), y) && xscale == -1 && move == -1 && !place_meeting(x - 1, y, obj_slope))
		movespeed = 0;
	jumpstop = false;
	if (!grounded && !key_jump)
	{
		if (!shotgunAnim)
			sprite_index = spr_fall;
		else
			sprite_index = spr_shotgun_fall;
		jumpAnim = false;
		state = states.jump;
		image_index = 0;
	}
	if (character == "P" || character == "N")
	{
		if (key_attack && grounded && !place_meeting(x + xscale, y, obj_solid))
		{
			mach2 = 0;
			if (movespeed < 6)
				movespeed = 6;
			sprite_index = spr_mach1;
			jumpAnim = true;
			state = states.mach2;
			image_index = 0;
		}
	}
	if (character == "C" && key_attack)
		state = states.coneboyinhale3;
	if (key_jump && grounded && !key_down)
	{
		scr_sound(sound_jump);
		sprite_index = spr_jump;
		if (shotgunAnim)
			sprite_index = spr_shotgun_jump;
		instance_create(x, y, obj_highjumpcloud2);
		vsp = -12;
		state = states.jump;
		image_index = 0;
		jumpAnim = true;
	}
	if (grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0)
	{
		scr_sound(sound_jump);
		sprite_index = spr_jump;
		if (shotgunAnim)
			sprite_index = spr_shotgun_jump;
		instance_create(x, y, obj_highjumpcloud2);
		stompAnim = false;
		vsp = -11;
		state = states.jump;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		freefallstart = false;
	}
	if ((key_down && grounded) || scr_solid(x, y - 3))
	{
		state = states.crouch;
		landAnim = false;
		crouchAnim = true;
		image_index = 0;
		idle = 0;
	}
	if (move != 0)
	{
		if (movespeed < 7)
			movespeed += 0.5;
		else if (floor(movespeed) == 7)
			movespeed = 7;
	}
	else
		movespeed = 0;
	if (movespeed > 7)
		movespeed -= 0.1;
	if (key_slap2 && shotgunAnim && !instance_exists(obj_cutscene_upstairs))
	{
		global.ammo -= 1;
		sprite_index = spr_player_shotgun;
		state = states.shotgun;
		image_index = 0;
	}
	momemtum = false;
	if (move != 0)
	{
		xscale = move;
		if (movespeed < 3 && move != 0)
			image_speed = 0.35;
		else if (movespeed > 3 && movespeed < 6)
			image_speed = 0.45;
		else
			image_speed = 0.6;
	}
	else
		image_speed = 0.35;
	if ((character == "P" || character == "N") && (key_slap2 && !key_down && !suplexmove && !shotgunAnim && global.cane != true) && obj_player.character != "G" && !key_attack)
	{
		scr_sound(sound_suplex1);
		instance_create(x, y, obj_slaphitbox);
		suplexmove = true;
		vsp = 0;
		instance_create(x, y, obj_jumpdust);
		image_index = 0;
		sprite_index = spr_suplexdash;
		state = states.handstandjump;
	}
			scr_cantaunt()
	if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
		instance_create(x, y + 43, obj_cloudeffect);
	if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (sprite_index == spr_player_downslopes || sprite_index == spr_player_upslopes))
		instance_create(x, y + 43, obj_cloudeffect);
	if (key_slap2 && key_up)
	{
		grounded = false;
		vsp = -15;
		state = states.uppercut;
		suplexmove = true;
		sprite_index = spr_uppercutbegin;
		image_index = 0;
		scr_sound(sound_jump);
		scr_sound(sound_rollgetup);
		scr_sound(sound_suplex1);
	}
	if (global.cane)
	{
		if (scr_solid(x + sign(hsp), y) && (xscale == 1 && (move == 1 && !place_meeting(x + 1, y, obj_slope))))
			movespeed = 0;
		if (scr_solid(x + sign(hsp), y) && (xscale == -1 && (move == -1 && !place_meeting(x - 1, y, obj_slope))))
			movespeed = 0;
		if (key_jump2 && grounded && !canrebound)
		{
			sprite_index = spr_player_canefall;
			vsp = -15;
			canrebound = true;
			state = states.jump;
		}
		if (key_slap2 && !key_down && !suplexmove && !shotgunAnim)
		{
			scr_sound(sound_suplex1);
			instance_create(x, y, obj_slaphitbox);
			suplexmove = true;
			vsp = 0;
			instance_create(x, y, obj_jumpdust);
			image_index = 0;
			sprite_index = spr_canesuplex;
			state = states.handstandjump;
			if (character == "DEEZNUTS")
				vsp = -5;
		}
	}
	if (key_shoot2 && key_up && breakdanceammo > 0)
	{
		state = states.breakdance;
		sprite_index = spr_player_breakdancebeach;
		image_index = 0;
		breakdanceammo -= 1;
	}
	if (key_slap2 && character == "G")
	{
		state = states.gumbobmixnbrew;
		image_index = 0;
		sprite_index = spr_gumbob_brew_pulloutdrink;
	}
}
