#macro IS_DEBUG (os_get_config() == "Debug")
global.__rousr_dissonance = undefined;

global.PAUSEfadeoff = 0;
global.minesProgress = false;
global.cutsceneManager = -4;
global.combomode = false;
global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.0123456789: ", 1, 0);
global.smallfont = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-", 1, 0);
global.creditsfont = font_add_sprite_ext(spr_creditsfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 1, 0);
global.combofont = font_add_sprite_ext(spr_fontcombo, "1234567890", 1, 0);
global.combofontVERTICAL = font_add_sprite_ext(spr_combometer_font, "1234567890x", 1, 0);
global.combofontOLD = font_add_sprite_ext(spr_fontcomboOLD, "0123456789", 1, 0);
global.collectfont = font_add_sprite_ext(spr_fontcollect, "0123456789", 1, 0);
global.collectfontOLD = font_add_sprite_ext(spr_fontcollectOLD, "0123456789", 1, 0);
global.resultscollectfont = font_add_sprite_ext(spr_resultsfont, "0123456789", 1, 0);
global.resultscombofont = font_add_sprite_ext(spr_combofontresults, "0123456789", 1, 0);
global.tvfont = font_add_sprite_ext(spr_tvfont, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz.:!0123456789?'\"ÁÄÃÀÂÉÈÊËÍÎÏÓÖÕÔÚÙÛÜáäãàâéèêëíîïóöõôúùûüÇç_-[]▼()&#风雨廊桥전태양*яиБжидГзвбнль", true, 2);
global.numberfont = font_add_sprite_ext(spr_numbers, "0123456789.:", 1, 0);
global.lapfont = font_add_sprite_ext(spr_lapfont, "1234567890", 1, 0);
global.shellactivate = false;
global.showcollisions = false;
global.debugmode = false;
global.fartcounter = 0;
global.parallaxbg_surface = -4;
global.ParallaxMap = ds_map_create();
scr_default_parallax(true);
global.FollowerList = ds_list_create();
global.mallowfollow = false;
global.crackfollow = false;
global.chocofollow = false;
global.wormfollow = false;
global.candyfollow = false;
ini_open("optionData.ini");
global.fullscreen = ini_read_real("Settings", "fullscrn", 0);
global.selectedResolution = ini_read_real("Settings", "resolution", 1);
global.smoothcam = ini_read_real("Settings", "smthcam", 1);
global.hitstunEnabled = ini_read_real("Settings", "hitstun", 1);
global.screentilt = ini_read_real("Settings", "scrntilt", 1);
global.musicVolume = ini_read_real("Settings", "musicvol", 1);
global.soundVolume = ini_read_real("Settings", "soundvol", 1);
global.masterVolume = ini_read_real("Settings", "mastervol", 1);
global.selectedCombo = ini_read_real("Settings", "combotype", 2);
global.impactjump = ini_read_real("Settings", "impactjump", 0);
global.buffeduppercut = ini_read_real("Settings", "buffeduppercut", 0);

if global.selectedCombo == 0
	global.combohudtype = combotype.democombo;
else if global.selectedCombo == 1
	global.combohudtype = combotype.verticalcombo;
else if global.selectedCombo == 2
	global.combohudtype = combotype.horizontalcombo;
	
ini_close();
audio_master_gain(global.masterVolume);
global.targetCamX = 0;
global.targetCamY = 0;
switch (global.selectedResolution)
{
	case 0:
		window_set_size(480, 260);
		break;
	case 1:
		window_set_size(960, 540);
		break;
	case 2:
		window_set_size(1280, 720);
		break;
}
window_set_fullscreen(global.fullscreen);
