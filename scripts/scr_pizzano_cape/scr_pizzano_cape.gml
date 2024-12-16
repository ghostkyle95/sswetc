function scr_pizzano_cape()
{
    hsp = movespeed * xscale
    move = key_right + key_left
	if capebumpbuffer > 0
		capebumpbuffer--
	if (sprite_index == spr_capebegin || sprite_index == spr_capeupstart) && animation_end()
		sprite_index = spr_capeup
		
	if sprite_index == spr_capefallstart && animation_end()
		sprite_index = spr_capefall
		
	if sprite_index == spr_capebegin || sprite_index == spr_capeupstart 
		vsp = -10
	if sprite_index == spr_capeup || sprite_index == spr_capeupstart
	{
		if (!key_down)
		{
			if falltimer > 0
				falltimer--
			vsp = -10
			if !key_jump2 && falltimer == 0
				sprite_index = spr_capefallstart
		}
		else
			sprite_index = spr_capefallstart
	}
	if sprite_index == spr_capefall || sprite_index == spr_capefallstart
	{
		if key_jump
		{
			falltimer = 25;
			sprite_index = spr_capeupstart
			vsp = -10
		}
		if key_down
			vsp = approach(vsp, 20, 1)
	}
	
	if (move != 0) && capebumpbuffer == 0
		xscale = move
	if (move != 0)
	{
		if (abs(movespeed) < 12)
			movespeed = approach(movespeed, 12, 1)
		else
			movespeed = approach(movespeed, abs(movespeed), 1)
	}
	else
		movespeed = approach(movespeed, 0, 0.25)
		
	if (!scr_slope() && scr_solid(x + sign(hsp), y) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope) || scr_solid_slope(x + sign(hsp), y))
	{
		capebumpbuffer = 10;
		xscale *= -1
		instance_create(x, y, obj_bangeffect);
		scr_sound(sfx_bump);
	}
	
	if (scr_solid(x, y + vsp) && !place_meeting(x, y + vsp, obj_boxofpizza) && !place_meeting(x, y + vsp, obj_destructibles))
	{
		if sprite_index == spr_capeup || sprite_index == spr_capeupstart
		{
			instance_create(x, y, obj_bangeffect);
			scr_sound(sfx_bump);
			falltimer = 0;
			vsp += 5
			sprite_index = spr_capefallstart
		}
	}
	
	if grounded
	{
		if key_attack
		{
			jumpstop = true
			sprite_index = spr_mach4
			state = states.mach3
			movespeed = 12
			flash = true
			image_index = 0
			with (instance_create(x, y, obj_crazyrunothereffect))
			    image_xscale = other.xscale
		}
		else
		{
			state = states.normal;
			movespeed = 0;
		}
	}
	if (key_slap2 || key_attack2) pizzano_do_rocket();
}
