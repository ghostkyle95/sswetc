obj_player.state = states.cotton;
instance_destroy();
instance_create(obj_player.x, obj_player.y, obj_poofeffectcotton);
obj_player.sprite_index = obj_player.spr_cotidle;
global.combofreeze = 30;
