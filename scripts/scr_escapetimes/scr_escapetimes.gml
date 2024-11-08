function scr_escapetimes(_room = room)
{
	var time_array;
	var seconds = 0;
	var minutes = 0;
	switch (_room)
	{
		case steamy_12:
			minutes = 6;
			seconds = 0;
			break;
		case entryway_11:
			minutes = 4;
			seconds = 0;
			break;
		case molasses_9:
			minutes = 7;
			seconds = 0;
			break;
		case mines_11:
			minutes = 6;
			seconds = 50;
			break;
		default:
			minutes = 5;
			seconds = 30;
			break;
	}
	time_array[0] = minutes;
	time_array[1] = seconds;
	return time_array;
}
