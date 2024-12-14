function scr_pizzano_cape()
{
    hsp = movespeed * xscale
    move = key_right + key_left
	
	if sprite_index == spr_capebegin && animation_end()
		sprite_index = spr_capeup
		
	if sprite_index == spr_capeupstart && animation_end()
		sprite_index = spr_capeup
		
	if sprite_index == spr_capefallstart && animation_end()
		sprite_index = spr_capefall
		
	if sprite_index == spr_capeup
	{
		if key_jump
			vsp = -15
		else
			sprite_index = spr_capefallstart
	}
	
	if (move != 0)
		xscale = move
	if (move != 0)
	{
		if (abs(movespeed) < 12)
			movespeed = approach(movespeed, (move * 12), 1)
		else
			movespeed = approach(movespeed, (move * abs(movespeed)), 1)
	}
	else
		movespeed = approach(movespeed, 0, 0.25)
		
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
}
