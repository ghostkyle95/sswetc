function scr_player_mach1()
{
	switch (character)
	{
		case CHARACTERS.PIZZANO:
		case CHARACTERS.PIZZELLE:
			dir = xscale;
			move = key_left + key_right;
			landAnim = false;
			if (scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + 1, y, obj_slope))
			{
				mach2 = 0;
				state = states.normal;
				movespeed = 0;
			}
			if (scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x - 1, y, obj_slope))
			{
				mach2 = 0;
				state = states.normal;
				movespeed = 0;
			}
			if (movespeed <= 8)
				movespeed += 0.5;
			machhitAnim = false;
			crouchslideAnim = true;
			if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
				hsp = xscale * movespeed;
			else if (place_meeting(x, y + 1, obj_railh))
				hsp = (xscale * movespeed) - 5;
			else if (place_meeting(x, y + 1, obj_railh2))
				hsp = (xscale * movespeed) + 5;
			if (grounded && xscale == 1 && move == -1)
			{
				momemtum = false;
				mach2 = 0;
				movespeed = 0;
				image_index = 0;
				xscale = -1;
			}
			if (grounded && xscale == -1 && move == 1)
			{
				momemtum = false;
				mach2 = 0;
				movespeed = 0;
				image_index = 0;
				xscale = 1;
			}
			if (grounded)
			{
				if (mach2 < 35)
					mach2++;
				if (mach2 >= 35)
				{
					charged = 0;
					movespeed = 10;
					state = states.mach2;
					instance_create(x, y, obj_jumpdust);
				}
			}
			sprite_index = spr_mach1;
			if (!grounded)
			{
				sprite_index = spr_airdash1;
				momemtum = true;
				state = states.jump;
				jumpAnim = false;
				image_index = 0;
			}
			if (!key_attack && grounded)
			{
				state = states.normal;
				image_index = 0;
				mach2 = 0;
			}
			if (key_down && !place_meeting(x, y, obj_dashpad) && !grounded && sprite_index != spr_dive)
			{
				flash = false;
				state = states.machroll;
				vsp = 15;
			}
			if (key_down && !place_meeting(x, y, obj_dashpad) && grounded)
			{
				flash = false;
				state = states.machroll;
			}
			image_speed = 0.45;
			if (key_jump && grounded && key_attack)
			{
				scr_sound(sfx_jump);
				sprite_index = spr_airdash1;
				dir = xscale;
				momemtum = true;
				vsp = -11;
				movespeed += 2;
				state = states.jump;
				jumpAnim = true;
				image_index = 0;
			}
			if (!instance_exists(obj_dashcloud) && grounded)
				instance_create(x, y, obj_dashcloud);
			scr_cantaunt()
			if (key_slap2 && !key_down && !suplexmove && !shotgunAnim && global.cane != true)
			{
				scr_sound(sfx_grabdash);
				instance_create(x, y, obj_slaphitbox);
				suplexmove = true;
				vsp = 0;
				instance_create(x, y, obj_jumpdust);
				image_index = 0;
				sprite_index = spr_suplexdash;
				state = states.handstandjump;
			}
			if (((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope))))
			{
				wallspeed = movespeed;
				grabclimbbuffer = 10;
				state = states.climbwall;
			}
			if (grounded && (floor(image_index) == (image_number - 1) && sprite_index == spr_rollgetup))
				sprite_index = spr_mach1;
			break;
	}
}
