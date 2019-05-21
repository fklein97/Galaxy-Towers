if(ds_list_size(obj_rest_cards.rest_cards) > 0){
	if(obj_second_stack.stack_enabled = true){
		ds_list_add(obj_rest_cards.rest_cards,obj_second_stack.card_object)
		obj_second_stack.stack_enabled = false
		obj_second_stack.card_object = 0
	}
	
	obj_main_stack.card_object = ds_list_find_value(obj_rest_cards.rest_cards,0)
	ds_list_delete(obj_rest_cards.rest_cards,0)
	handler.combo = 0
}