/// @description CONECT TO A SERVER

//Ask player for ip & port
var ip = get_string("To which server should we connect?","127.0.0.1");
var port = real(get_string("And on which port is the server running?","6510"));

//Setup client, on success go to waiting room, otherwise end game
if (htme_clientStart(ip, port)) {
    //Wait for connection success!
    room_goto(htme_rom_connecting);
} else {
    show_message("Could not start client! Check your network configuration!");
    game_end();
}

