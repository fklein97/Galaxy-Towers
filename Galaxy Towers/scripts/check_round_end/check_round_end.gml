var global.move_possible = false
if(instance_exists(obj_card_parent)){
	if(ds_list_size(obj_rest_cards.rest_cards) = 0){
		with obj_card_parent{
			if(self.open){
				if(check(self) > 0){
					global.move_possible = true	
				}
			}
		}
		if(global.move_possible = false){
			end_round()	
		}
	}
}
else{
	end_round()	
}