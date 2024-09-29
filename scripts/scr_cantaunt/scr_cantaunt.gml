function scr_cantaunt(){
		if (key_taunt2)
		{
			//if state == states.crouch && scr_solid(x, y - 16) && scr_solid(x, y - 32) return
			
			taunttimer = 20;
			tauntstoredmovespeed = movespeed;
			tauntstoredsprite = sprite_index;
			tauntstoredstate = state;
			state = states.backbreaker;
			if (supertauntcharged)
			{
				image_index = 0;
				sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3);
			}
			else
			{
				image_index = irandom_range(0, sprite_get_number(spr_taunt));
				sprite_index = spr_taunt;
			}
			instance_create(x, y, obj_taunteffect);
		}
}