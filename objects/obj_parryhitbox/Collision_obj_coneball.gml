/*with (obj_baddie)
{
	if (distance_to_object(other.id) < 64 && (object_index != obj_charcherry || (object_index == obj_charcherry && state == baddiestates.charcherry)))
		instance_destroy();
}
with (obj_coneball)
	instance_destroy();
with (obj_player)
{
	state = states.parry;
	sprite_index = choose(spr_parry1, spr_parry2, spr_parry3);
	image_index = 0;
	movespeed = -8;
	flash = true;
	if (!audio_is_playing(sfx_parry))
		scr_sound(sfx_parry);
}
global.minutes = 0;
global.seconds = 10;*/