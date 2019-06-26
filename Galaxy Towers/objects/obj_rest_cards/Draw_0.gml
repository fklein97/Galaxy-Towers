if(os_type = os_android){
	draw_sprite_ext(spr_card_restcards,-1,self.x,self.y,1.2,1.2,0,c_white,1)
}
else{
	draw_sprite(spr_card_restcards,-1,self.x,self.y)
}
if(clicked = true){
	draw_sprite(spr_card_restcards_animation,animation_index/6,self.x,self.y)
}
draw_set_font(fnt_game)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_text(self.x,self.y,ds_list_size(rest_cards))