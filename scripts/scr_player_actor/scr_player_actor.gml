function scr_player_actor()
{
	movespeed = 0;
	var _room_w = room_width;
	var _room_h = room_height;
	x = clamp(x, 0, _room_w);
	y = clamp(y, 0, _room_h);
	global.combofreeze = 30;
}
