/// Initialise loading the online highscores
player_name = global.name;
if(global.gamemode = "classic"){
	get_scores_classic(player_name,10);
}
else if(global.gamemode = "timeless"){
	get_scores_timeless(player_name,10);		
}
else if(global.gamemode = "single round"){
	get_scores_singleround(player_name,10);		
}
text = "Please wait for the highscores to load...";
text2 = "";
alarm[1] = room_speed;