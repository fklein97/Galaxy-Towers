
if(name = "cursor_standart" or name = "cardback_standart"){
	ini_open(working_directory + "save.ini")
	ini_write_real_base64("unlockables" , name , false)
	ini_close()
}

ini_open(working_directory + "save.ini")
locked = ini_read_real_base64("unlockables", name, true)
ini_close()

if(locked = true){
	button = instance_create_depth(x,y+130,depth-1,obj_shop_item_button)
	button.shop_item = self
}