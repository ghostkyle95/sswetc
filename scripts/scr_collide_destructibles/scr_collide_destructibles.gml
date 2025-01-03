function scr_collide_destructibles()
{
	if (state == states.mach2 || state == states.mach3 || state == states.machroll || state == states.cape || (state == states.cotton && sprite_index == spr_cotattack) || state == states.machtumble || state == states.hookshot || state == states.knightpep || state == states.crouchslide || state == states.uppercut || state == states.parry || state == states.puddle || state == states.tumble || state == states.machpizzano || state == states.door || state == states.comingoutdoor || state == states.rocketfistpizzano || state == states.pizzanoshoulderbash || state == states.minecart || state == states.jetpackdoise || state == states.cottonroll)
	{
		if (place_meeting(x + hsp, y, obj_destructibles))
		{
			with (instance_place(x + hsp, y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
			if (state == states.mach2)
				machpunchAnim = true;
		}
		if (place_meeting(x + sign(hsp), y, obj_destructibles))
		{
			with (instance_place(x + sign(hsp), y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
			if (state == states.mach2)
				machpunchAnim = true;
		}
		if (place_meeting(x + xscale, y, obj_destructibles))
		{
			with (instance_place(x + xscale, y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
			if (state == states.mach2)
				machpunchAnim = true;
		}
	}
	if ((state == states.knightpep || state == states.machtumble || state == states.superslam || state == states.puddle || state == states.hookshot) && vsp >= 0)
	{
		if (place_meeting(x, y + vsp, obj_destructibles))
		{
			with (instance_place(x, y + vsp, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	if (state == states.machcancel)
	{
		if (place_meeting(x + hsp, y + vsp, obj_destructibles))
		{
			with (instance_place(x + hsp, y + vsp, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		if (place_meeting(x + hsp, y + vsp, obj_bigdestructibles))
		{
			with (instance_place(x + hsp, y + vsp, obj_bigdestructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	if (state == states.cottondrill)
	{
		if (place_meeting(x, y + vsp, obj_destructibles))
		{
			with (instance_place(x, y + vsp, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		if (place_meeting(x, y + 1, obj_destructibles))
		{
			with (instance_place(x, y + 1, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	if (state == states.climbwall && vsp < 0)
	{
		if (place_meeting(x, y + vsp, obj_destructibles))
		{
			with (instance_place(x, y + vsp, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	if (vsp >= 0 && (state == states.puddle || (state == states.freefall || state == states.freefallland)))
	{
		if ((place_meeting(x, y + vsp + 2, obj_metalblock) && state == states.puddle) || ((state == states.freefall || state == states.freefallland) && freefallsmash >= 10))
		{
			with (instance_place(x, y + vsp + 2, obj_metalblock))
			{
				with (obj_player)
				{
					if (place_meeting(x, y + vsp + 2, obj_metalblock) && state != states.puddle)
					{
						/*state = states.freefallland;
						if sprite_index == spr_bodyslamfall
							sprite_index = spr_bodyslamland;
						else if sprite_index == spr_crusherfall
							sprite_index = spr_crusherland;
						else if sprite_index == spr_divebombfall
							sprite_index = spr_divebombland;
						image_index = 0;*/
					}
				}
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		if (place_meeting(x, y + vsp + 2, obj_destructibles))
		{
			with (instance_place(x, y + vsp + 2, obj_destructibles))
			{
				with (obj_player)
				{
					if (place_meeting(x, y + vsp + 2, obj_bigdestructibles) && state != states.puddle && freefallsmash <= 10)
					{
						/*state = states.freefallland;
						if sprite_index == spr_bodyslamfall
							sprite_index = spr_bodyslamland;
						else if sprite_index == spr_crusherfall
							sprite_index = spr_crusherland;
						else if sprite_index == spr_divebombfall
							sprite_index = spr_divebombland;
						image_index = 0;*/
					}
				}
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	if (state == states.jump || state == states.Sjump || state = states.cape || state == states.mach2 || state == states.mach3 || state == states.machpizzano)
	{
		if (place_meeting(x, y + vsp, obj_destructibles) && vsp < 0)
		{
			with (instance_place(x, y + vsp, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		if (place_meeting(x, y - 1, obj_destructibles))
		{
			with (instance_place(x, y - 1, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		
		if character == CHARACTERS.NIKOCADO
		{
			if (place_meeting(x, y + vsp + 2, obj_destructibles))
			{
				with (instance_place(x, y + vsp + 2, obj_destructibles))
				{
					DestroyedBy = other.id;
					event_user(0);
				}
			}
			if (place_meeting(x, y + vsp + 2, obj_metalblock))
			{
				with (instance_place(x, y + vsp + 2, obj_metalblock))
				{
					DestroyedBy = other.id;
					event_user(0);
				}
			}
		}
	}
	if (state == states.uppercut && vsp < 0)
	{
		if (place_meeting(x, y + vsp, obj_destructibles))
		{
			with (instance_place(x, y + vsp, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	if (state == states.handstandjump)
	{
		with (obj_bigdestructibles)
		{
			if (place_meeting(x - obj_player.hsp, y, obj_player))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		with (obj_destructibles)
		{
			if (place_meeting(x - obj_player.hsp, y, obj_player))
			{
				var _player = instance_nearest(x, y, obj_player);
				DestroyedBy = _player;
				event_user(0);
			}
		}
	}
	with (obj_baddie)
	{
		if (place_meeting(x + hsp, y, obj_destructibles) && thrown)
		{
			with (instance_place(x + hsp, y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		if (place_meeting(x + sign(hsp), y, obj_destructibles) && thrown)
		{
			with (instance_place(x + sign(hsp), y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
	with (obj_train)
	{
		if (place_meeting(x + hsp, y, obj_destructibles))
		{
			with (instance_place(x + hsp, y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
		if (place_meeting(x + sign(hsp), y, obj_destructibles))
		{
			with (instance_place(x + sign(hsp), y, obj_destructibles))
			{
				DestroyedBy = other.id;
				event_user(0);
			}
		}
	}
}
