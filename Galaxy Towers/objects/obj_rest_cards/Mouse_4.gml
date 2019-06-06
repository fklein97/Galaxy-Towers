if(ds_list_size(rest_cards) > 0 and handler.round_over = false){
	draw_card()
	check_round_end()
}
clicked = true
animation_index = 0
alarm_set(1,60)