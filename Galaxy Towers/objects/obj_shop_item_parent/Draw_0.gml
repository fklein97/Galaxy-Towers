if(global.cardback_sprite = item_sprite or cursor_sprite = item_sprite){
	draw_sprite(spr_shop_item,1,x,y)	
}
else{
	draw_sprite(spr_shop_item,0,x,y)	
}

draw_sprite(item_sprite,0,x,y)
if(locked = true){
	draw_sprite(spr_lock,0,x,y-50)	
}
else{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_game_small)
	draw_text(x,y+130,display_name)
}