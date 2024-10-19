if (obj_player.state != states.bombpep)
{
	obj_player.state = states.bombpep;
	obj_player.bombpeptimer = 0;
	obj_player.sprite_index = obj_player.spr_bomb_end;
}
