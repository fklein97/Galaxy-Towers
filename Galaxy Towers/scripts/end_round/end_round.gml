if(instance_exists(obj_card_parent)){
	with obj_card_parent{
		instance_destroy(self)	
	}
}
else{
	if(handler.time > 0){
		bonus_score = ds_list_size(obj_rest_cards.rest_cards) * 10000
	
		handler.game_score += bonus_score
		score_text = instance_create_depth(obj_rest_cards.x,obj_rest_cards.y - 200, obj_rest_cards.depth-1 ,obj_score_change_text)
		score_text.change_value = bonus_score
	}
}
if(instance_exists(obj_tower_clear)){
	with obj_tower_clear{
		instance_destroy(self)	
	}
}

obj_main_stack.stack_enabled = false
obj_main_stack.card_object = 0
obj_second_stack.stack_enabled = false
obj_second_stack.card_object = 0
handler.combo = 0
handler.round_over = true
with handler{
	alarm_set(1,-1)	
}

if(handler.game_round < handler.max_rounds){
	show_ok_dialog("Round " + string(handler.game_round) + " ended. Starting Round " + string(handler.game_round + 1), scr_next_round_dialog)
}
else{
	show_yes_no_dialog("Game ended. Save Score?", scr_game_ends_yes_dialog, scr_game_ends_no_dialog)
	ini_open(working_directory + "save.ini")
	ini_write_real_base64("unlockables", "coins" , global.coins)
	ini_close()
}