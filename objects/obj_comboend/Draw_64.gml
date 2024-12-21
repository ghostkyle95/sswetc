var xx = x
var yy = y + obj_tv.DrawY
draw_set_color(c_white)
draw_sprite(spr_comboend, 0, xx, yy)
var title = floor(savedcombo / 5)
if (title > sprite_get_number(spr_combotitles))
{
    title -= sprite_get_number(spr_combotitles)
    very = true
}
if (savedcombo >= 120)
    very = true
draw_sprite(spr_combotitles, title, xx, (yy + 30))
draw_set_font(global.smallfont)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(xx, (yy + 70), comboscore)
if very
    draw_sprite(spr_comboquite, 0, (xx - 65), (yy - 6 + 30))
