if (obj_player.character == CHARACTERS.PIZZELLE and obj_player.doisemode == false)
{
	obj_player.character = CHARACTERS.PIZZANO;
	tvcount = 500;
	obj_player.paletteselect = 1
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
	obj_player.doisemode = false;
	scr_characterspr();
	scr_tvsprites();
}
else if (obj_player.character == CHARACTERS.PIZZANO and obj_player.doisemode == false)
{
	obj_player.character = CHARACTERS.NOISE;
	tvcount = 500;
	obj_player.paletteselect = 1
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
	obj_player.doisemode = false;
	scr_characterspr();
	scr_tvsprites();
}
else if (obj_player.character == CHARACTERS.NOISE and obj_player.doisemode == false)
{
	obj_player.character = CHARACTERS.NOISE;
	tvcount = 500;
	obj_player.paletteselect = 1
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
	obj_player.doisemode = true;
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
	scr_characterspr();
	scr_tvsprites();
}
