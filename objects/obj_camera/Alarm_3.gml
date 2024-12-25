if (global.levelname != "none" && !obj_pause.pause)
{
	global.playseconds += 1;
	if (global.playseconds > 59)
	{
		global.playminutes += 1;
		global.playseconds -= 59;
	}
};
alarm[3] = 60;
