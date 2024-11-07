if (global.panic)
{
	with (obj_player)
	{
		if (grounded && key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3))
		{
			targetDoor = "none";
			if (global.collect >= global.srank)
			{
				if (global.secretsfound == 3 && global.combodropped == false && global.combo != 0 && global.lap == true)
					global.rank = "p";
				else
					global.rank = "s";
			}
			else if (global.collect > global.arank)
				global.rank = "a";
			else if (global.collect > global.brank)
				global.rank = "b";
			else if (global.collect > global.crank)
				global.rank = "c";
			else
				global.rank = "d";
				
			if (global.rank == "p")
				scr_sound(mu_ranks);
			if (global.rank == "s")
				scr_sound(mu_ranks);
			if (global.rank == "a")
				scr_sound(mu_ranka);
			if (global.rank == "b")
				scr_sound(mu_rankb);
			if (global.rank == "c")
				scr_sound(mu_rankc);
			if (global.rank == "d")
				scr_sound(mu_rankd);
			audio_stop_sound(mu_escape);
			audio_stop_sound(mu_lap2);
			audio_stop_sound(mu_pizzanoescape);
			audio_stop_sound(mu_noiseescape);
			audio_stop_sound(mu_noiselap2);
			ini_open("saveData.ini");
			if (room == mines_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "mines", "none")))
					ini_write_string("Ranks", "mines", global.rank);
				if (global.secretsfound > rank_checker(ini_read_string("SecretsFound", "mines", "none")))
					ini_write_string("SecretsFound", "mines", global.secretsfound);
			}
			if (room == molasses_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "molasses", "none")))
					ini_write_string("Ranks", "molasses", global.rank);
				if (global.secretsfound > rank_checker(ini_read_string("SecretsFound", "molasses", "none")))
					ini_write_string("SecretsFound", "molasses", global.secretsfound);
			}
			if (room == steamy_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "steamy", "none")))
					ini_write_string("Ranks", "steamy", global.rank);
				if (global.secretsfound > rank_checker(ini_read_string("SecretsFound", "steamy", "none")))
					ini_write_string("SecretsFound", "steamy", global.secretsfound);
			}
			if (room == entryway_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "entryway", "none")))
					ini_write_string("Ranks", "entryway", global.rank);
				if (global.secretsfound > rank_checker(ini_read_string("SecretsFound", "entryway", "none")))
					ini_write_string("SecretsFound", "entryway", global.secretsfound);
			}
			if (room == noisetv_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "noisetv", "none")))
					ini_write_string("Ranks", "noisetv", global.rank);
				if (global.secretsfound > rank_checker(ini_read_string("SecretsFound", "noisetv", "none")))
					ini_write_string("SecretsFound", "noisetv", global.secretsfound);
			}
			ini_close();
			obj_tv.tvsprite = spr_tvoff;
			if (!instance_exists(obj_endlevelfade))
			{
				instance_create(x, y, obj_endlevelfade);
				if (state != states.door)
				{
					sprite_index = spr_lookdoor;
					state = states.door;
					obj_endlevelfade.alarm[0] = 235;
					image_index = 0;
				}
			}
			global.panic = false;
		}
	}
}
