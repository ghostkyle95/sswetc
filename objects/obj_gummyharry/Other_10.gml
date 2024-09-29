if (DestroyedBy.object_index == obj_player)
{
	if (place_meeting(x - DestroyedBy.hsp, y, DestroyedBy))
	{
		if (DestroyedBy.state == states.mach1 || DestroyedBy.state == states.mach2)
		{
			with (DestroyedBy)
			{
				with (other.id)
				{
					if (hp <= 1)
						instance_destroy();
					if (hp > 1)
					{
						ShakeBuffer = 5;
						hp -= 1;
						instance_create(x, y, obj_bangeffect);
						instance_create(x, y, obj_slapstar);
						instance_create(x, y, obj_baddiegibs);
						camera_shake(3, 3);
					}
				}
				hsp = -xscale * 4;
				vsp = -4;
				mach2 = 0;
				image_index = 0;
				sprite_index = choose(spr_blockbreak1, spr_blockbreak2, spr_blockbreak3, spr_blockbreak4, spr_blockbreak5, spr_blockbreak6, spr_blockbreak7);
				state = states.tackle;
			}
		}
		else if (DestroyedBy.state == states.handstandjump || DestroyedBy.state == states.pizzanoshoulderbash)
		{
			with (DestroyedBy)
			{
				hsp = 0;
				movespeed = 0;
				sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4);
				image_index = 0;
				state = states.finishingblow;
			}
		}
		else
			instance_destroy();
	}
}
else
	instance_destroy();
