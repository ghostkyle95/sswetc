function scr_player_jump()
{
	move = key_left + key_right;
	if (!momemtum)
		hsp = move * movespeed;
	else
		hsp = xscale * movespeed;
	if (move != xscale && momemtum && movespeed != 0)
		movespeed -= 0.1;
	if (movespeed == 0)
		momemtum = false;
	if ((move == 0 && !momemtum) || scr_solid(x + hsp, y))
	{
		movespeed = 0;
		mach2 = 0;
	}
	if (move != 0 && movespeed < 7)
		movespeed += 0.5;
	if (movespeed > 7)
		movespeed -= 0.1;
	if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
		movespeed = 0;
	if (dir != xscale)
	{
		mach2 = 0;
		dir = xscale;
		movespeed = 0;
	}
	if (move == -xscale)
	{
		mach2 = 0;
		movespeed = 0;
		momemtum = false;
	}
	landAnim = true;
	if (!key_jump2 && !jumpstop && vsp < 0.5 && !stompAnim)
	{
		vsp /= 5;
		jumpstop = true;
	}
	if (key_jump && key_up && !grounded && sprite_index != spr_airdash1 && sprite_index != spr_airdash2 && character != CHARACTERS.PIZZANO)
	{
		image_index = 0;
		state = states.freefallprep;
		sprite_index = spr_crusherstart;
		vsp = -16;
		scr_sound(sound_crusherjump)
	}
	if (ladderbuffer > 0)
		ladderbuffer--;
	if (scr_solid(x, y - 1) && !jumpstop && jumpAnim)
	{
		vsp = grav;
		jumpstop = true;
	}
	if (charged and sprite_index = spr_jetpackjump and key_attack and doisemode = true)
	{
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
	}
	if (grounded && input_buffer_jump < 8 && !key_down && !key_attack && vsp > 0 && !(sprite_index == spr_facestomp || sprite_index == spr_freefall))
	{
		scr_sound(sound_jump);
		sprite_index = spr_jump;
		if (shotgunAnim)
			sprite_index = spr_shotgun_jump;
		instance_create_depth(x, y, -6, obj_highjumpcloud2);
		stompAnim = false;
		vsp = -11;
		state = states.jump;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		freefallstart = false;
		instance_create_depth(x, y, 0, obj_landcloud);
	}
	if (key_attack && grounded && fallinganimation < 40 && !charged)
	{
		mach2 = 0;
		if (movespeed < 6)
			movespeed = 6;
		sprite_index = spr_mach1;
		jumpAnim = true;
		state = states.mach2;
		image_index = 0;
	}
	if (grounded && vsp > 0 && !key_attack)
	{
		if (key_attack)
			landAnim = false;
		input_buffer_secondjump = 0;
		state = states.normal;
		jumpAnim = true;
		jumpstop = false;
		image_index = 0;
		freefallstart = 0;
		instance_create_depth(x, y, 0, obj_landcloud);
		scr_sound(sound_step);
		doublejumped = false;
	}
	if (key_jump)
		input_buffer_jump = 0;
	if (character == CHARACTERS.PIZZELLE)
	{
		if (vsp > 5)
			fallinganimation++;
		if ((fallinganimation >= 40 && fallinganimation < 80) && sprite_index != spr_candyup)
			sprite_index = spr_freefall;
		if ((fallinganimation >= 40 && fallinganimation < 80) && sprite_index == spr_candyup)
		{
			sprite_index = spr_freefall;
			if (!instance_exists(obj_candifiedeffect1))
				instance_create(x, y, obj_candifiedeffect1);
		}
		if (fallinganimation >= 80)
			sprite_index = spr_freefall2;
	}
	if (!stompAnim)
	{
		if (jumpAnim)
		{
			if (floor(image_index) == (image_number - 1))
				jumpAnim = false;
		}
		if (!jumpAnim) && (sprite_index != spr_suplexbump)
		{
			if (sprite_index == spr_airdash1)
				sprite_index = spr_airdash2;
			if (sprite_index == spr_suplexdashCancel)
				sprite_index = spr_fall;
			if (sprite_index == spr_jump)
				sprite_index = spr_fall;
		}
	}
	if (stompAnim)
	{
		if (sprite_index == spr_stompprep && floor(image_index) == (image_number - 1))
			sprite_index = spr_stomp;
	}
	if (key_attack && sprite_index != spr_airdash2 && sprite_index != spr_airdash1 && fallinganimation < 40 && sprite_index != spr_playerN_glide && character == CHARACTERS.PIZZELLE)
	{
		stompAnim = false;
		sprite_index = spr_airdash1;
		image_index = 0;
	}
	if (key_slap2 && shotgunAnim && global.ammo > 0)
	{
		global.ammo -= 1;
		vsp -= 11;
		sprite_index = spr_player_shotgunjump1;
		state = states.shotgun;
		image_index = 0;
	}
	if (move != 0)
		xscale = move;
	image_speed = 0.35;
	if (key_slap2 && shotgunAnim && !instance_exists(obj_cutscene_upstairs))
	{
		global.ammo -= 1;
		sprite_index = spr_shotgun_shootair;
		state = states.shotgun;
		image_index = 0;
	}
	if (key_slap2 && key_up && !suplexmove)
	{
		grounded = false;
		state = states.uppercut;
		suplexmove = true;
		sprite_index = spr_uppercutbegin;
		image_index = 0;
		scr_sound(sound_rollgetup);
		scr_sound(sound_suplex1);
		if character != CHARACTERS.NOISE
			vsp = -15;
		else
			vsp = -21;
	}
	if ((character == CHARACTERS.PIZZELLE || character == CHARACTERS.NOISE) && (!key_down && key_slap2 && !suplexmove && !shotgunAnim && !global.cane) && sprite_index != spr_suplexbump)
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
	if ((character == CHARACTERS.PIZZANO) && (!key_down && key_slap2 && !suplexmove && !shotgunAnim && !global.cane))
	{
		scr_sound(sound_suplex1);
		instance_create(x, y, obj_slaphitbox);
		suplexmove = true;
		vsp = 0;
		instance_create(x, y, obj_jumpdust);
		image_index = 0;
		sprite_index = choose(spr_kungfu1, spr_kungfu2);
		state = states.pizzanoshoulderbash;
	}
	if (grounded && (sprite_index == spr_facestomp || sprite_index == spr_freefall || sprite_index == spr_freefall2))
	{
		scr_sound(sound_maximumspeedland);
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
		image_index = 0;
		sprite_index = spr_freefallland;
		state = states.freefallland;
		doublejumped = 0;
	}
			scr_cantaunt()
	if (key_down2 && !global.cane)
	{
		image_index = 0;
		state = states.freefallprep;
		sprite_index = spr_bodyslamstart;
		vsp = -5;
	}
	if (global.cane)
	{
		if (!grounded)
			canrebound = false;
		if (key_down2)
		{
			image_index = 0;
			state = states.freefall;
			sprite_index = spr_caneslam;
			vsp = -18;
		}
		if (!key_down && key_slap2 && !suplexmove && !shotgunAnim)
		{
			scr_sound(sound_suplex1);
			instance_create(x, y, obj_slaphitbox);
			suplexmove = true;
			vsp = 0;
			instance_create(x, y, obj_jumpdust);
			image_index = 0;
			sprite_index = spr_canesuplex;
			state = states.handstandjump;
		}
	}
	if (sprite_index == spr_caneslam)
	{
		vsp = 17;
		if (!instance_exists(obj_mach3effect))
			instance_create(x, y - 32, obj_mach3effect);
	}
	if (key_jump && character == CHARACTERS.GUMBOB && !grounded && gumbobpropellercooldown == 0)
	{
		state = states.gumbobpropellor;
		sprite_index = spr_gumbob_propeller_start;
		movespeed = 0;
		vsp = 0;
	}
	if (key_jump && character == CHARACTERS.PIZZANO && !grounded && doublejumped == 0 && !scr_solid(x + xscale, y, true))
	{
		doublejumped = true;
		vsp = -10;
		sprite_index = spr_pizzano_djump;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_candytransitionup)
		sprite_index = spr_candyup;
}
