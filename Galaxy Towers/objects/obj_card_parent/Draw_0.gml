if(initialized = true){
	if(open = true){
		draw_sprite_ext(open_sprite,-1,self.x,self.y,1,1,0,c_white,sprite_alpha)
	}
	else{
		draw_sprite(spr_cardback,-1,self.x,self.y)	
	}
}