var _x = savedx - savedcx;
var _y = savedy - savedcy;
while _x > camera_get_view_width(view_camera[0]) - 100
	_x -= 20;
while _y > camera_get_view_height(view_camera[0]) - 100
	_y -= 20;
while _x < 100
	_x += 20;
while _y < 100
	_y += 20;
with (instance_create(_x, _y, obj_shakeanddie))
	sprite_index = spr_coneball_dying;
scr_sound(sound_explosion);