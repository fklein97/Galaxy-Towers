var val = argument0
var mainval = get_card_obj_value(obj_main_stack.card_object)
var secondval = get_card_obj_value(obj_second_stack.card_object)

if(val = 1 and mainval = 13){
	return 1;	
}
if(val = 13 and mainval = 1){
	return 1;	
}

if(obj_second_stack.stack_enabled = true){
	if(val = 1 and secondval = 13){
		return 2;	
	}
	if(val = 13 and secondval = 1){
		return 2;	
	}	
}

if(val + 1 = mainval or val - 1 = mainval){
	return 1;	
}

if(obj_second_stack.stack_enabled = true){
	if(val + 1 = secondval or val - 1 = secondval){
		return 2;	
	}
}

return 0;