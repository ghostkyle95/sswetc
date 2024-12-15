image_index = 1;
image_speed = 0;
depth = 49;
level = "placeholder";
drawtext = false;

parallax = { draw : false, alpha : 1, surface : noone, array : [] };
function gate_parallax(_sprite, _speed) constructor { 
	sprite_index = _sprite; speed = _speed; x = 0; return;
};
titlecard_sprite = spr_crunchytitlecard;
titlecard_index = 0;
title_sprite = spr_crunchytitle;
title_index = 0;
title_music = mu_crunchytitlecard;