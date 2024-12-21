scr_getinput();
move = key_left2 + key_right2;
	
if move != 0
{
	chosencharacter += move;
	scr_sound(sfx_step);
}
	
if (chosencharacter > array_length(chararray) - 1 || chosencharacter < 0)
	chosencharacter = 0;
	
if (key_jump)
{
	obj_player.character = chararray[chosencharacter].charenum;
	obj_player.doisemode = chararray[chosencharacter].doisemode;
	obj_player.state = states.normal;
	obj_player.sprite_index = obj_player.spr_idle;
	obj_player.paletteselect = 1;
	instance_destroy();
}

if (key_slap2)
	instance_destroy();