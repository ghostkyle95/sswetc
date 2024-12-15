if (obj_shell.isOpen == false)
{
	if (obj_player.character == CHARACTERS.PIZZELLE && obj_player.doisemode == false)
	{
		obj_player.character = CHARACTERS.PIZZANO;
		tvcount = 500;
		obj_player.paletteselect = 1
		obj_player.state = states.normal
		obj_player.sprite_index = obj_player.spr_idle
		obj_player.doisemode = false;
		message = "The Pizzano";
		showtext = true;
		alarm[0] = 200;
		scr_tvsprites();
	}
	else if (obj_player.character == CHARACTERS.PIZZANO && obj_player.doisemode == false)
	{
		obj_player.character = CHARACTERS.NOISE;
		tvcount = 500;
		obj_player.paletteselect = 1
		obj_player.state = states.normal
		obj_player.sprite_index = obj_player.spr_idle
		obj_player.doisemode = false;
		message = "The Noise";
		showtext = true;
		alarm[0] = 200;
		scr_tvsprites();
	}
	else if (obj_player.character == CHARACTERS.NOISE && obj_player.doisemode == false)
	{
		obj_player.character = CHARACTERS.NOISE;
		tvcount = 500;
		obj_player.paletteselect = 1
		obj_player.state = states.normal
		obj_player.sprite_index = obj_player.spr_idle
		obj_player.doisemode = true;
		message = "The Doise";
		showtext = true;
		alarm[0] = 200;
		scr_tvsprites();
	}
	else if (obj_player.character == CHARACTERS.NOISE && obj_player.doisemode == true)
	{
		obj_player.character = CHARACTERS.SWAB;
		tvcount = 500;
		obj_player.paletteselect = 1
		obj_player.state = states.normal
		obj_player.sprite_index = obj_player.spr_idle
		obj_player.doisemode = false;
		message = "Swab";
		showtext = true;
		alarm[0] = 200;
		scr_tvsprites();
	}
	else
	{
		obj_player.character = CHARACTERS.PIZZELLE;
		tvcount = 500;
		obj_player.paletteselect = 1
		obj_player.state = states.normal
		obj_player.sprite_index = obj_player.spr_idle
		obj_player.doisemode = false;
		message = "Pizzelle";
		showtext = true;
		alarm[0] = 200;
		scr_tvsprites();
	}
}
