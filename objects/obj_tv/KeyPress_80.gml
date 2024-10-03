if (obj_player.character == CHARACTERS.PIZZELLE)
{
	obj_player.character = CHARACTERS.PIZZANO;
	scr_characterspr();
	scr_tvsprites();
	tvcount = 500;
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
}
else if (obj_player.character == CHARACTERS.PIZZANO)
{
	obj_player.character = CHARACTERS.NOISE;
	scr_characterspr();
	scr_tvsprites();
	tvcount = 500;
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
}
else
{
	obj_player.character = CHARACTERS.PIZZELLE;
	scr_characterspr();
	scr_tvsprites();
	tvcount = 500;
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
}
