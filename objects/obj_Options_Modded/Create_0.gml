enum modded_selected
{
	back,
	debugmode,
	combotype,
	impactJump,
	buffedUppercut
};
optionselected = modded_selected.back;
optionsaved_debug = global.debugmode;
ini_open("optionData.ini");
global.selectedCombo = ini_read_real("Settings", "combotype", 2);
global.impactJump = ini_read_real("Settings", "impactJump", 0);
global.buffedUppercut = ini_read_real("Settings", "buffedUppercut", 0);
ini_close();
optionsaved_combotype = global.selectedCombo;
optionsaved_impactJump = global.impactJump;
optionsaved_buffedUppercut = global.buffedUppercut;
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
