var playerid = obj_player
if (!instance_exists(playerid))
    return;
var _move = true
with (obj_player)
{
    if (state == states.victory || state == states.keyget || state == states.gottreasure || state == states.door)
        _move = false
}
if (image_alpha >= 1)
{
	if ((!instance_exists(obj_fadeout)) && (!obj_player.cutscene))
	{
		if _move
		{
			var dir = point_direction(x, y, playerid.x, playerid.y)
			x += lengthdir_x(maxspeed, dir)
			y += lengthdir_y(maxspeed, dir)
		}
	}
}
else
	image_alpha += 0.01
if (!_move)
    image_alpha = approach(image_alpha, 0, 0.1)
if (_move && place_meeting(x, y, playerid)) && playerid.state != states.actor && (!obj_player.cutscene) && (!instance_exists(obj_fadeout)) && (!instance_exists(obj_endlevelfade)) && image_alpha >= 1
{
    with (playerid)
    {
		targetRoom = timesuproom;
		targetDoor = "A";
		if (!instance_exists(obj_fadeout))
		{
			instance_create(x, y, obj_fadeout);
			audio_stop_all();
			scr_sound(mu_timesup);
		}
		state = states.timesup;
    }
    instance_destroy()
}
if (maxspeed < 3 && image_alpha >= 1)
    maxspeed += 0.01
