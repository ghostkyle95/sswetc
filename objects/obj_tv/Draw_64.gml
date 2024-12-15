draw_set_font(global.tvfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(xi, yi, string_hash_to_newline(message));

if (global.levelname == "none") exit;

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
			draw_sprite_ext(spr_comboverticalgoo, animation_image_index, 0, -(global.combotime - 40), 1, 1, 0, c_white, 1);
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
			draw_sprite_ext(spr_combopointer, -1, 670 - ComboY, -(global.combotime - 50) + 100 + DrawY, 1, 1, 0, c_white, 1);
		}
	}
	else if global.combohudtype == combotype.horizontalcombo
	{
		if (!surface_exists(BarSurface))
			BarSurface = surface_create(sprite_get_width(spr_combofrontNEW), sprite_get_height(spr_combofrontNEW))
		else
		{
			surface_set_target(BarSurface)
			draw_clear_alpha(c_black, 0);
			draw_sprite_ext(spr_combogoopNEW, animation_image_index, (global.combotime - 40) * 2.5, 200, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(spr_combosubtractNEW, 0, 0, 0, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
				
			draw_sprite_ext(spr_combobackNEW, -1, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, 1);
			draw_surface_ext(BarSurface, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, alpha);
			draw_sprite_ext(spr_combofrontNEW, -1, 699 + combo_posX, -60 + DrawY + ComboY, 1, 1, 0, c_white, 1);
				
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
				draw_text_color((800 + _xx + combo_posX), (155 + DrawY + ComboY + _yy), string_char_at(string(global.combo), (i + 1)), c_white, c_white, c_white, c_white, alpha)
			}
		}
	}
}
		
if (tvsprite != spr_tvoff && tvsprite != spr_tvturnon && global.combohudtype != combotype.horizontalcombo)
	draw_sprite_ext(spr_tvpropeller, -1, 832, 74 + DrawY, 1, 1, 0, c_white, 1);
pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0);
draw_sprite_ext(tvbgsprite, 0, 832, 74 + DrawY, 1, 1, 0, c_white, 1);
draw_sprite_ext((!staticdraw) ? tvsprite : savedsprite, image_index, 832, 74 + DrawY, 1, 1, 0, c_white, 1);
if (staticdraw)
{
	draw_sprite_ext(spr_tvtransition, transitionimageindex, 832, 74 + DrawY, 1, 1, 0, c_white, 1);
	transitionimageindex += 0.35
	if transitionimageindex >= 9
	{
		staticdraw = false;
		transitionimageindex = 0;
	}
}
if global.panic
{
	draw_sprite_ext(spr_tv_panicline, paniclineimageindex, 832, 74 + DrawY, 1, 1, 0, c_white, 1);
	paniclineimageindex += 0.35
}
pal_swap_reset();

if global.combohudtype != combotype.verticalcombo
	draw_sprite_ext(invsprite, image_index, 700, 57 + DrawY, 1, 1, 0, c_white, 1);
if global.combohudtype == combotype.democombo
	draw_sprite_ext(spr_tvcomboshadow, image_index, 832, 74 + DrawY, 1, 1, 0, c_white, combofade);
if (global.combotime > 0 && global.combo > 0)
{
	if global.combohudtype == combotype.democombo
	{
		draw_sprite_ext(spr_tvcombo, image_index, 832, 74, 1, 1, 0, c_white, alpha);
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
			draw_text_color(838 + _xx, 50 + _yy, string_char_at(_combo, i + 1), c_white, c_white, c_white, c_white, alpha);
		}
		if(!surface_exists(BarSurfaceD1))
			BarSurfaceD1 = surface_create(112, 32);
		else
		{
			surface_set_target(BarSurfaceD1);
			draw_clear_alpha(c_white, 0);
			draw_sprite_tiled(spr_barpop2, 0, BarX, 0);
			draw_set_color(0x280048);
			draw_rectangle(112 * (global.combotime / 60), -50, 112, 50, false);
			draw_set_color(c_white);
			draw_sprite_ext(spr_barpop3, 0, 112 * (global.combotime / 60), -64, 1, 5, 0, c_white, 1);
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(spr_barpop, 1, 0, 0, 1, 1, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			BarX += (-0.5 + (0.45 * (global.combofreeze / 30)));
			draw_surface_ext(BarSurfaceD1, 763, 107, 1, 1, 0, c_white, alpha);
			draw_sprite_ext(spr_barpop, 0, 763, 107, 1, 1, 0, c_white, alpha);
		}
	}
	animation_image_index += 0.35;
}
else if (chooseOnecomboend)
	animation_image_index = 0;
