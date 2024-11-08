// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_writetosave(){
	ini_open("saveData.ini");
	if (room == entryway_1)
	{
		var currentlevel = "entryway"
		if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", currentlevel, "none")))
			ini_write_string("Ranks", currentlevel, global.rank);
			
		if (global.secretsfound > ini_read_real("SecretsFound", currentlevel, 0))
			ini_write_real("SecretsFound", currentlevel, global.secretsfound);
			
		if (global.laps > ini_read_real("Laps", currentlevel, 0))
			ini_write_real("Laps", currentlevel, global.laps);
			
		if (global.collect > ini_read_real("Score", currentlevel, 0))
			ini_write_real("Score", currentlevel, global.collect);
	}
	if (room == steamy_1)
	{
		var currentlevel = "steamy"
		if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", currentlevel, "none")))
			ini_write_string("Ranks", currentlevel, global.rank);
			
		if (global.secretsfound > ini_read_real("SecretsFound", currentlevel, 0))
			ini_write_real("SecretsFound", currentlevel, global.secretsfound);
			
		if (global.laps > ini_read_real("Laps", currentlevel, 0))
			ini_write_real("Laps", currentlevel, global.laps);
			
		if (global.collect > ini_read_real("Score", currentlevel, 0))
			ini_write_real("Score", currentlevel, global.collect);
	}
	if (room == molasses_1)
	{
		var currentlevel = "molasses"
		if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", currentlevel, "none")))
			ini_write_string("Ranks", currentlevel, global.rank);
			
		if (global.secretsfound > ini_read_real("SecretsFound", currentlevel, 0))
			ini_write_real("SecretsFound", currentlevel, global.secretsfound);
			
		if (global.laps > ini_read_real("Laps", currentlevel, 0))
			ini_write_real("Laps", currentlevel, global.laps);
			
		if (global.collect > ini_read_real("Score", currentlevel, 0))
			ini_write_real("Score", currentlevel, global.collect);
	}
	if (room == mines_1)
	{
		var currentlevel = "mines"
		if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", currentlevel, "none")))
			ini_write_string("Ranks", currentlevel, global.rank);
			
		if (global.secretsfound > ini_read_real("SecretsFound", currentlevel, 0))
			ini_write_real("SecretsFound", currentlevel, global.secretsfound);
			
		if (global.laps > ini_read_real("Laps", currentlevel, 0))
			ini_write_real("Laps", currentlevel, global.laps);
			
		if (global.collect > ini_read_real("Score", currentlevel, 0))
			ini_write_real("Score", currentlevel, global.collect);
	}
	if (room == noisetv_1)
	{
		var currentlevel = "noisetv"
		if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", currentlevel, "none")))
			ini_write_string("Ranks", currentlevel, global.rank);
			
		if (global.secretsfound > ini_read_real("SecretsFound", currentlevel, 0))
			ini_write_real("SecretsFound", currentlevel, global.secretsfound);
			
		if (global.laps > ini_read_real("Laps", currentlevel, 0))
			ini_write_real("Laps", currentlevel, global.laps);
			
		if (global.collect > ini_read_real("Score", currentlevel, 0))
			ini_write_real("Score", currentlevel, global.collect);
	}
	ini_close();
}