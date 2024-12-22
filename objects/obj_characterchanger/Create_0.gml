// i have no idea what to name this
var _player = function(_val, _nam, _spr, _pal) constructor {
	value = _val; name = _nam; 
	sprite_index = _spr; palette = _pal;
	return;
};
characters = [
	// sugary spire
	new _player(CHARACTERS.PIZZELLE, "Pizzelle", spr_player_idle, spr_pal),
	new _player(CHARACTERS.PIZZANO, "Pizzano", spr_pizzano_idle, spr_palp),
	new _player(CHARACTERS.GUMBOB, "Gumbob", spr_gumbob_idle, spr_palg),
	
	// pizza tower
	new _player(CHARACTERS.NOISE, "The Noise", spr_playerN_idle, spr_paln),
	new _player(CHARACTERS.NOISE, "The Doise", spr_playerN_idle, spr_pald),
	
	// misc.
	new _player(CHARACTERS.SWAB, "Swab", spr_playerSW_idle, spr_playerSW_palette),
	new _player(CHARACTERS.NIKOCADO, "Nikocado Avocado", spr_playerNIK_idle, spr_pal)
];
selected = 0;

// lock player movement
with obj_player {
	sprite_index = spr_idle;
	image_speed = 0.35;
	hsp = 0;
	movespeed = 0;
	state = states.actor;
	
	var _saved = character;
	if (character >= CHARACTERS.SWAB || doisemode) _saved++;
	other.selected = _saved;
};
