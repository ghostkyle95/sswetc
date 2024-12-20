pizzelle = 
{
	charenum: CHARACTERS.PIZZELLE,
	idlesprite: spr_player_idle,
	selectedsprite: spr_player_idle4,
	doisemode: false,
	palettesprite: spr_pal,
	palettenum: 1,
	
	name: "Pizzelle",
	desc: ""
};
pizzano = 
{
	charenum: CHARACTERS.PIZZANO,
	idlesprite: spr_pizzano_idle,
	selectedsprite: spr_pizzano_treasuregot,
	doisemode: false,
	palettesprite: spr_palp,
	palettenum: 1,
	
	name: "Pizzano",
	desc: ""
};
noise = 
{
	charenum: CHARACTERS.NOISE,
	idlesprite: spr_playerN_idle,
	selectedsprite: spr_playerN_idlesmoke,
	doisemode: false,
	palettesprite: spr_paln,
	palettenum: 1,
	
	name: "The Noise",
	desc: ""
};
doise = 
{
	charenum: CHARACTERS.NOISE,
	idlesprite: spr_playerN_dive,
	selectedsprite: spr_playerN_doublejump,
	doisemode: true,
	palettesprite: spr_pald,
	palettenum: 1,
	
	name: "The Doise",
	desc: ""
};
swab = 
{
	charenum: CHARACTERS.SWAB,
	idlesprite: spr_playerSW_idle,
	selectedsprite: spr_playerSW_idlefrown,
	doisemode: false,
	palettesprite: spr_playerSW_palette,
	palettenum: 1,
	
	name: "Swab",
	desc: ""
};
nikocado = 
{
	charenum: CHARACTERS.NIKOCADO,
	idlesprite: spr_playerNIK_idle,
	selectedsprite: spr_playerNIK_breakdancing,
	doisemode: false,
	palettesprite: spr_pal,
	palettenum: 1,
	
	name: "Nikocado",
	desc: ""
};

chararray = [pizzelle, pizzano, noise, doise, swab, nikocado];
chosencharacter = 0;
move = 0;
image_speed = 0.35;
obj_player.state = states.actor;
scr_getinput();