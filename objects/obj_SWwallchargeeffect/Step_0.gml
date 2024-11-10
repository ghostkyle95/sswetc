image_xscale = obj_player.xscale;
x = obj_player.x;
y = obj_player.y;
depth = obj_player.depth - 6;

if (obj_player.state != states.climbwall)
	instance_destroy();
if (obj_player.character != CHARACTERS.SWAB)
	instance_destroy();
