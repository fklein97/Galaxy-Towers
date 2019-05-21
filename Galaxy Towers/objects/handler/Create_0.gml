for(var i = 1; i <= 10; i++;){
	for(var j = 1; j <= 4; j++;){
			card_array[i , j] = 0;
	}
}
game_round = 0;
cards_not_in_use = get_card_types();
start_round(1);
game_round = 1;