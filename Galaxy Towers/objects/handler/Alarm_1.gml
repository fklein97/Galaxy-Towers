/// @description Second Timer

if(time = 0){
	end_round()	
}

if(time >= 0 and global.gamemode != "timeless"){
	time--
}
alarm_set(1,120)