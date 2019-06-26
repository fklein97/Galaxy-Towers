if(ds_list_size(obj_rest_cards.rest_cards) > 0){
	if(obj_second_stack.stack_enabled = true){
		obj_second_stack.stack_enabled = false
		obj_second_stack.card_object = 0
	}
	
	var rn = irandom(ds_list_size(obj_rest_cards.rest_cards) - 1)
	obj_main_stack.card_object = ds_list_find_value(obj_rest_cards.rest_cards,rn)
	obj_main_stack.current_value = get_card_obj_value(obj_main_stack.card_object)
	ds_list_delete(obj_rest_cards.rest_cards,rn)
	handler.combo = 0
}