parallax.draw = distance_to_object(obj_player) < 150;
drawtext = distance_to_object(obj_player) < 50;

if drawtext with (obj_tv) {
	switch (other.level) {
		default: message = "PLACEHOLDER"; break;
		
		case "entryway": message = "CRUNCHY CONSTRUCTION"; break;
		case "steamy": message = "COTTONTOWN"; break;
		case "molasses": message = "MOLASSES SWAMP"; break;
		case "mines": message = "SUGARSHACK MINES"; break;
		
		case "noisetv": message = "NOISE TV STUDIOS"; break;
	};
	showtext = true;
	alarm[0] = 2;
};
