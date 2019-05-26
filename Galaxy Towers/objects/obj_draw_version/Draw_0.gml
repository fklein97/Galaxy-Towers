draw_set_color(c_white)
draw_set_valign(fa_bottom)
draw_set_halign(fa_right)
draw_set_font(fnt_game_small)

draw_text(x, y-40, "Builddate " + date_date_string(GM_build_date));
draw_text(x, y, "v" + GM_version);