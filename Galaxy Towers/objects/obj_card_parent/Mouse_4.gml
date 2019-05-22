if(open = true and clickable = true){
	checked = check(value)

	if(checked > 0){
		handler.game_score = handler.game_score + (handler.combo * 1000)
		handler.combo++;
		handler.game_score = handler.game_score + 10000
		handler.card_array[position,card_layer] = 0
		if(checked = 1){
			obj_main_stack.card_object = self.object_index
		}
		else if(checked = 2){
			obj_second_stack.card_object = self.object_index
		}
		instance_destroy(obj_card_hover)
		fading = true
		clickable = false
		update_cards_open()
		if(handler.combo = 4){
			draw_card_to_second()
			obj_second_stack.stack_enabled = true	
		}
		
	}
	else{
		handler.game_score = handler.game_score - 10000
	}
	checked = 0
	check_round_end()
}