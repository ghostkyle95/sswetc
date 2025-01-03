function scr_player_mach2()
{
	if (windingAnim < 2000)
		windingAnim++;
	hsp = xscale * movespeed
	move2 = key_right2 + key_left2;
	move = key_right + key_left;
	crouchslideAnim = true;
			
	if grounded && movespeed < 12
		movespeed += 0.1;
	if movespeed < 6
		movespeed = 6;
			
	if (sprite_index != spr_null)
	{
		if (!key_jump2 && !jumpstop && vsp < 0.5)
		{
			vsp /= 2;
			jumpstop = true;
		}
	}
	if (sprite_index != spr_null)
	{
			if (grounded && vsp > 0)
				jumpstop = false;
			if (input_buffer_jump < 8 && grounded && move != -xscale && key_attack && sprite_index != spr_secondjump1)
			{
				image_index = 0;
				sprite_index = spr_secondjump1;
				scr_sound(sfx_plrjump);
				vsp = -9;
			}
	}
	if (grounded && sprite_index != spr_null)
	{
		if (!machpunchAnim && sprite_index != spr_mach && sprite_index != spr_mach1 && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
		{
			if (sprite_index != spr_player_machhit && sprite_index != spr_rollgetup)
				sprite_index = spr_mach;
		}
		if (machpunchAnim)
		{
			if (!punch && sprite_index != spr_machpunch1)
			{
				sprite_index = spr_machpunch1;
				image_index = 0;
			}
			if (punch && sprite_index != spr_machpunch2)
			{
				sprite_index = spr_machpunch2;
				image_index = 0;
			}
			if (animation_end())
			{
				punch = !punch;
				machpunchAnim = false;
			}
		}
	}
	if (!grounded)
		machpunchAnim = false;
	if (movespeed >= 12 && grounded && sprite_index != spr_sidewayspin)
	{
		machhitAnim = false;
		state = states.mach3;
		flash = true;
		if sprite_index != spr_rollgetup
			sprite_index = spr_mach4;
		instance_create(x, y, obj_jumpdust);
	}
	if animation_end() && sprite_index == spr_sidewayspin
		sprite_index = spr_sidewayspinend
    if (grounded && (sprite_index == spr_sidewayspin || sprite_index == spr_sidewayspinend))
        sprite_index = spr_mach
	/*if (movespeed >= 10 && grounded && character == CHARACTERS.PIZZANO)
	{
		if (!charged)
		{
			charged = true;
			flash = true;
		}
	}*/
	if (sprite_index != spr_null)
	{
		if (key_jump)
			input_buffer_jump = 0;
		if (!key_attack && grounded)
		{
			alarm[0] = 240;
			scr_sound(sfx_machbreak);
			sprite_index = spr_machslidestart;
			state = states.machslide;
			image_index = 0;
			mach2 = 0;
		}
	}
	if (move == -xscale && grounded)
	{
		scr_sound(sfx_plrmachturn);
		sprite_index = spr_machslideboost;
		state = states.machslide;
		image_index = 0;
		mach2 = 35;
	}
	if (key_down && !place_meeting(x, y, obj_dashpad) && !grounded && sprite_index != spr_dive)
	{
		flash = false;
		state = states.machroll;
		vsp = 10;
	}
	if (key_down && !place_meeting(x, y, obj_dashpad) && grounded)
	{
		flash = false;
		state = states.machroll;
	}
	if ((!grounded) && scr_solid(x + sign(hsp), y) || scr_solid_slope((x + hsp), y)) && (!(place_meeting((x + hsp), y, obj_destructibles))) || (grounded && (place_meeting((x + sign(hsp)), (y - 16), obj_solid) || scr_solid_slope((x + sign(hsp)), (y - 16))) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + hsp), y, obj_metalblock))) && place_meeting(x, (y + 1), obj_slope))
	{
		wallspeed = movespeed;
		grabclimbbuffer = 10;
		state = states.climbwall;
		if (scr_slope())
			canclimb = true;
		else
			canclimb = false;
	}
	if (grounded && !scr_slope() && scr_solid(x + sign(hsp), y) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope) || grounded && scr_solid_slope(x + sign(hsp), y))
	{
		movespeed = 0;
		state = states.bump;
		sprite_index = spr_wallsplat;
		image_index = 0;
	}
	if (!instance_exists(obj_dashcloud) && grounded)
	{
		with (instance_create(x, y, obj_dashcloud))
			sprite_index = spr_dashcloud2;
	}
	if ((!grounded && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump) && sprite_index != spr_null && sprite_index != spr_bump && sprite_index != spr_sidewayspin && sprite_index != spr_sidewayspinend && sprite_index != spr_longjumpstart && sprite_index != spr_longjumpend && sprite_index != spr_walljumpstart && sprite_index != spr_walljump && sprite_index != spr_climbwall)
		sprite_index = spr_secondjump1;
	if (animation_end() && sprite_index == spr_secondjump1)
		sprite_index = spr_secondjump2;
	if grounded && animation_end() && (sprite_index == spr_rollgetup || sprite_index == spr_mach1)
		sprite_index = spr_mach;
	if animation_end() && sprite_index == spr_longjumpstart
		sprite_index = spr_longjumpend
	if grounded && (sprite_index == spr_longjumpstart || sprite_index == spr_longjumpend)
		sprite_index = spr_mach;
	if grounded && (sprite_index == spr_walljumpstart || sprite_index == spr_walljump)
		sprite_index = spr_mach;
	if animation_end() && sprite_index == spr_walljumpstart && !grounded
		sprite_index = spr_walljump;
	scr_cantaunt()
	if (sprite_index == spr_rollgetup || sprite_index == spr_longjumpstart || sprite_index == spr_longjumpend)
		image_speed = 0.4;
	else
		image_speed = 0.65;
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
	if global.cane
	{
		if (!key_down && key_slap2 && !suplexmove && !shotgunAnim)
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
	noise_can_crusher();
}
