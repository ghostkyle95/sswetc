if global.panic && sprite_index != spr_pizzaportal_outline
{
	image_alpha = 1;
	if sprite_index == spr_pizzaportal
	{
		playerid = -4;
		with obj_player
		{
			if (other.playerid == noone && place_meeting(x, y, other))
			{
				targetDoor = "LAP";
				other.playerid = id;
				with obj_camera
					lock = true;
				state = states.actor;
				visible = false;
				other.sprite_index = spr_pizzaportalend;
				if character == CHARACTERS.NOISE
					other.sprite_index = spr_pizzaportalendN;
				other.image_index = 0;
				global.collect += 3000;
				global.combotime = 60;
				with (instance_create(x, y, obj_smallnumber))
					number = "3000";
			}
		}
	}
	else if (sprite_index == spr_pizzaportalend || sprite_index == spr_pizzaportalendN)
	{
		with playerid
		{
			hsp = 0;
			vsp = 0;
			visible = false;
		}
		if floor(image_index) == image_number - 1
		{
			image_index = image_number - 1;
			image_speed = 0;
			if (!instance_exists(obj_fadeout))
			{
				with obj_player
				{
					targetDoor = "LAP";
					targetRoom = other.targetRoom;
				}
				for (var i = 0; i < ds_list_size(global.baddieroom); i++)
				{
					var q = ds_list_find_index(global.baddieroom, i);
					var t = false;
					if q == -1
					{
						q = ds_list_find_index(global.saveroom, i);
						t = true;
					}
					if q != -1
					{
						if !t
							ds_list_delete(global.baddieroom, i);
						else
							ds_list_delete(global.saveroom, i);
					}
				}
				if global.laps < 2
					global.laps = 2;
				else
					global.laps++;
				global.lap = true;
				instance_create(0, 0, obj_fadeout);
			}
		}
	}
}
else
	image_alpha = 0.5;