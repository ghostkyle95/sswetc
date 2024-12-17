scr_tvsprites();
event_user(0);
if (room == steamy_1)
{
	global.srank = 22000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (room == entryway_1)
{
	global.srank = 10000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (room == molasses_1)
{
	global.srank = 21000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (room == mines_1)
{
	global.srank = 24000;
	global.arank = global.srank - (global.srank / 4);
	global.brank = global.srank - ((global.srank / 4) * 2);
	global.crank = global.srank - ((global.srank / 4) * 3);
}
if (showtext)
{
	xi = 500 + random_range(1, -1);
	if (yi > 475)
		yi -= 5;
}
if (!showtext)
{
	xi = 500 + random_range(1, -1);
	if (yi < 675)
		yi += 1;
}
if (!(obj_player.state == states.knightpep && obj_player.state == states.knightpepattack && obj_player.state == states.knightpepslopes))
	once = false;
if (obj_player.y < (180 + obj_camera.Cam_y) && obj_player.x > ((camera_get_view_width(view_camera[0]) - 350) + obj_camera.Cam_x))
{
	DrawY = lerp(DrawY, -300, 0.15);
	alpha = 0.5;
}
else
{
	DrawY = lerp(DrawY, 0, 0.15);
	alpha = 1;
}
if ((global.hurtcounter >= global.hurtmilestone) && global.hurtcounter != 0 && global.hurtmilestone != 0)
{
	alarm[0] = 150;
	if (obj_player.character == CHARACTERS.PIZZELLE)
		character = "Pizelle";
	else if (obj_player.character == CHARACTERS.PIZZANO)
		character = "The Pizzano";
	else if (obj_player.character == CHARACTERS.NOISE && obj_player.doisemode == false)
		character = "The Noise";
	else if (obj_player.character == CHARACTERS.NOISE && obj_player.doisemode == true)
		character = "The Doise";
	else if (obj_player.character == CHARACTERS.SWAB)
		character = "Swab";
	message = "You have hurt " + string(character) + " " + string(global.hurtmilestone) + " times...";
	global.hurtmilestone += 10;
}
if (obj_player.state == states.keyget)
{
	showtext = true;
	message = "Key obtained!";
	alarm[0] = 50;
}
if (tvsprite != spr_tvturnon && ds_queue_size(global.newhudtvanim) < 1 && tvlength <= 0)
{
	switch (obj_player.state)
	{
		default:
			if !global.panic
			{
				if !(global.combo >= 3)
					if (!obj_player.angry)
					{
						if (string_pos("secret", room_get_name(room)) != 0)
						{
							tvcount = choose(500, 450, 400, 550);
							tvsprite = secrettvspr;
						}
						else
						{
							if (tvsprite != idletvspr && !(tvsprite == tvchange1 || tvsprite == tvchange2))
							{
								tvcount = choose(500, 450, 400, 550);
								tvsprite = idletvspr;
								image_index = 0;
							}
							if (tvsprite == idletvspr && tvcount < 1)
							{
								tvsprite = choose(tvchange1, tvchange2, tvchange2, tvchange1);
								image_index = 0;
							}
							if ((tvsprite == tvchange1 || tvsprite == tvchange2) && animation_end())
							{
								tvcount = choose(500, 450, 400, 550);
								tvsprite = idletvspr;
								image_index = 0;
							}
							if (tvsprite == idletvspr)
								tvcount--;
						}
					}
					else
					{
						tvsprite = angrytvspr;
					}
				else
				{
					tvsprite = combotvspr;
				}
			}
			else
			{
				tvsprite = panictvspr;
			}
			break;
		case states.minecart:
			tvsprite = minecarttvspr;
			break;
		case states.fireass:
			tvsprite = firetvspr;
			break;
		case states.bombpep:
			tvsprite = bombtvspr;
			break;
		case states.fling:
			tvsprite = orbtvspr;
			break;
		case states.cotton:
		case states.cottondrill:
		case states.cottonroll:
			tvsprite = cottontvspr;
			break;
		case states.mach2:
		case states.machslide:
		case states.climbwall:
		case states.mach3:
			if (obj_player.state == states.mach3 && obj_player.sprite_index != obj_player.spr_crazyrun)
				tvsprite = mach3tvspr;
			else if (obj_player.sprite_index == obj_player.spr_crazyrun)
				tvsprite = crazyruntvspr
			else
				tvsprite = machtvspr;
			break;
		case states.puddle:
			tvsprite = sliptvspr;
			break;
		case states.hurt:
			tvsprite = hurttvspr;
			break;
		case states.freefallland:
		case states.Sjumpland:
			tvsprite = impacttvspr;
			break;
	}
	if (OLDtvsprite != tvsprite && tvsprite != tvchange1 && tvsprite != tvchange2 && tvsprite != spr_tvoff && tvsprite != spr_tvturnon && tvsprite != spr_tvoff_nopropeller && tvsprite != spr_tvturnon_nopropeller)
	{
		transitionimageindex = 0;
		staticdraw = true;
		savedsprite = OLDtvsprite;
		OLDtvsprite = tvsprite;
	}
}
else if (tvsprite != spr_tvturnon && tvsprite != spr_tvturnon_nopropeller && ds_queue_size(global.newhudtvanim) > 1)
{
	tvsprite = ds_queue_dequeue(global.newhudtvanim);
	tvlength = ds_queue_dequeue(global.newhudtvanim);
}
if (tvlength > 0)
{
	if (OLDtvsprite != tvsprite && tvsprite != tvchange1 && tvsprite != tvchange2 && tvsprite != spr_tvoff && tvsprite != spr_tvturnon && tvsprite != spr_tvoff_nopropeller && tvsprite != spr_tvturnon_nopropeller)
	{
		transitionimageindex = 0;
		staticdraw = true;
		savedsprite = OLDtvsprite;
		OLDtvsprite = tvsprite;
	}
}
tvlength--;
if (global.key_inv)
	invsprite = spr_invkey;
else if (global.treat)
	invsprite = spr_invdonut;
else
	invsprite = spr_invempty;
if ((tvsprite == spr_tvturnon || tvsprite == spr_tvturnon_nopropeller) && floor(image_index) == (image_number - 1))
	tvsprite = idletvspr;
sprite_index = tvsprite;
