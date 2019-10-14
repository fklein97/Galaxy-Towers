draw_self()

draw_set_color(c_white)
draw_set_font(fnt_game)
draw_set_valign(fa_middle)
draw_set_halign(fa_right)
if(shaking = true){
rx = random_range(-shake_intens, shake_intens);
ry = random_range(-shake_intens, shake_intens);
}
else{
	rx = 0
	ry = 0
}
draw_text(x - 37 + rx,y+5 + ry,string(global.boxes) + " x")