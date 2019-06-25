if(open = true and clickable = true and os_type = os_windows){
	instance_destroy(obj_card_hover)
}
if(y != start_y and fading = false and os_type = os_windows){
	y = start_y	
	vspeed = 0
}
