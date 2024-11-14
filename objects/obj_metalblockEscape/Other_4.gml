if (!global.panic)
{
	x = -999;
	y = -999;
}
OldPanic = global.panic;
if (ds_list_find_index(global.escaperoom, id) != -1)
	instance_destroy();
