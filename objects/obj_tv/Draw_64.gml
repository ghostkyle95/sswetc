draw_set_font(global.tvfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(xi, yi, string_hash_to_newline(message));

if (global.levelname == "none") exit;
var comboclampedtime = clamp(global.combotime, 0, 60)

struct_foreach(animation, function(_name, _value) { 
	with (_value) {
		if valid image_index += image_speed;
		else image_index = 0;
	}
});




#region COMBO STUFF
if global.combotime > 0 && global.combo > 0 
{
	showcombo = true;
	combo_posX = wave(-5, 5, 2, 20)
	ComboY = approach(ComboY, 10, 1)
}
else
{
	ComboY = approach(ComboY, (global.combohudtype == combotype.verticalcombo) ? -100 : -60, 2)
	if ComboY > ((global.combohudtype == combotype.verticalcombo) ? -100 : -60)
	showcombo = false;
}
		
if !(global.combotime < 0 && global.combo < 0) && showcombo && ComboY > ((global.combohudtype == combotype.verticalcombo) ? -100 : -60)
{
	if global.combohudtype == combotype.verticalcombo
	{
		if (!surface_exists(BarSurfaceV))
			BarSurfaceV = surface_create(sprite_get_width(spr_comboverticalmeter), sprite_get_height(spr_comboverticalmeter))
		else
		{
			surface_set_target(BarSurfaceV)
			draw_clear_alpha(c_black, 0);
			draw_sprite_ext(spr_comboverticalgoo, animation.drain.image_index, 0, -(comboclampedtime - 45), 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(spr_comboverticalsubtract, 0, 0, 0, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
				
			draw_sprite_ext(spr_comboverticalmeterback, -1, 610 - ComboY, 0 + DrawY, 1, 1, 0, c_white, 1);
			draw_surface_ext(BarSurfaceV, 610 - ComboY, 0 + DrawY, 1, 1, 0, c_white, alpha);
			draw_sprite_ext(spr_comboverticalmeter, -1, 610 - ComboY, 0 + DrawY, 1, 1, 0, c_white, 1)
			draw_set_font(global.combofontVERTICAL);
			draw_set_halign(fa_center);
			draw_set_color(c_white);
			draw_text(682 - ComboY, 20 + DrawY, string(global.combo)+"x")
			draw_sprite_ext(spr_combopointer, -1, 670 - ComboY, -(comboclampedtime - 65) + 100 + DrawY, 1, 1, 0, c_white, 1);
		}
	}
	else if global.combohudtype == combotype.horizontalcombo
	{
		if (!surface_exists(BarSurface))
			BarSurface = surface_create(sprite_get_width(spr_combofront), sprite_get_height(spr_combofront))
		else
		{
			surface_set_target(BarSurface)
			draw_clear_alpha(c_black, 0);
			draw_sprite_ext(!global.combodropped ? spr_combogoopNEWP : spr_combogoopNEW, animation.drain.image_index, (comboclampedtime - 40) * 2.5, 200, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(spr_combomask, 0, 0, 0, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
				
			draw_sprite_ext(spr_comboback, -1, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, 1);
			draw_surface_ext(BarSurface, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, alpha);
			draw_sprite_ext(spr_combofront, animation.meter.image_index, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, 1);
			draw_sprite_ext(spr_combotext, -1, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, 1);
				
			draw_set_font(global.combofont);
			draw_set_halign(fa_right);
			draw_set_color(c_white);
			for (var i = 0; i < string_length(string(global.combo)); i++)
			{
				var _xx = (-((string_width(string(global.combo)) / 2))) + string_width(string(global.combo)) / string_length(string(global.combo)) * i
				var _yy = i * 4
				if ComboShake
				{
					_xx += irandom_range(-2, 2)
					_yy += irandom_range(-2, 2)
				}
				draw_text_color((810 + _xx + combo_posX), (160 + DrawY + ComboY + _yy), string_char_at(string(global.combo), (i + 1)), c_white, c_white, c_white, c_white, alpha)
			}
		}
	}
}
#endregion





#region tv stuff

var _tvx = 693, _tvy = -60 + DrawY, _float = 0;

if (string_count("turnon", sprite_get_name(sprite_index)) == 0 && 
string_count("off", sprite_get_name(sprite_index)) == 0) {
	if global.combohudtype != combotype.horizontalcombo
	{
		_float = wave(2, -2, 3, 0);
		draw_sprite(spr_tvpropeller, animation.propeller.image_index, _tvx, _tvy + _float);
	}
};

draw_sprite(tvbgsprite, 0, _tvx, _tvy + _float);

if (!surface_exists(TVSurface))
	TVSurface = surface_create(sprite_get_width(spr_tv_mask), sprite_get_height(spr_tv_mask))
else
{
	surface_set_target(TVSurface)
	draw_clear_alpha(c_black, 0);
	
	pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0);
	draw_sprite_ext((!staticdraw) ? tvsprite : savedsprite, image_index, 0, 0, 1, 1, 0, c_white, 1);
	pal_swap_reset()
	gpu_set_blendmode(bm_subtract);
	
	draw_sprite_ext((string_count("turnon", sprite_get_name(tvsprite)) == 0) ? spr_tvturnon_mask : spr_tv_mask, 0, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	draw_surface(TVSurface, _tvx, _tvy + _float)
}
if global.panic draw_sprite(spr_tv_panicline, animation.panic.image_index, _tvx, _tvy + _float);
if staticdraw {
	draw_sprite(spr_tvtransition, animation.change.image_index, _tvx, _tvy + _float);
	if animation_end(animation.change.image_index, sprite_get_number(spr_tvtransition)) staticdraw = false;
};

var _doise = (obj_player.doisemode || obj_player.character >= CHARACTERS.SWAB);

pal_swap_set(spr_paltv, obj_player.character + real(_doise), 0)
draw_sprite(((string_count("turnon", sprite_get_name(sprite_index)) == 0) ? spr_tvframe : spr_tvturnon_frame), image_index, _tvx, _tvy + _float);
pal_swap_reset();

// little section for sprites that go outside the tv frame

if tvsprite == spr_pizzanotv_angry && !staticdraw
{
	pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0);
	draw_sprite_ext(spr_pizzanotv_angry, image_index, _tvx, _tvy + _float, 1, 1, 0, c_white, 1);
	pal_swap_reset()
}

#endregion





#region COMBO STUFF 2: ELECTRIC BOOGALOO

if (global.combohudtype != combotype.verticalcombo) draw_sprite(invsprite, 0, 700, 57 + DrawY);

if global.combohudtype == combotype.democombo
	draw_sprite_ext(spr_tvcomboshadow, image_index, _tvx, _tvy + _float, 1, 1, 0, c_white, combofade);
if (global.combotime > 0 && global.combo > 0)
{
	if global.combohudtype == combotype.democombo
	{
		draw_sprite_ext(spr_tvcombo, image_index, _tvx, 74 + _float, 1, 1, 0, c_white, alpha);
		draw_set_font(global.combofontOLD);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		var _combo = string(global.combo);
		if (global.combo < 10)
			_combo = "0" + string(global.combo);
		var _string_length = string_length(_combo);
		for (var i = 0; i < _string_length; i++)
		{
			var _xx = -(string_width(_combo) / 2) + ((string_width(_combo) / _string_length) * i);
			var _yy = i * -4;
			if (ComboShake)
			{
				_xx += irandom_range(-2, 2);
				_yy += irandom_range(-2, 2);
			}
			draw_text_color(838 + _xx, 50 + _yy + _float, string_char_at(_combo, i + 1), c_white, c_white, c_white, c_white, alpha);
		}
		if(!surface_exists(BarSurfaceD1))
			BarSurfaceD1 = surface_create(112, 32);
		else
		{
			surface_set_target(BarSurfaceD1);
			draw_clear_alpha(c_white, 0);
			draw_sprite_tiled(spr_barpop2, 0, BarX, 0);
			draw_set_color(0x280048);
			draw_rectangle(112 * (comboclampedtime / 60), -50, 112, 50, false);
			draw_set_color(c_white);
			draw_sprite_ext(spr_barpop3, 0, 112 * (comboclampedtime / 60), -64, 1, 5, 0, c_white, 1);
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(spr_barpop, 1, 0, 0, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			BarX += (-0.5 + (0.45 * (global.combofreeze / 30)));
			draw_surface_ext(BarSurfaceD1, 763, 107 + _float, 1, 1, 0, c_white, alpha);
			draw_sprite_ext(spr_barpop, 0, 763, 107 + _float, 1, 1, 0, c_white, alpha);
		}
	}
}

#endregion