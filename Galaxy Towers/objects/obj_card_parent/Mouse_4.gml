if(open = true and clickable = true and handler.click_locked = false){
	checked = check(value)
	score_change = 0

	if(checked > 0){
		handler.combo++;
		score_change = handler.combo * 4400
		
		instance_destroy(obj_card_hover)
		fading = true
		clickable = false
		handler.card_array[position,card_layer] = 0
		
		if(checked = 1){
			//obj_main_stack.card_object = self.object_index
			move_towards_point(obj_main_stack.x,obj_main_stack.y,35)
			depth = obj_main_stack.depth - 1
		}
		else if(checked = 2){
			//obj_second_stack.card_object = self.object_index
			move_towards_point(obj_second_stack.x,obj_second_stack.y,35)
			depth = obj_main_stack.depth - 1
		}
		
		if(card_layer = 1 and handler.round_over = false){
			instance_create_depth(x,y,depth,obj_tower_clear)	
		}
		
		update_cards_open()
		
		if(handler.combo = 3 and ds_list_size(obj_rest_cards.rest_cards) > 0){
			draw_card_to_second()
			obj_second_stack.stack_enabled = true	
		}
		
		random_number = 0
		if(handler.combo >= 3){
			random_number = irandom(1)
		}
		else{
			random_number = irandom(9)	
		}
		if(random_number = 0){
			global.coins += coin_change	
			coins_change_text = instance_create_depth(x,y-50,depth-1,obj_coins_change_text)
			coins_change_text.change_value = coin_change
		}
		
	}
	else{
		score_change = -10000
	}
	
	handler.game_score = handler.game_score + score_change
	score_change_text = instance_create_depth(x,y-100,depth-1,obj_score_change_text)
	score_change_text.change_value = score_change

	check_round_end()
}