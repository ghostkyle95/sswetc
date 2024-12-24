function scr_player_mach3()
{
	switch (character)
	{
		case CHARACTERS.PIZZELLE:
		case CHARACTERS.NOISE:
		case CHARACTERS.PIZZANO:
		case CHARACTERS.SWAB:
		case CHARACTERS.NIKOCADO:
		case CHARACTERS.GUMBOB:
			if (grounded)
				Sjumpcan_doublejump = true;
			if (windingAnim < 2000)
				windingAnim++;
			if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
				hsp = xscale * movespeed;
			else if (place_meeting(x, y + 1, obj_railh))
				hsp = (xscale * movespeed) - 5;
			else if (place_meeting(x, y + 1, obj_railh2))
				hsp = (xscale * movespeed) + 5;
			mach2 = 100;
			momemtum = true;
			move = key_right + key_left;
			move2 = key_right2 + key_left2;
			if character != CHARACTERS.NIKOCADO
			{
				if (movespeed < 24 && move == xscale)
				{
					movespeed += 0.05;
					if (!instance_exists(obj_crazyruneffect))
						instance_create(x, y, obj_crazyruneffect);
				}
				else if ((movespeed > 12 && move != xscale) && Dashpad_buffer <= 0)
					movespeed -= 0.05;
			}
			else
			{
				if (movespeed < 15 && move == xscale)
				{
					movespeed += 0.05;
					if (!instance_exists(obj_crazyruneffect))
						instance_create(x, y, obj_crazyruneffect);
				}
				else if ((movespeed > 12 && move != xscale) && Dashpad_buffer <= 0)
					movespeed -= 0.05;
			}
			crouchslideAnim = true;
			if (!key_jump2 && !jumpstop && vsp < 0.5)
			{
				vsp /= 2;
				jumpstop = true;
			}
			if (grounded && vsp > 0)
				jumpstop = false;
			if (input_buffer_jump < 8 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1) && key_attack&& sprite_index != spr_mach3jump)
			{
				scr_sound(sfx_plrjump);
				image_index = 0;
				sprite_index = spr_mach3jump;
				vsp = -9;
			}
			if (sprite_index == spr_mach3jump && floor(image_index) == (image_number - 1))
				sprite_index = spr_mach4;
			if (floor(image_index) == (image_number - 1) && (sprite_index == spr_rollgetup || sprite_index == spr_plrdashpad))
				sprite_index = spr_mach4;
			if animation_end() && sprite_index == spr_walljumpstart && !grounded
				sprite_index = spr_walljump;
			if grounded && (sprite_index == spr_walljumpstart || sprite_index == spr_walljump)
				sprite_index = spr_mach4;
			if animation_end() && sprite_index == spr_mach3hit
				sprite_index = spr_mach4;
			if ((movespeed > 20 && sprite_index != spr_crazyrun) && character != CHARACTERS.NIKOCADO && sprite_index != spr_dive && sprite_index != spr_rollgetup && sprite_index != spr_mach3hit)
			{
				flash = true;
				sprite_index = spr_crazyrun;
			}
			if (sprite_index == spr_crazyrun && !instance_exists(obj_crazyrunothereffect))
				instance_create(x, y, obj_crazyrunothereffect);
			if (key_down)
				input_buffer_jump = 10000000000;
			else if (key_jump)
				input_buffer_jump = 0;
				
			if (!grounded && input_buffer_jump == 0 && character == CHARACTERS.PIZZANO)
				pizzano_do_cape();
			if (!grounded && input_buffer_jump == 0 && character == CHARACTERS.GUMBOB && gumbobpropellercooldown == 0)
			{
				state = states.gumbobpropellor;
				sprite_index = spr_gumbob_propeller_start;
				movespeed = 0;
				vsp = 0;
			}
			if character == CHARACTERS.NOISE || character == CHARACTERS.SWAB
			{
				if (key_up && !key_slap2 && sprite_index != spr_plrdashpad && sprite_index != spr_dive && grounded)
				{
					scr_sound(sfx_plrsjumpstart);
					sprite_index = spr_superjumpprep;
					state = states.Sjumpprep;
					hsp = 0;
					image_index = 0;
				}
			}
			else
			{
				if (key_up && !key_slap2 && sprite_index != spr_plrdashpad && sprite_index != spr_dive)
				{
					scr_sound(sfx_plrsjumpstart);
					sprite_index = spr_superjumpprep;
					state = states.Sjumpprep;
					hsp = 0;
					image_index = 0;
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
			if ((!key_attack && grounded && sprite_index != spr_plrdashpad) && Dashpad_buffer <= 0)
			{
				scr_sound(sfx_machbreak);
				sprite_index = spr_machslidestart;
				state = states.machslide;
				image_index = 0;
				mach2 = 0;
			}
			if ((move == -xscale && grounded) && Dashpad_buffer <= 0)
			{
				scr_sound(sfx_plrmachturn);
				sprite_index = spr_machslideboost3;
				flash = false;
				state = states.machslide;
				image_index = 0;
				mach2 = 100;
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
			if (sprite_index == spr_dive && grounded)
				sprite_index = spr_mach4;
			if (sprite_index == spr_Sjumpcancel && grounded) 
				sprite_index = spr_mach4;
			if (sprite_index == spr_outofcontrolfall && grounded) 
				sprite_index = spr_mach4;
			if (!key_down && sprite_index == spr_dive && !grounded)
			{
				vsp = 10;
				sprite_index = spr_mach4;
			}
			if (((!grounded && !place_meeting(x + hsp, y, obj_metalblock)) && scr_solid(x + hsp, y, true) && !place_meeting(x + hsp, y, obj_destructibles) && !scr_slope_ext(x + sign(hsp), y)) || !grounded && scr_solid_slope((x + hsp), y)) && (!(place_meeting((x + hsp), y, obj_destructibles))) || (grounded && (scr_solid(x + sign(hsp), y - 2, true) && !scr_slope_ext(x + sign(hsp), y - 1)) && (!place_meeting(x + hsp, y, obj_metalblock) && !place_meeting(x + hsp, y, obj_destructibles)) && scr_slope())
			{
				if (sprite_index != spr_outofcontrolfall)
				{
					wallspeed = clamp(movespeed, 12, 24);
					state = states.climbwall;
				}
				else
				{
					scr_sound(sfx_bump)
					xscale *= -1
					vsp = -5
					instance_create(x, y, obj_bangeffect);
				}
			}
			else if (grounded && scr_solid(x + sign(hsp), y) && (!scr_slope() && scr_solid(x + sign(hsp), y - 2)) && !place_meeting(x + sign(hsp), y, obj_metalblock) && !place_meeting(x + sign(hsp), y, obj_destructibles))
			{
				scr_sound(sfx_groundpoundland);
				with (obj_camera)
				{
					shake_mag = 20;
					shake_mag_acc = 40 / room_speed;
				}
				image_speed = 0.35;
				with (obj_baddie)
				{
					if (point_in_camera(x, y, view_camera[0]) && grounded)
					{
						stun = true;
						alarm[0] = 200;
						ministun = false;
						vsp = -5;
						hsp = 0;
					}
				}
				flash = false;
				combo = 0;
				sprite_index = spr_mach3hitwall;
				state = states.bump;
				hsp = -2.5 * xscale;
				vsp = -3;
				mach2 = 0;
				image_index = 0;
				instance_create(x + (10 * xscale), y + 10, obj_bumpeffect);
			}
			if (!grounded)
			{
				if (scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x + 1, y, obj_destructibles))
				{
					wallspeed = movespeed;
					machhitAnim = false;
					grabclimbbuffer = 10;
					state = states.climbwall;
				}
				else if (scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x + sign(hsp), y, obj_slope) && !place_meeting(x - 1, y, obj_destructibles))
				{
					wallspeed = movespeed;
					machhitAnim = false;
					grabclimbbuffer = 10;
					state = states.climbwall;
				}
			}
			if (!instance_exists(obj_chargeeffect) && sprite_index != spr_dive)
				instance_create(x, y, obj_chargeeffect);
			if (!instance_exists(obj_superdashcloud) && grounded)
				instance_create(x, y, obj_superdashcloud);
			if (sprite_index == spr_mach4)
				image_speed = 0.4;
			if (sprite_index == spr_crazyrun)
				image_speed = 0.55;
			if (sprite_index == spr_rollgetup)
				image_speed = 0.35;
			if (sprite_index == spr_plrdashpad)
				image_speed = 0.3;
			scr_cantaunt()
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
			noise_do_crusher();
			break;
		}
}