/// @description Check if client is connected
if (htme_clientIsConnected()) {
    room_goto(htme_rom_demo);
}
if (htme_clientConnectionFailed()) {
    show_message("Connection with server failed!");
    game_restart();
}

