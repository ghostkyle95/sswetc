// noise stickers

if obj_player.character != CHARACTERS.NOISE return;

var add_spot = function(argument0, argument1, argument2) //gml_Script_anon_gml_Object_obj_titlecard_Alarm_1_74_gml_Object_obj_titlecard_Alarm_1
{
    var q = 
    {
        x: argument0,
        y: argument1,
        scale: argument2
    }

    array_push(noisespots, q)
    return q;
}

noisespot_buffermax = 10

switch (titlecard_sprite)
{
	case (spr_crunchytitlecard):
		add_spot(285, 360, 1.2);
		add_spot(665, 340, 1.5);
		add_spot(765, 200, 0.7);
	break;
	case (spr_cottontitlecard):
		add_spot(280, 330, 1.5);
		add_spot(450, 430, 1.2);
	break;
	case (spr_molassestitlecard):
		add_spot(310, 425, 1.5);
		add_spot(300, 100, 2);
	break;
	case (spr_sugarshacktitlecard):
		add_spot(540, 335, 1.5);
		add_spot(485, 80, 1.7);
	break;
}

for (i = 0; i < array_length(noisespots); i++)
{
    var spot = noisespots[i]
    var head = 
    {
        x: spot.x,
        y: spot.y,
        scale: spot.scale,
        visual_scale: 1,
        visible: false,
        image_index: irandom(sprite_get_number(spr_titlecard_noise) - 1)
    }

    array_push(noisehead, head)
}
noisehead_pos = 0
alarm[2] = 40