draw_self()

if(show_tooltip = true){
	draw_set_color(c_ltgray)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fnt_game_small)
	draw_text(mouse_x+15,mouse_y+60, tooltip_text)
}