if (global.levelname == "none") { global.playminutes = 0; global.playseconds = 0; return; }
else if (!obj_pause.pause)
{
	global.playseconds += 1;
	
	// adds minute if second count has maxxed
	if (global.playseconds > 59)
	{
		global.playminutes += 1;
		global.playseconds -= 59;
	}
};
alarm[3] = 60;
