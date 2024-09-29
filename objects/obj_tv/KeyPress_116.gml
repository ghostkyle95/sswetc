if (obj_player.character == "P")
{
	obj_player.character = "N";
	scr_characterspr();
	scr_tvsprites();
	tvcount = 500;
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
}
else if (obj_player.character == "N")
{
	obj_player.character = "PTN";
	scr_characterspr();
	scr_tvsprites();
	tvcount = 500;
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
}
else
{
	obj_player.character = "P";
	scr_characterspr();
	scr_tvsprites();
	tvcount = 500;
	obj_player.state = states.normal
	obj_player.sprite_index = obj_player.spr_idle
}
