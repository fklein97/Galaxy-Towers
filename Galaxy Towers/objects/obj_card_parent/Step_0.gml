	if(y >= start_y + 10 and fading = false){
		vspeed = 0
	}
	/*if(fading = true){
		sprite_alpha = sprite_alpha - 0.015	
	}
	if(sprite_alpha <= 0 and fading = true){
		instance_destroy(self,true)
	}*/
	
	if(fading = true){
		if(distance_to_point(obj_main_stack.x,obj_main_stack.y) < 5 and checked = 1){
			obj_main_stack.card_object = self.object_index
			if(handler.round_over = false){
				check_round_end()
			}
			instance_destroy(self)
		}
		else if(distance_to_point(obj_second_stack.x,obj_second_stack.y) < 5 and checked = 2){
			obj_second_stack.card_object = self.object_index	
			if(handler.round_over = false){
				check_round_end()
			}
			instance_destroy(self)
		}
	}