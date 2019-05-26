draw_self()
if(shop_item != 0){
	draw_set_color(c_white)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_right)
	draw_set_font(fnt_shop_items)
	draw_text(x+20,y+5,string(shop_item.price))
}