discord_update_presence("Gamemode: " + global.gamemode, "In a Game (v." + GM_version + ")", "game_icon", "g")

image_speed = 0.05

for(var i = 1; i <= 10; i++;){
	for(var j = 1; j <= 4; j++;){
			card_array[i , j] = 0;
	}
}

if(global.gamemode = "single round"){
	max_rounds = 1	
}
else{
	max_rounds = 10	
}

game_round = 1;
start_round(1);