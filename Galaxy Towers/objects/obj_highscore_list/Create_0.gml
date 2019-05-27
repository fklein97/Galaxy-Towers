ini_open(working_directory+ "highscores.ini")

for(i = 1; i <= 10; i++;){
	names[i] = ini_read_string_base64(global.gamemode + "_"+string(i), "name", "none")
	scores[i] = ini_read_real_base64(global.gamemode + "_"+string(i), "score", 0)
}

ini_close()