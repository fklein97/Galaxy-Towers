draw_self()
if(os_type = os_android){
	draw_set_color(rgb_to_bgr($FFF568))	
	draw_set_font(fnt_game)
	draw_set_halign(fa_center)
	draw_text(self.x,self.y + 130, "Mobile Version!")
}