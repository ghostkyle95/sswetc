if (object_index != obj_charcherry)
{
	scr_sound(sfx_slaphit);
	instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);
	if (obj_player.character == CHARACTERS.PIZZELLE || obj_player.character == CHARACTERS.GUMBOB || obj_player.character == CHARACTERS.NOISE || obj_player.character == CHARACTERS.SWAB)
	{
		if (!global.cane)
		{
			with (obj_player)
			{
				suplexhavetomash = 5;
				sprite_index = spr_grab;
			}
			obj_player.baddiegrabbedID = id;
			obj_player.state = states.grab;
			obj_player.sprite_index = obj_player.spr_haulingstart;
			obj_player.image_index = 0;
			state = baddiestates.grabbed;
			instance_destroy(other.id);
		}
		else
		{
			state = baddiestates.stun;
			hp -= 1;
			thrown = true;
			hsp = obj_player.xscale * 15;
			vsp = -6;
			obj_player.hsp = 0;
			obj_player.vsp = 0;
			obj_player.sprite_index = obj_player.spr_canehit;
			obj_player.state = states.finishingblow;
		}
	}
	if (obj_player.character == CHARACTERS.PIZZANO)
	{
		state = baddiestates.stun;
		hp -= 1;
		thrown = true;
		hsp = obj_player.xscale * 15;
		vsp = -6;
	}
}
