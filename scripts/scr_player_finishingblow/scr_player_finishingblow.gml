function scr_player_finishingblow()
{
    hsp = movespeed
    move = key_right + key_left
	if (move != 0)
        movespeed = approach(movespeed, (move * 8), 1)
    else
        movespeed = approach(movespeed, 0, 0.5)
	//movespeed = approach(movespeed, 0, 0.25);
	if (floor(image_index) >= (image_number - 1))
	{
		state = states.normal;
		movespeed = 0;
	}
	if ((floor(image_index) >= 6 && !instance_exists(obj_swordhitbox)) && sprite_index != spr_swingdingend)
	{
		//movespeed = 5;
		scr_sound(sound_punch);
		scr_sound(sound_killingblow);
		instance_create(x, y, obj_swordhitbox);
		with (baddiegrabbedID)
		{
			instance_create(x, y, obj_slapstar);
			instance_create(x, y, obj_baddiegibs);
			hp = 0;
			alarm[1] = 5;
			thrown = true;
			if (other.sprite_index != other.spr_uppercutfinishingblow)
			{
				hsp = obj_player.xscale * 20;
				vsp = -6;
			}
			else
			{
				vsp = -20;
				hsp = 0;
			}
			state = baddiestates.stun;
			stunned = 500;
		}
		global.combotime = 60;
		global.hit += 1;
	}
	if (sprite_index == spr_swingdingend && !instance_exists(obj_swordhitbox))
	{
		movespeed = 3;
		scr_sound(sound_punch);
		scr_sound(sound_killingblow);
		instance_create(x, y, obj_swordhitbox);
		with (baddiegrabbedID)
		{
			instance_create(x, y, obj_slapstar);
			instance_create(x, y, obj_baddiegibs);
			hp = 0;
			alarm[1] = 5;
			thrown = true;
			hsp = obj_player.xscale * 20;
			vsp = -6;
			state = baddiestates.stun;
			stunned = 500;
		}
		global.combotime = 60;
		global.hit += 1;
	}
	image_speed = 0.35;
	landAnim = false;
	//vsp = 0;
}
