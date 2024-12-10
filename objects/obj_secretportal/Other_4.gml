var _start = false
with (obj_player)
{
	if (targetDoor == "SECRET" && secretportalID == other.id)
	{
		x = other.x
		y = other.y
		roomstartx = x
		roomstarty = y
		with (obj_coneball)
		{
			x = other.x
			y = other.y
		}
		_start = true
		other.sprite_index = spr_secretportal_enter
		other.image_index = 0
		instance_destroy(other)
		instance_create(x, y, obj_secretportalstart)
	}
}
if (ds_list_find_index(global.saveroom, id) != -1)
{
    active = false
    sprite_index = spr_secretportal_enter
    image_index = 0
}
