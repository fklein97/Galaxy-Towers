/// @description Second Timer

if(time = 0){
	end_round()	
}

if(time >= 0 and global.gamemode != "timeless"){
	time--
}
if(os_type = os_android){
	alarm_set(1,60)
}
else{
	alarm_set(1,120)
}