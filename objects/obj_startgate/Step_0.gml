parallax.draw = distance_to_object(obj_player) < 150;
drawtext = distance_to_object(obj_player) < 50;

if drawtext with (obj_tv) {
	switch (other.level) {
		default: message = "PLACEHOLDER"; break;
		
		case "entryway": message = "Crunchy Construction"; break;
		case "steamy": message = "Cottontown"; break;
		case "molasses": message = "Molasses Swamp"; break;
		case "mines": message = "Sugarshack Mines"; break;
		
		case "noisetv": message = "Noise TV Studios"; break;
	};
	showtext = true;
	alarm[0] = 2;
};
