function scr_player_climbwall()
{
    if (character == CHARACTERS.NOISE)
	{
		sprite_index = spr_playerN_wallbounce
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
	suplexmove = false;
	vsp = -wallspeed;
	if wallspeed < 6
		wallspeed = 6;
	else if wallspeed < 20
		wallspeed += 0.15
	crouchslideAnim = true;
	sprite_index = spr_climbwall;
	if (wallspeed <= 0 || !key_attack)
	{
		vsp = 0
		state = states.jump;
		sprite_index = spr_fall;
	}
	if (!scr_solid(x + xscale, y, true))
	{
		instance_create(x, y, obj_jumpdust);
		vsp = 0;
		if (wallspeed >= 6 && wallspeed < 12)
		{
			state = states.mach2;
			movespeed = wallspeed;
		}
		else if wallspeed >= 12
		{
			state = states.mach3;
			sprite_index = spr_mach4;
			movespeed = wallspeed;
		}
		hsp = wallspeed * xscale;
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
		xscale *= -1;
		if (wallspeed >= 6 && wallspeed < 12)
		{
			state = states.mach2;
			sprite_index = spr_mach2jump;
			movespeed = wallspeed;
		}
		else if wallspeed >= 12
		{
			state = states.mach3;
			sprite_index = spr_plrdashpad;
			movespeed = wallspeed;
		}
		vsp = -11;
		jumpstop = true;
		hsp = wallspeed * xscale;
	}
	image_speed = 0.6;
	if (!instance_exists(obj_cloudeffect))
		instance_create(x, y + 43, obj_cloudeffect);
}
