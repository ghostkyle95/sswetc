if (tvsprite == spr_tvturnon || tvsprite == spr_tvoff)
{
	var nopropsprite = asset_get_index(sprite_get_name(tvsprite)+"_nopropeller")
	tvsprite = nopropsprite;
}