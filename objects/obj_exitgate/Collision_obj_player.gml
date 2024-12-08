if (global.panic)
{
	with (obj_player)
	{
		if (grounded && key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3))
		{
			targetDoor = "none";
			var currentcombo = floor(((global.combo^2) * 0.25) + (10 * global.combo))
			if (global.collect + currentcombo >= global.srank)
			{
				if (global.secretsfound == 3 && global.combodropped == false && global.combo != 0 && global.lap == true)
					global.rank = "p";
				else
					global.rank = "s";
			}
			else if (global.collect + currentcombo > global.arank)
				global.rank = "a";
			else if (global.collect + currentcombo > global.brank)
				global.rank = "b";
			else if (global.collect + currentcombo > global.crank)
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
			audio_stop_sound(mu_lap3);
			audio_stop_sound(mu_pizzanoescape);
			audio_stop_sound(mu_pizzanolap2);
			audio_stop_sound(mu_noiseescape);
			audio_stop_sound(mu_noiselap2);
			audio_stop_sound(mu_noiselap3);
			scr_writetosave()
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
