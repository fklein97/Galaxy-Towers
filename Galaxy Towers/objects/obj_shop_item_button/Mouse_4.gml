if(shop_item.price <= global.coins){
	global.coins -= shop_item.price
	shop_item.locked = false
	
	ini_open(working_directory + "save.ini")
	ini_write_real_base64("unlockables","coins", global.coins)
	ini_write_real_base64("unlockables",shop_item.name, 0)
	ini_close()
	instance_destroy(self)
}