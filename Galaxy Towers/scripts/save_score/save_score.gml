highscore_string = argument0
highscore_score = argument1
highscore_position = 0
ini_open(working_directory + "highscores.ini")

//HIGHSCORES

for(i = 10; i >= 1; i--;){
	if(ini_read_real_base64(global.gamemode + "_"+string(i),"score",0) < highscore_score){
		highscore_position = i
	}
}

if(highscore_position > 0){
	for(i = 10; i > highscore_position; i--;){
		ini_write_string_base64(global.gamemode + "_"+string(i),"name", ini_read_string_base64(global.gamemode + "_"+string(i-1),"name", "None"))
		ini_write_string_base64(global.gamemode + "_"+string(i),"score", ini_read_real_base64(global.gamemode + "_"+string(i-1),"score", 0))
	}

	ini_write_string_base64(global.gamemode + "_"+string(highscore_position),"name",highscore_string)
	ini_write_real_base64(global.gamemode + "_"+string(highscore_position),"score",highscore_score)
}


ini_close()