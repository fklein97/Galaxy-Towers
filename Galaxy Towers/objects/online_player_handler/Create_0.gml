if (!htme_isServer()) {
   instance_destroy();
   exit;
}

mp_sync()

mp_add("gameSeed","seed",buffer_u32,room_speed)
if(htme_isLocal()){
	seed = irandom(999999999)	
	seed_ready = true
}
if(htme_isLocal() and !htme_isServer()){
	alarm_set(0,room_speed*2)
}