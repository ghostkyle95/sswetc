targetRoom = mines_1
targetDoor = "A"
level = "mines"

sprite_index = spr_mines_gate;
parallax.array = [
	new gate_parallax(spr_mines_gate_bg1, 0.15),
	new gate_parallax(spr_mines_gate_bg2, 0.3),
	new gate_parallax(spr_mines_gate_bg3, 0.45)
];
titlecard_sprite = spr_sugarshacktitlecard;
titlecard_index = 0;
title_sprite = spr_sugarshacktitle;
title_index = 0;
title_music = mu_sugarshacktitle;