with (instance_create(x, y, obj_sausageman_dead))
{
	sprite_index = other.sprite_index;
	if other.sprite_index == spr_coneball_dying
		sprite_index = spr_coneballrain;
	image_xscale = other.image_xscale;
}
instance_destroy();