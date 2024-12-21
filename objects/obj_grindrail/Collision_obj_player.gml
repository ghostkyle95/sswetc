if ((other.state != states.tumble || (other.sprite_index != other.spr_tumble && other.sprite_index != other.spr_tumblestart && other.sprite_index != other.spr_tumbleend)) && other.state != states.backbreaker && other.state != states.chainsaw && other.state != states.bump && other.y > other.yprevious && (other.y <= (y + 10)) || other.y < y)
{
    if (other.state == states.machcancel)
	{
		if (other.move != 0)
			other.xscale = other.move
		else if (other.savedmove != 0)
			other.xscale = other.savedmove
		else if (other.movespeed != 0)
			other.xscale = sign(other.movespeed)
		other.movespeed = abs(other.hsp)
    }
	other.state = states.grind;
	other.y = y - 49;
}