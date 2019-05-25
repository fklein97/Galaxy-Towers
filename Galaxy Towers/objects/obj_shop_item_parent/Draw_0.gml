if(global.cardback_sprite = item_sprite or cursor_sprite = item_sprite){
	draw_sprite(spr_shop_item,1,x,y)	
}
else{
	draw_sprite(spr_shop_item,0,x,y)	
}

draw_sprite(item_sprite,0,x,y)
if(locked = true){
	draw_sprite(spr_lock,0,x,y+80)	
}