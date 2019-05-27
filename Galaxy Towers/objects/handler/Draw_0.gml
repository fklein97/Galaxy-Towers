if(global.gamemode != "timeless"){
	draw_sprite(spr_clock,-1,880,900)
	
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_game)
	draw_text(880, 820, string(time))
}