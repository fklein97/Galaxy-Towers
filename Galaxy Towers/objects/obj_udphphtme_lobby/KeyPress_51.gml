/// @description LOAD GAME SERVER ON SLOT 3
var l = global.udphp_downloadlist;
if (ds_exists(l,ds_type_list)) {
    if (ds_list_size(l)>2) {
        var entry = l[| 2];
        var ip = entry[? "ip"];
        var game = entry[? "data1"];
        if (game != self.game) {
           //Not compatible game, exit
           show_message("Game server or version is incompatible!");
           exit;
        }
        //====GMnet PUNCH DEMO ONLY
        if (!script_exists(asset_get_index("htme_init"))) {
            //Create new client - See obj_client + manual for more information
            global.tmp_lobby_ip = ip;
            instance_create(0,0,asset_get_index("obj_lobbyclient"));
            //Return to main room
            room_goto(asset_get_index("udphp_room"));
        }
        //====GMnet ENGINE DEMO ONLY
        else {
            //Setup client, on success go to waiting room, otherwise end game
            //We don't actually know the port, but that doesn't matter, the master
            //server will tell us the port when we connect
            //
            //THE LINE BELOW is equivalent to:
            //if (htme_clientStart(ip, 0)) {
            if (script_execute(asset_get_index("htme_clientStart"),ip, 0)) {
                //Wait for connection success!
                room_goto(asset_get_index("htme_rom_connecting"));
            } else {
                show_message("Could not start client! Check your network configuration!");
            }
        }
    } else {
      //Do nothing - There is no server on this slot
    }
} else {
  //Do nothing - There is no server on this slot
}

