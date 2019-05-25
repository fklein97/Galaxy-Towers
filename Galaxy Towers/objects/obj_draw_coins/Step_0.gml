if(coins_last_step != global.coins){
	shaking = true	
}

if(shaking = true and shaking_on_cd = false){
	alarm_set(0,shaking_cd)	
	shaking_on_cd = true
}

coins_last_step = global.coins