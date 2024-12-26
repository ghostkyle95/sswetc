instance_activate_all();
scr_playerreset();
pause = false;
obj_player.targetDoor = "A";
with (obj_tv) {
	tvsprite = (global.combohudtype == combotype.horizontalcombo) ? spr_tvoff_nopropeller : spr_tvoff;
	showcombo = false;
	message = "";
};
with instance_create(x, y, obj_fadeout) {
	fadealpha = 1;
	fadein = true;
};
if instance_exists(obj_coneball) instance_destroy(obj_coneball);

if (global.levelname == "none") {
	room = realtitlescreen;
	with (obj_player)
	{
		scr_characterspr();
		state = states.titlescreen;
	}
} else room = hub_room1;
