function scr_player_climbwall()
{
    if (character == CHARACTERS.NOISE)
	{
		scr_sound(sfx_wallbouncestart)
		sprite_index = spr_wallbounce
		state = states.machcancel
		savedmove = xscale
		vsp = (-((17 * (1 - noisewalljump * 0.15))))
		noisewalljump++
		hsp = 0
		movespeed = 0
		image_index = 0
		return;
    }
	
	if (windingAnim < 200)
		windingAnim++;
    if (grabclimbbuffer > 0)
		grabclimbbuffer--
	suplexmove = false;
	vsp = -wallspeed;
	if wallspeed < 24 
		wallspeed += 0.025
	crouchslideAnim = true;
	sprite_index = spr_climbwall;
	if (character == CHARACTERS.SWAB)
	{
		if (wallspeed >= 12)
		{
			sprite_index = spr_mach3wallclimb
			if (!instance_exists(obj_SWwallchargeeffect) && sprite_index == spr_mach3wallclimb)
				instance_create(x, y, obj_SWwallchargeeffect);
		}
		else
			sprite_index = spr_climbwall
	}
	if (!key_attack && grabclimbbuffer == 0)
	{
		vsp = 0
		state = states.jump;
		sprite_index = spr_fall;
	}
	if (!scr_solid(x + xscale, y) && !scr_solid_slope(x + xscale, y))
	{
		instance_create(x, y, obj_jumpdust);
		vsp = 0;
		if (mach2 < 100)
			state = states.mach2;
		else if (mach2 >= 100)
		{
			state = states.mach3;
			sprite_index = spr_mach4;
		}
		else
		{
			state = states.jump;
			vsp = -wallspeed;
		}
	}
	if (scr_solid(x, y - 1) && !place_meeting(x, y - 1, obj_destructibles) && !scr_slope_ext(x + sign(hsp), y) && !scr_slope_ext(x - sign(hsp), y))
	{
		sprite_index = spr_ceilingcrash;
		scr_sound(sound_maximumspeedland);
		image_index = 0;
		state = states.Sjumpland;
		machhitAnim = false;
		with (obj_camera)
		{
			shake_mag = 10;
			shake_mag_acc = 30 / room_speed;
		}
	}
	if (key_jump && key_attack)
	{
		if (character == CHARACTERS.PIZZELLE)
		{
			mach2 = 100;
			instance_create(x, y, obj_jumpdust);
			vsp = -9;
			sprite_index = spr_player_wallkickstart;
			state = states.wallkick;
			xscale *= -1;
			movespeed = (9 * xscale)
		}
		else
		{
			if (mach2 >= 100)
			{
				{
					mach2 = 100;
					instance_create(x, y, obj_jumpdust);
					vsp = -9;
					sprite_index = spr_plrdashpad;
					state = states.mach3;
					xscale *= -1;
				}
			}
			else
			{
				sprite_index = spr_walljumpstart;
				image_index = 0;
				mach2 = 35;
				instance_create(x, y, obj_jumpdust);
				vsp = -9;
				state = states.mach2;
				xscale *= -1;
			}
		}
	}
	image_speed = 0.6;
	if (!instance_exists(obj_cloudeffect))
		instance_create(x, y + 43, obj_cloudeffect);
}
