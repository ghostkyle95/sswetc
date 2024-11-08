if ((other.y > other.yprevious || (other.xscale == sign(image_xscale) && other.y < bbox_bottom)) && other.state != states.backbreaker && other.state != states.bump)
{
	other.state = states.grind;
	other.y = y - 49;
}