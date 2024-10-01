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
		machtvspr = spr_pizzytvmach;
		orbtvspr = spr_pizzytv_croaked;
		maxspeedtvspr = spr_pizzytvmachmax;
		collecttvspr = spr_pizzytvhappy;
		combotvspr = spr_pizzytv_combo;
		panictvspr = spr_pizzytv_escape1;
	}
	if (obj_player.character == CHARACTERS.PIZZANO)
	{
		idletvspr = spr_pizzanotv;
		tvchange1 = spr_pizzanotv2;
		tvchange2 = spr_pizzanotv2;
	}
}
