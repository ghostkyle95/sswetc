with (other.id)
{
	global.combofreeze = 30;
	if other.savedposition.status == false
	{
		other.savedposition.status = true;
		other.savedposition.x = x;
		other.savedposition.y = y;
	}
	else
	{
		x = other.savedposition.x;
		y = other.savedposition.y;
	}
	if (!instance_exists(obj_fadeout))
	{
		scr_sound(sound_door);
		obj_player.targetDoor = other.targetDoor;
		obj_player.targetRoom = other.targetRoom;
		obj_player.hallway = true;
		obj_player.hallwaydirection = other.image_xscale;
		other.visited = true;
		instance_create(x, y, obj_fadeout);
	}
}
