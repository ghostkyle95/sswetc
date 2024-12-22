scr_getinput();

move = key_left2 + key_right2;
if (move != 0) { selected += move; scr_sound(sfx_step); };
selected = wrap(selected, 0, array_length(characters) - 1);

var _cancel = function() {
	with obj_player {
		// unlock movement
		state = states.normal;
		sprite_index = spr_idle;
		paletteselect = 1;
	};
	instance_destroy();
}, _return = characters[selected];

if key_jump2 {
	with obj_player { 
		// set character
		character = _return.value;
		doisemode = (string_count("Doise", _return.name) > 0);
	};
	_cancel();
} else if key_slap2 _cancel();
