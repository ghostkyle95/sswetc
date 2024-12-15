targetRoom = entryway_1
targetDoor = "A"
level = "entryway"

sprite_index = spr_entryway_gate;
parallax.array = [
	new gate_parallax(spr_entryway_gate_bg1, 0.15),
	new gate_parallax(spr_entryway_gate_bg2, 0.3),
	new gate_parallax(spr_entryway_gate_bg3, 0.45)
];
titlecard_sprite = spr_crunchytitlecard;
titlecard_index = 0;
title_sprite = spr_crunchytitle;
title_index = 0;
title_music = mu_crunchytitlecard;