// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rainbow(){
	static huespot = 0;
	static thecolor = 0;
	huespot++;
	thecolor = make_color_hsv(huespot, 255, 255);
	if (huespot > 255)
		huespot -= 255;
	image_blend = thecolor;
}