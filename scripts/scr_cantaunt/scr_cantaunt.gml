function scr_cantaunt(){
	if (key_taunt2)
	{
		taunttimer = 20;
		tauntstoredmovespeed = movespeed;
		tauntstoredsprite = sprite_index;
		tauntstoredstate = state;
		state = states.backbreaker;
		if (supertauntcharged && key_up)
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
		if character == CHARACTERS.PIZZELLE || character == CHARACTERS.PIZZANO
			scr_sound(choose(sound_taunt1, sound_taunt2, sound_taunt3, sound_taunt4, sound_taunt5, sound_taunt6, sound_taunt7, sound_taunt8));
		else
			scr_sound(sfx_taunt);
	}
}