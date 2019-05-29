global.name = keyboard_string
save_score(keyboard_string,handler.game_score)
if(global.gamemode = "classic"){
	send_score_classic(global.name,handler.game_score)	
}
else if(global.gamemode = "timeless"){
	send_score_timeless(global.name,handler.game_score)	
}
else if(global.gamemode = "single round"){
	send_score_singleround(global.name,handler.game_score)			
}

room_goto(rm_highscores)