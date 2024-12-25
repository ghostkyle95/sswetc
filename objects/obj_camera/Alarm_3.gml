if (global.levelname != "none" && !obj_pause.pause)
{
	global.playseconds++;
	
	// add minute if second count has maxxed
	if (global.playseconds > 59)
	{
		global.playminutes++;
		global.playseconds -= 59;
	}
};
alarm[3] = 60;
