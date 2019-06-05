if(vspeed != 0){
	if(y >= (1080/2-300)){
		vspeed = 0	
	}
}

stringname = keyboard_string

if(string_length(stringname) > 15){
	too_much = string_length(stringname) - 15
	keyboard_string = string_delete(stringname,15, too_much)
}