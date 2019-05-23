if(score_last_step != handler.game_score){
	score_shaking = true	
}

if(score_shaking = true and shaking_on_cd = false){
	alarm_set(0,shaking_cd)	
	shaking_on_cd = true
}

score_last_step = handler.game_score