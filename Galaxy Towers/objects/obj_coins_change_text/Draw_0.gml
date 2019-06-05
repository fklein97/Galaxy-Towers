draw_set_color(rgb_to_bgr($FFF568))
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_score_change)


draw_text(x,y,"+" + string(change_value))
draw_sprite(spr_coin,-1,x+string_width("+" + string(change_value)),y)
