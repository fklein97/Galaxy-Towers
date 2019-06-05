if(vspeed != 0){
	if(y >= (1080/2-300)){
		vspeed = 0	
	}
}

if(string_length(keyboard_string) > 15){
	too_much = string_length(keyboard_string) - 15
	string_delete(keyboard_string,16, too_much)	
}