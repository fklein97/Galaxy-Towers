	if(y >= start_y + 10){
		vspeed = 0
	}
	if(fading = true){
		sprite_alpha = sprite_alpha - 0.015	
	}
	if(sprite_alpha <= 0 and fading = true){
		instance_destroy(self)
	}