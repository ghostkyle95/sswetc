if down
{
    var ty = 120;
    y = approach(y, ty, movespeed);
    if (y >= ty && alarm[0] == -1)
        alarm[0] = 80;
}
else
{
    ty = (-sprite_height);
    y = approach(y, ty, movespeed);
    if (y <= ty)
        instance_destroy();
}
x = camera_get_view_width(view_camera[0]) / 2;

if global.laps == 2
	palette = 2;
else if global.laps == 3
	palette = 3;
else if global.laps >= 4
	palette = 4;
else
	palette = 5;
