if (obj_player.character == CHARACTERS.PIZZELLE && obj_player.doisemode == false)
{
	obj_player.character = CHARACTERS.PIZZANO;
	tvcount = 500;
	obj_player.paletteselect = 1
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
	obj_player.doisemode = false;
	message = "THE PIZZANO";
	showtext = true;
	alarm[0] = 200;
	scr_characterspr();
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
	message = "THE NOISE";
	showtext = true;
	alarm[0] = 200;
	scr_characterspr();
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
	message = "THE DOISE";
	showtext = true;
	alarm[0] = 200;
	scr_characterspr();
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
	message = "PIZZELLE";
	showtext = true;
	alarm[0] = 200;
	scr_characterspr();
	scr_tvsprites();
}
