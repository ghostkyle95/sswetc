function scr_hurtplayer(_player_index = obj_player)
{
	if (_player_index.state != states.parry && _player_index.state != states.hurt)
	{
		with (_player_index)
		{
			if ((state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes) && !cutscene)
			{
			}
			else if (sprite_index == spr_supertaunt1 || sprite_index == spr_supertaunt2 || sprite_index == spr_supertaunt3)
			{
			}
			else if (state == states.minecart)
			{
				scr_sound(sfx_transfoend);
				sprite_index = spr_mach3hitwall;
				state = states.bump;
				hsp = 2.5 * xscale;
				vsp = -3;
				mach2 = 0;
				image_index = 0;
				instance_create(x, y, obj_bombexplosionharmless);
				for (var i = 0; i < (sprite_get_number(spr_minecartdebris) - 1); i++)
				{
					with (instance_create(x + irandom_range(-9, 9), y + irandom_range(-9, 9), obj_debris))
					{
						sprite_index = spr_minecartdebris;
						image_index = i;
						vsp = floor(random_range(-5, -9));
						hsp = floor(random_range(-5, 7));
					}
				}
			}
			else if (state == states.bombpep && !hurted)
			{
			}
			else if (state == states.boxxedpep)
			{
			}
			else if (state == states.cheesepep || state == states.cheesepepstick)
			{
			}
			else if (state != states.hurt && state != states.backbreaker && !hurted && !cutscene && state != states.bump && state != states.tumble)
			{
				scr_sound(sfx_hurt);
				if character == CHARACTERS.NOISE
					scr_sound(sfx_noisehurt);
				if (state == states.cotton || state == states.cottondrill || state == states.cottonroll || state = states.minecart)
					scr_sound(sfx_transfoend);
				if irandom_range(0,100) <= 50
					scr_hurtvoiceline()
				global.hurtcounter += 1;
				state = states.hurt;
				alarm[8] = 100;
				alarm[7] = 150;
				hurted = true;
				if (xscale == other.image_xscale)
					sprite_index = spr_hurtjump;
				else
					sprite_index = spr_hurt;
				movespeed = 8;
				vsp = -15;
				timeuntilhpback = 300;
				var _oldcollect = global.collect;
				if (global.collect > 50)
					global.collect -= 50;
				else
					global.collect = 0;
				global.combotime -= 25
				var _repeat = clamp(round((_oldcollect - global.collect) / 10), 0, 15);
				if (global.collect >= 0)
				{
					create_small_number(x, y, string(global.collect - _oldcollect), 1);
					repeat (_repeat)
						instance_create(x, y, obj_pizzaloss);
				}
				else if (_player_index.shotgunAnim)
					_player_index.shotgunAnim = false;
				instance_create(x, y, obj_spikehurteffect);
				image_index = 0;
				flash = true;
				global.style -= 15;
			}
		}
	}
}
