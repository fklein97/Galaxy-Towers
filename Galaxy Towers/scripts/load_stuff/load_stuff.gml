//Load from ini
ini_open(working_directory + "save.ini")

//HIGHSCORES
for(i = 1; i <= 10; i++;){
	 highscore_add(ini_read_string("highscore_"+string(i),"name","0"),ini_read_real("highscore_"+string(i),"score","0"))
}
cursor_sprite = asset_get_index(ini_read_string("preferences","cursor", "spr_cursor_standart"))
global.cardback_sprite = asset_get_index(ini_read_string("preferences","cardback", "spr_cardback_standart"))
global.coins = ini_read_real("unlockables","coins", 0)


ini_close()