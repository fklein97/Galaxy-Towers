if(locked = false){
	if(type = "cursor"){
		cursor_sprite = item_sprite	
	}
	else if(type = "cardback"){
		global.cardback_sprite = item_sprite
	}
	ini_open(working_directory + "save.ini")
	ini_write_string_base64("preferences", type, sprite_get_name(item_sprite))
	ini_close()
}