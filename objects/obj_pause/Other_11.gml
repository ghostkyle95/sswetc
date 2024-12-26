if (global.levelname == "none") { scr_sound(sfx_enemythrow); return; };

instance_activate_all();
scr_playerreset();
room = asset_get_index($"{global.levelname}_1");
pause = false;
obj_player.targetDoor = "A";
with instance_create(x, y, obj_fadeout) {
	fadealpha = 1;
	fadein = true;
};
if instance_exists(obj_coneball) instance_destroy(obj_coneball);
