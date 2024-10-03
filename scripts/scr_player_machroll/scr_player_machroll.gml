function scr_player_machroll()
{
	if (!place_meeting(x, y + 1, obj_railh))
		hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
		hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
		hsp = (xscale * movespeed) + 5;
	//mach2 = 100;
	machslideAnim = true;
	move = key_right + key_left;
	if (grounded)
		sprite_index = spr_machroll;
	if (scr_solid(x + xscale, y) && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + sign(hsp), y, obj_destructibles))
	{
		scr_sound(sound_maximumspeedland);
		with (obj_camera)
		{
			shake_mag = 20;
			shake_mag_acc = 40 / room_speed;
		}
		hsp = 0;
		image_speed = 0.35;
		combo = 0;
		state = states.bump;
		hsp = 2.5;
		vsp = -3;
		mach2 = 0;
		image_index = 0;
		instance_create(x - 10, y + 10, obj_bumpeffect);
	}
	if (!instance_exists(obj_cloudeffect) && grounded)
		instance_create(x, y + 43, obj_cloudeffect);
	image_speed = abs(movespeed) / 15;
	if crouchslipbuffer > 0
		crouchslipbuffer--;
	else if !key_down && grounded && vsp >= 0 && !scr_solid(x, y - 32) && !scr_solid(x, y - 16)
	{
		if movespeed >= 12
			state = states.mach3;
		else
			state = states.mach2;
		sprite_index = spr_rollgetup;
		image_index = 0;
	}
	if !grounded && (sprite_index != spr_dive || character == CHARACTERS.NOISE)
	{
		if character != CHARACTERS.NOISE
		{
			sprite_index = spr_dive;
			vsp = 10;
		}
		else
		{	
            sprite_index = spr_playerN_divebomb
            state = states.machcancel
            savedmove = xscale
            vsp = 20
            movespeed = hsp
            input_buffer_slap = 0
            input_buffer_jump = 0
            image_index = 0
            return;
		}
	}
	if (key_jump2 && !grounded)
	{
		if character != CHARACTERS.NOISE
		{
			image_index = 0;
			state = states.freefallprep;
			sprite_index = spr_bodyslamstart;
			vsp = -5;
		}
		else
		{
            sprite_index = spr_playerN_divebomb
            state = states.machcancel
            vsp = 20
            hsp = 0
            savedmove = xscale
            movespeed = 0
            input_buffer_slap = 0
            input_buffer_jump = 0
            image_index = 0
            return;
		}
	}
}
