ini_open(working_directory + "save.ini")

//HIGHSCORES
for(i = 1; i <= 10; i++;){
	ini_write_string("highscore_"+string(i),"name",highscore_name(i))
	ini_write_string("highscore_"+string(i),"score",string(highscore_value(i)))
}


ini_close()