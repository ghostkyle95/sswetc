can_collide = function(_obj = obj_player)
{
	if (_obj == obj_player)
	{
		var wow = (_obj.state == states.cotton && _obj.sprite_index != _obj.spr_cotdrill) || _obj.state == states.cottonroll;
		return wow;
	}
	else
		return true;
};
