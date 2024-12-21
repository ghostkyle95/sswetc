scr_getinput();

move = key_left2 + key_right2;
	
if move != 0
	chosencharacter += move;
	
if (chosencharacter > array_length(chararray) - 1 || chosencharacter < 0)
	chosencharacter = 0;
	
if (key_jump)
{
	obj_player.character = chararray[chosencharacter].charenum;
	obj_player.doisemode = chararray[chosencharacter].doisemode;
	instance_destroy();
}

if (key_slap2)
	instance_destroy();