// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hurtvoiceline(){
	if (character == CHARACTERS.PIZZELLE)
		scr_sound(choose(sound_pizzellehurt, sound_pizzellehurt2, sound_pizzellehurt3))
	else if (character == CHARACTERS.PIZZANO)
		scr_sound(sound_pizzanohurt)	
	else if (character == CHARACTERS.NOISE)
	{
		if (doisemode == false)
			scr_sound(sfx_noisescream)
		else
			scr_sound(sfx_doisescream)
	}
	else
	{
	}
}

function scr_happyvoiceline(){
	if (character == CHARACTERS.PIZZELLE)
		scr_sound(choose(sound_pizzellehappy, sound_pizzellehappy2, sound_pizzellehappy3, sound_pizzellehappy4));
	else if (character == CHARACTERS.PIZZANO)
		scr_sound(choose(sound_pizzanohappy, sound_pizzanohappy2));
	else if (character == CHARACTERS.NOISE)
	{
		if (doisemode == false)
			scr_sound(choose(sfx_noise4, sfx_noise5, sfx_noise6));
		else
			scr_sound(choose(sfx_doise4, sfx_doise5, sfx_doise6));
	}
	else if (character == CHARACTERS.SWAB)
		scr_sound(sfx_swabhappy);
	else
	{
	}
}

function scr_neutralvoiceline(){
	if (character == CHARACTERS.PIZZELLE)
		scr_sound(choose(sound_pizzelleneutral, sound_pizzelleneutral2, sound_pizzelleneutral3));
	else if (character == CHARACTERS.PIZZANO)
		scr_sound(choose(sound_pizzanoneutral, sound_pizzanoneutral2));
	else if (character == CHARACTERS.NOISE)
	{
		if (doisemode == false)
			scr_sound(choose(sfx_noise1, sfx_noise2, sfx_noise3));
		else
			scr_sound(choose(sfx_doise1, sfx_doise2, sfx_doise3));
	}
	else if (character == CHARACTERS.SWAB)
		scr_sound(choose(sfx_swabneutral, sfx_swabneutral2, sfx_swabneutral3));
	else
	{
	}
}