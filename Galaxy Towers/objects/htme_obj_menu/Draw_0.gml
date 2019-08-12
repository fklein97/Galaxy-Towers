/// @description Draw greeting text.
var text1 = @"
Hello and welcome!#
Thanks for choosing GMnet ENGINE.#
This demo will show you some of what GMnet ENGINE is capable of.#
This project is also explained step by step in the manual at#
gmnet.parakoopa.de##
Controls:#
Arrow keys: Move#
Up: Enter doors#
Space: Jump#
C: Chat#
Have fun!##
";
var text2 = @"
Press N to create a new server.
";
var text3 = @"
Press B to connect to a server.
";
var text4 = @"
Press K to access the LAN lobby.
";
var text5 = @"
Press L to access the ONLINE lobby.
";
draw_sprite(htme_logo,0,20,20);
draw_text(20,120,string_hash_to_newline(text1));
draw_set_colour(c_red);
draw_text(300,400,string_hash_to_newline(text2));
draw_set_colour(c_yellow);
draw_text(300,440,string_hash_to_newline(text3));
draw_set_colour(c_fuchsia);
draw_text(300,480,string_hash_to_newline(text4));
draw_set_colour(c_aqua);
draw_text(300,520,string_hash_to_newline(text5));
draw_set_colour(c_white);

