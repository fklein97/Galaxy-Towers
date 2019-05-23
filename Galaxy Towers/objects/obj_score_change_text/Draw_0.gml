if(change_value >= 0){
	draw_set_color(c_green)	
}
else{
	draw_set_color(c_red)	
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_score_change)

if(change_value >= 0){
	draw_text(x,y,"+" + string(change_value))
}
else{
	draw_text(x,y,string(change_value))	
}