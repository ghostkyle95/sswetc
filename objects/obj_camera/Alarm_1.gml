if (global.panic || global.timetrial)
{
	var _letters = string_letters(room_get_name(room));
	if string_ends_with(_letters, "secret") return;
	global.seconds -= 1;
	if (global.collect >= 5)
		global.collect -= 5;
	if (global.seconds < 0)
	{
		global.seconds = 59;
		global.minutes -= 1;
	}
}
alarm[1] = 60;
