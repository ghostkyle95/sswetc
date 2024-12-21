if ((other.y > other.yprevious || (other.xscale == sign(image_xscale) && other.y < bbox_bottom)) && other.state != states.backbreaker && other.state != states.bump)
{
    with (other)
    {
       // while place_meeting(x, y, obj_grindrailslope)
            //y--
    }
    if (other.movespeed < 10)
	{
		other.movespeed = 10
        other.state = states.grind
		other.sprite_index = other.spr_grind
	}
}
