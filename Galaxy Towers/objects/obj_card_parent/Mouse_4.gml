if(open = true and clickable = true and handler.click_locked = false){
	checked = check(value)
	score_change = 0

	if(checked > 0){
		handler.combo++;
		score_change = handler.combo * 4400
		
		if(checked = 1){
			obj_main_stack.card_object = self.object_index
		}
		else if(checked = 2){
			obj_second_stack.card_object = self.object_index
		}
		
		instance_destroy(obj_card_hover)
		fading = true
		clickable = false
		handler.card_array[position,card_layer] = 0
		
		if(card_layer = 1 and handler.round_over = false){
			instance_create_depth(x,y,depth,obj_tower_clear)	
		}
		
		update_cards_open()
		
		if(handler.combo = 4 and ds_list_size(obj_rest_cards.rest_cards) > 0){
			draw_card_to_second()
			obj_second_stack.stack_enabled = true	
		}
		
	}
	else{
		score_change = -10000
	}
	
	handler.game_score = handler.game_score + score_change
	score_change_text = instance_create_depth(x,y-100,depth-1,obj_score_change_text)
	score_change_text.change_value = score_change
	
	checked = 0
	check_round_end()
}