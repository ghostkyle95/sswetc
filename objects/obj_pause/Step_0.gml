scr_getinput();
var _fade = obj_pausefadeout;
if (instance_exists(_fade) && instance_exists(obj_fadeout)) instance_destroy(_fade);

if (!pause && !instance_exists(obj_fadeout) && !global.shellactivate && key_start2 && 
room != rank_room && room != realtitlescreen && canmove && !instance_exists(obj_titlecard)) {
	// draw fadeout
	if !instance_exists(_fade) instance_create(x, y, _fade);
	selected = 0;
	palette = obj_player.paletteselect;
		
	// screenshot gameplay
	if sprite_exists(screenshot) sprite_delete(screenshot);
	screenshot = sprite_create_from_surface(application_surface, 0, 0, 
	surface_get_width(application_surface), surface_get_height(application_surface), 
	false, false, 0, 0);
};

if (pause && canmove) {
	move = key_down2 - key_up2;
	if (move != 0) { selected += move; scr_sound(sfx_land); };
	selected = clamp(selected, 0, 3);
	if key_jump {
		if (selected == 0 && !instance_exists(_fade)) instance_create(x, y, _fade);
		else event_user(selected);
	};
}
