if active
{
    with (obj_player)
    {
		if other.playedsound == false
		{
			scr_sound(sfx_lapexit);
			scr_sound(sfx_secretexit);
		}
		other.playedsound = true;
        state = states.actor
        hsp = 0
        vsp = 0
        visible = false
    }
}
if (floor(image_index) == (image_number - 1))
{
    switch sprite_index
    {
        case spr_pizzaportal_appear:
            sprite_index = spr_pizzaportalentrancestart
            break
        case spr_pizzaportalentrancestart:
            sprite_index = spr_pizzaportal_disappear
            with (obj_player)
            {
                state = states.normal
                visible = true
            }
            active = false
            break
        case spr_pizzaportal_disappear:
			instance_create_unique(0, 0, obj_lap2visual)
            instance_destroy()
            break
    }

}
