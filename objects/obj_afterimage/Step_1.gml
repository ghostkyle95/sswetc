if alreadystartedsprite
	return;
	
alreadystartedsprite = true;
sprite_index = targetobj.sprite_index;
image_index = targetobj.image_index;
image_speed = 0;

if doxscale
	image_xscale = targetobj.image_xscale;
if doyscale
	image_xscale = targetobj.image_yscale;
	
image_blend = make_colour_rgb(color[0], color[1], color[2]);
image_alpha = 1;






