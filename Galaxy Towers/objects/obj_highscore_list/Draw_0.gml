draw_self()
draw_set_color(c_white)
draw_set_font(fnt_game)
draw_set_valign(fa_middle)

draw_set_halign(fa_center)
draw_text(x,y-80,"Highscores")

draw_set_halign(fa_left)
for(i = 1; i <= 10; i++;){
	draw_set_halign(fa_left)
	draw_text(x-600,y-70+(70*i), string(i) +".")	
	draw_set_halign(fa_left)
	draw_text(x-300,y-70+(70*i), highscore_name(i))
	draw_set_halign(fa_right)
	draw_text(x+600,y-70+(70*i), string(highscore_value(i)))
}