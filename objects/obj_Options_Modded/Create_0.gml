enum modded_selected
{
	back,
	debugmode,
	combotype,
	impactjump,
	buffeduppercut
};
optionselected = modded_selected.back;
optionsaved_debug = global.debugmode;
ini_open("optionData.ini");
global.selectedCombo = ini_read_real("Settings", "combotype", 2);
global.impactjump = ini_read_real("Settings", "impactjump", 0);
global.buffeduppercut = ini_read_real("Settings", "buffeduppercut", 0);
ini_close();
optionsaved_combotype = global.selectedCombo;
optionsaved_impactjump = global.impactjump;
optionsaved_buffeduppercut = global.buffeduppercut;
if global.selectedCombo == 0
	global.combohudtype = combotype.democombo;
else if global.selectedCombo == 1
	global.combohudtype = combotype.verticalcombo;
else if global.selectedCombo == 2
	global.combohudtype = combotype.horizontalcombo;
subtitle = "GO BACK TO MAIN SCREEN";
CursorY = -999;
depth = -100;
selecting = -1;
obj_Options_Main.CursorY = -999;
canmove = false;
alarm[0] = 1;
