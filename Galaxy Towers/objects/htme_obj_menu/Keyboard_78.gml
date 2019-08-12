/// @description START SERVER

//Ask player for port
var port = real(get_string("On which port should the server listen?","6510"));

//Setup server, on success start game, on failure end the game.
if (htme_serverStart(port,32)) {
    //Set a server name and description. See chapter BONUS 1 in the manual.
    //This is only relevant if you are using GMnet ENGINE version, otherwise you
    //won't notice this
    htme_setData(2,get_string("How should this server be called (for the lobbies)?","GMnet Demo Server"));
    htme_setData(3,get_string("Enter a server description (for the lobbies)?","A server created for the GMnet CORE/ENGINE demo project"));
    room_goto(htme_rom_demo);
} else {
    show_message("Could not start server! Check your network configuration!");
    game_end();
}

