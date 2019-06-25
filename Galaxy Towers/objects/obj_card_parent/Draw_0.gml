if(initialized = true){
	if(open = true){
		if(os_type = os_android){
			draw_sprite_ext(open_sprite,-1,self.x,self.y,1.2,1.2,0,c_white,sprite_alpha)
		}
		else{
			draw_sprite_ext(open_sprite,-1,self.x,self.y,1,1,0,c_white,sprite_alpha)
		}
	}
	else{
		if(os_type = os_android){
			draw_sprite_ext(global.cardback_sprite,-1,self.x,self.y,1.2,1.2,0,c_white,sprite_alpha)
		}
		else{
			draw_sprite_ext(global.cardback_sprite,-1,self.x,self.y,1,1,0,c_white,sprite_alpha)	
		}
	}
}