if (obj_shell.isOpen == false)
{
	if !instance_exists(obj_titlecard) && !instance_exists(obj_mainfartselect) && !instance_exists(obj_characterchanger)
		instance_create(x, y, obj_characterchanger);
};
