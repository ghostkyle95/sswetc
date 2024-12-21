if ((other.y > other.yprevious || (other.xscale == sign(image_xscale) && other.y < bbox_bottom)) && other.state != states.backbreaker && other.state != states.bump)
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
    other.state = states.grind
}
