/// @description LOAD GAME SERVER ON SLOT 1
var l = htme_getLANServers();
if (ds_exists(l,ds_type_list)) {
    if (ds_list_size(l)>0) {
        var entry = l[| 0];
        var ip = entry[? "ip"];
        var port = entry[? "port"];
        var game = entry[? "data1"];
        if (game != self.game) {
           //Not compatible game, exit
           show_message("Game server or version is incompatible!");
           exit;
        }
        if (htme_clientStart(ip, port)) {
            //Wait for connection success!
            room_goto(htme_rom_connecting);
        } else {
            show_message("Could not start client! Check your network configuration!");
        }
    } else {
      //Do nothing - There is no server on this slot
    }
} else {
  //Do nothing - There is no server on this slot
}

