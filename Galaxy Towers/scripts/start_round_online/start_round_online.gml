var r = argument0;
handler.round_over = false
handler.cards_not_in_use = get_card_types();
randomize();
give_cards(r);
update_cards_open();
obj_main_stack.stack_enabled = true
draw_card();
if(r = 1){
	handler.time = 80;
}
else if(r = 2){
	handler.time = 75;
}
else if(r = 3){
	handler.time = 70;
}
else if(r = 4){
	handler.time = 65;
}
else if(r = 5){
	handler.time = 60;
}
else if(r = 6){
	handler.time = 55;
}
else if(r = 7){
	handler.time = 50;
}
else if(r = 8){
	handler.time = 45;
}
else if(r = 9){
	handler.time = 40;
}
else if(r = 10){
	handler.time = 35;
}
with handler{
	alarm_set(1,120)	
}