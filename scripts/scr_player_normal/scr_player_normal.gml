function scr_player_normal()
{
	if (dir != xscale)
	{
		dir = xscale;
		movespeed = 2;
		facehurt = 0;
		divebombfacehurt = false;
	}
	mach2 = 0;
	move = key_left + key_right;
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
		hsp = move * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (move * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (move * movespeed) + 5;
    var breakdance_max = 10
    if (key_taunt)
        breakdance_pressed++
    else
        breakdance_pressed = 0
    if (breakdance_pressed >= breakdance_max)
    {
        breakdance_speed = approach(breakdance_speed, 0.6, 0.005)
    }
    else
        breakdance_speed = 0.25
    if (breakdance_speed >= 0.5)
    {
        if (!instance_exists(obj_beatbox))
        {
            instance_create(x, y, obj_poofeffect)
            with (instance_create(x, y, obj_beatbox))
                vsp = -11
        }
        notecreate--
    }
	if (breakdance_pressed >= breakdance_max) && sprite_index != spr_breakdance
		sprite_index = spr_breakdance
    if (notecreate <= 0)
    {
        instance_create((x + (random_range(-70, 70))), (y + (random_range(-70, 70))), obj_notes)
        notecreate = 10
    }
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
				divebombfacehurt = false;
				idle = 0;
				image_index = 0;
			}
				if (idle >= 300 && sprite_index != spr_caneidle && sprite_index != spr_3hpidle && sprite_index != spr_breakdance && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3 && sprite_index != spr_idle4 && sprite_index != spr_idle5 && sprite_index != spr_idle6)
				{
					//randomise();
					idleanim = random_range(0, 100);
                    if (irandom(100) <= 25)
                        scr_neutralvoiceline()
                    image_index = 0
                    if (idleanim <= 16)
                        sprite_index = spr_idle1
                    else if (idleanim > 16 && idleanim <= 32)
                        sprite_index = spr_idle2
                    else if (idleanim > 32 && idleanim <= 48)
                        sprite_index = spr_idle3
                    else if (idleanim > 48 && idleanim <= 64)
                        sprite_index = spr_idle4
                    else if (idleanim > 64 && idleanim <= 80)
                        sprite_index = spr_idle5
                    else
                        sprite_index = spr_idle6
				}
				if (idle < 300)
				{
					if (!facehurt)
					{
						if (breakdance_pressed >= breakdance_max)
							sprite_index = spr_breakdance
						else if global.combo > 50
							sprite_index = spr_50comboidle;
						else if (global.cane)
							sprite_index = spr_caneidle;
						else if angry
							sprite_index = spr_3hpidle;
						else if (global.panic)
							sprite_index = spr_escapeidle;
						else if (instance_exists(obj_coneball) && sprite_index == spr_escapeidle)
							sprite_index = spr_timesupidle;
						else
							sprite_index = spr_idle;
						if (windingAnim < 1800 || angry)
						{
							start_running = true;
							movespeed = 0;
						}
						else if !(windingAnim < 1800) && !(breakdance_pressed >= breakdance_max)
						{
							idle = 0;
							windingAnim--;
							sprite_index = spr_winding;
						}
					}
					else if (facehurt)
					{
						windingAnim = false;
						if (sprite_index != spr_facehurtup && sprite_index != spr_facehurt && divebombfacehurt == false)
							sprite_index = spr_facehurtup;
						if (floor(image_index) == (image_number - 1) && sprite_index == spr_facehurtup)
							sprite_index = spr_facehurt;
						
						if (sprite_index != spr_divebombfacehurtup && sprite_index != spr_divebombfacehurt && divebombfacehurt == true)
							sprite_index = spr_divebombfacehurtup;
						if (floor(image_index) == (image_number - 1) && sprite_index == spr_divebombfacehurtup)
							sprite_index = spr_divebombfacehurt;
					}
				}
			}
		if (move != 0)
		{
			machslideAnim = false;
			idle = 0;
			facehurt = false;
			divebombfacehurt = false;
			if (breakdance_pressed >= breakdance_max)
				sprite_index = spr_breakdance
			else if global.combo > 50
				sprite_index = spr_50combowalk;
			else if (global.cane)
				sprite_index = spr_canewalk;
			else if (angry)
				sprite_index = spr_3hpwalk;
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
	
	// jumping
	var _noise = (character != CHARACTERS.NOISE || character == CHARACTERS.NOISE && !key_up);
	if (key_jump && grounded && !key_down && _noise)
	{
		scr_sound(sfx_plrjump);
		sprite_index = spr_jump;
		if (shotgunAnim)
			sprite_index = spr_shotgun_jump;
		instance_create(x, y, obj_highjumpcloud2);
		vsp = -12;
		state = states.jump;
		image_index = 0;
		jumpAnim = true;
	}
	if (grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0 && _noise)
	{
		scr_sound(sfx_plrjump);
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
        if (sprite_index == spr_breakdance)
            image_speed = breakdance_speed
        else if (movespeed < 3 && move != 0)
			image_speed = 0.35;
		else if (movespeed > 3 && movespeed < 6)
			image_speed = 0.45;
		else
			image_speed = 0.6;
	}
	else
		image_speed = 0.35;
	if (key_slap2 && !key_down && !key_up && !suplexmove && !shotgunAnim && global.cane != true && sprite_index != spr_sidewayspin && sprite_index != spr_sidewayspinend)
	{	
		switch (character)
		{
			case CHARACTERS.PIZZELLE:
			case CHARACTERS.GUMBOB:
				scr_sound(sfx_plrgrabdash);
				instance_create(x, y, obj_slaphitbox);
				suplexmove = true;
				vsp = 0;
				instance_create(x, y, obj_jumpdust);
				image_index = 0;
				sprite_index = spr_suplexdash;
				state = states.handstandjump;
			break;
			case CHARACTERS.NOISE:
			case CHARACTERS.SWAB:
				scr_sound(sfx_plrgrabdash);
				instance_create(x, y, obj_slaphitbox);
				suplexmove = true;
				instance_create(x, y, obj_jumpdust);
				image_index = 0;
				sprite_index = spr_suplexdash;
				state = states.handstandjump;
			break;
			case CHARACTERS.PIZZANO:
				scr_sound(sfx_plrgrabdash);
				instance_create(x, y, obj_slaphitbox);
				suplexmove = true;
				vsp = 0;
				instance_create(x, y, obj_jumpdust);
				image_index = 0;
				sprite_index = choose(spr_kungfu1, spr_kungfu2, spr_kungfu3, spr_kungfu4, spr_kungfu5);
				state = states.pizzanoshoulderbash;
			break;
		}
	}
	scr_cantaunt()
	if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
		instance_create(x, y + 43, obj_cloudeffect);
	if (!instance_exists(obj_cloudeffect) && grounded && move != 0 && (sprite_index == spr_player_downslopes || sprite_index == spr_player_upslopes))
		instance_create(x, y + 43, obj_cloudeffect);
	if (key_slap2 && key_up)
	{
		grounded = false;
		state = states.uppercut;
		suplexmove = true;
		sprite_index = spr_uppercutbegin;
		scr_sound(sfx_uppercut);
		scr_sound(sfx_uppercutbg);
		image_index = 0;
		scr_sound(sfx_plrjump);
		scr_sound(sfx_rollgetup);
		scr_sound(sfx_plrgrabdash);
		if character != CHARACTERS.NOISE
			vsp = -15;
		else
			vsp = -21;
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
			scr_sound(sfx_plrgrabdash);
			instance_create(x, y, obj_slaphitbox);
			suplexmove = true;
			vsp = 0;
			instance_create(x, y, obj_jumpdust);
			image_index = 0;
			sprite_index = spr_canesuplex;
			state = states.handstandjump;
		}
	}
}
