/// When the scores haven’t loaded, try again once per second
if text2 == ""
{
	if(global.gamemode = "classic"){
		get_scores_classic(player_name,10);
	}
	else if(global.gamemode = "timeless"){
		get_scores_timeless(player_name,10);		
	}
	else if(global.gamemode = "single round"){
		get_scores_singleround(player_name,10);		
	}
	
    text = "Please check your internet connection...";
    alarm[1] = room_speed;
}