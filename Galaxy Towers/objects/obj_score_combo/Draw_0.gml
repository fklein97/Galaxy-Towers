draw_sprite(spr_score_combo,-1,x,y)

draw_set_color(c_white)
draw_set_font(fnt_game)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x,y,	"Round " + string(handler.game_round) + " of 10 \n" +
				"Score: " + string(handler.game_score) + "\n" + 
				"Combo: " + string(handler.combo))