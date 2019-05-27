draw_sprite(spr_score_combo,-1,x,y)

draw_set_color(c_white)
draw_set_font(fnt_game)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x,y-50, "Round " + string(handler.game_round) + " of " + string(handler.max_rounds))

if(score_shaking = true){
rx = random_range(-shake_intens, shake_intens);
ry = random_range(-shake_intens, shake_intens);
}
else{
	rx = 0
	ry = 0
}
draw_text(x + rx,y + ry, "Score: " + string(handler.game_score))

draw_text(x,y+50, "Combo: " + string(handler.combo))