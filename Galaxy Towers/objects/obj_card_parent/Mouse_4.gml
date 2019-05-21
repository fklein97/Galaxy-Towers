checked = check(value)

if(checked > 0){
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
	instance_destroy(self)
	update_cards_open()
}
else{
	handler.game_score = handler.game_score - 10000
}
checked = 0