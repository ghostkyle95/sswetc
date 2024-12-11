function scr_tvsprites()
{
	if (obj_player.character == CHARACTERS.PIZZELLE)
	{
		idletvspr = spr_pizzytv;
		tvchange1 = spr_pizzytv2;
		tvchange2 = spr_pizzytv3;
		cottontvspr = spr_pizzytvcotton;
		hurttvspr = spr_pizzytvhurt;
		minecarttvspr = spr_pizzytvmine;
		bombtvspr = spr_pizzytvbomb;
		firetvspr = spr_pizzytvfire;
		angrytvspr = spr_pizzytvangry;
		orbtvspr = spr_pizzytv_croaked;
		machtvspr = spr_pizzytvmach2;
		mach3tvspr = spr_pizzytvmach3;
		crazyruntvspr = spr_pizzytvmach3;
		collecttvspr = spr_pizzytvhappy;
		combotvspr = spr_pizzytv_combo;
		panictvspr = spr_pizzytv_escape1;
		secrettvspr = spr_pizzytv_secret;
		sliptvspr = spr_pizzytv_slipnslide;
		marshtvspr = spr_pizzytv_marshmellow;
		chocotvspr = spr_pizzytv_chocolate;
		smoretvspr = spr_pizzytv_smore;
		gummywormtvspr = spr_pizzytv_gummyworm;
		candytvspr = spr_pizzytv_candy;
	}
	if (obj_player.character == CHARACTERS.PIZZANO)
	{
		idletvspr = spr_pizzanotv;
		tvchange1 = spr_pizzanotv2;
		tvchange2 = spr_pizzanotv2;
		collecttvspr = spr_pizzanotvcollect;
		combotvspr = spr_pizzanotvcombo;
		machtvspr = spr_pizzanotv_mach;
		mach3tvspr = spr_pizzanotv_mach3;
		minecarttvspr = spr_pizzanotv_mine;
	}
	if (obj_player.character == CHARACTERS.NOISE && obj_player.doisemode == false)
	{
		idletvspr = spr_noisetv;
		tvchange1 = spr_noisetv2;
		tvchange2 = spr_noisetv3;
		mach3tvspr = spr_noisetv_mach3;
		crazyruntvspr = spr_noisetv_mach4;
		collecttvspr = spr_noisetv_collect;
		combotvspr = spr_noisetv_combo;
		angrytvspr = spr_noisetv_combo;
		panictvspr = spr_noisetv_panic;
		hurttvspr = spr_noisetv_hurt;
		firetvspr = spr_noisetv_fire
		bombtvspr = spr_noisetv_bomb;
	}
}
