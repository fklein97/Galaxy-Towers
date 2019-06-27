if(handler.round_over = false or instance_exists(obj_card_parent)){
	global.move_possible = false
	if(instance_exists(obj_card_parent)){
		if(ds_list_size(obj_rest_cards.rest_cards) = 0){
			with obj_card_parent{
				if(self.open = true and self.fading = false){
					if(check(self.value) > 0){
						global.move_possible = true	
					}
				}
			}
		}
		else{
			with obj_card_parent{
				if(self.fading = false){
					global.move_possible = true	
				}
			}
		}
	}

	if(global.move_possible = false){
		with handler{
			alarm_set(1,-1) //disable clock
			alarm_set(0,120) //end round in 120
			round_over = true
		}
	}
}