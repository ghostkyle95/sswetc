image_speed = 0.35;
depth = 100;
if global.panic
{
	sprite_index = choose(spr_candle_lit, spr_candle_off);
	ds_list_add(global.saveroom, id, sprite_index);
}