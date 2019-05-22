if(instance_exists(obj_card_parent)){
	with obj_card_parent{
		instance_destroy(self)	
	}
}
obj_main_stack.stack_enabled = false
obj_main_stack.card_object = 0
obj_second_stack.stack_enabled = false
obj_second_stack.card_object = 0
handler.combo = 0

show_ok_dialog("Round " + string(handler.game_round) + " ended. Starting Round " + string(handler.game_round + 1), scr_next_round_dialog)