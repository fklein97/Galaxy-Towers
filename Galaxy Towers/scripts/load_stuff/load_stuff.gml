//Load from ini
ini_open(working_directory + "save.ini")

//HIGHSCORES
//for(i = 1; i <= 10; i++;){
//	 highscore_add(ini_read_string_base64("highscore_"+string(i),"name","0"),ini_read_real_base64("highscore_"+string(i),"score","0"))
//}

//PREFERENCES
if(os_type = os_windows){
	cursor_sprite = asset_get_index(ini_read_string_base64("preferences","cursor", "spr_cursor_standart"))
}
global.cardback_sprite = asset_get_index(ini_read_string_base64("preferences","cardback", "spr_cardback_standart"))
global.name = ini_read_string_base64("preferences","lastname", "")

//UNLOCKS
global.coins = ini_read_real_base64("unlockables","coins", 0)




ini_close()