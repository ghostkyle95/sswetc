scr_getinput();

move = key_left2 + key_right2;
if (move != 0) { selected += move; scr_sound(sfx_step); };
selected = wrap(selected, 0, array_length(characters));

if key_jump2 {
	with obj_player {
		// set character
		character = other.characters[selected].value;
		doisemode = (other.selected == 3 ? true : false);
		
		// unlock movement
		state = states.normal;
		sprite_index = spr_idle;
		paletteselect = 1;
	};
	instance_destroy();
} else if key_slap2 instance_destroy();
