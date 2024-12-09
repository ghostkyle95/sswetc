draw_set_halign(fa_left);
draw_set_font(global.font);

draw_option_ext(90, 100, "DEBUG MODE", optionselected == modded_selected.debugmode, 
optionsaved_debug, ["OFF", "ON"]);
draw_option_ext(90, 175, "COMBO HUD TYPE", optionselected == modded_selected.combotype, 
optionsaved_combotype, ["DEMO 1", "VERTICAL", "HORIZONTAL"]);
draw_option_ext(480, 300, "COMBO HUD TYPE", optionselected == modded_selected.impactjump, 
optionsaved_combotype, ["OFF", "ON"]);

draw_set_halign(fa_center);
draw_option(150, 30, "BACK", optionselected == modded_selected.back);
draw_set_font(global.smallfont);
draw_text(480, 512, subtitle);
