/// @description Background
draw_rectangle_colour(0,55,room_width,80,c_white,c_white,c_orange,c_orange,false);
draw_rectangle_colour(0,80,room_width,160,c_aqua,c_aqua,c_white,c_white,false);
draw_rectangle_colour(0,160,room_width,240,c_aqua,c_aqua,c_white,c_white,false);
draw_rectangle_colour(0,240,room_width,320,c_aqua,c_aqua,c_white,c_white,false);
draw_rectangle_colour(0,320,room_width,400,c_aqua,c_aqua,c_white,c_white,false);

///Title and Controls
draw_set_colour(c_red);
draw_text(5,5,string_hash_to_newline("Demo Lobby"));
draw_set_colour(c_black);
draw_text(5,5,string_hash_to_newline(@"
Controls: 1-4: Connect to server | ESC: Back | R: Refresh"));

///Online servers

draw_line(0,55,room_width,55);
draw_text(room_width/2-string_width(string_hash_to_newline("=ONLINE SERVERS="))/2,60,string_hash_to_newline("=ONLINE SERVERS="));
//Check if refreshing
if (global.udphp_downloadlist_refreshing) {
   draw_set_colour(c_red);
   draw_text(room_width-140,60,string_hash_to_newline("Refreshing..."));
   draw_set_colour(c_black);
}
draw_line(0,80,room_width,80);

///Servers (Loop)
var l = global.udphp_downloadlist;
for (var i = 0; i<4;i++) {
    draw_text(10,85+80*i,string_hash_to_newline("=("+string(i+1)+")="));
    if (ds_exists(l,ds_type_list)) {
        if (ds_list_size(l)>i) {
            //Get stuff from the downloadlist
            var entry = l[| i];
            var ip = entry[? "ip"];
            var game = entry[? "data1"];
            var servername = entry[? "data2"];
            var description = entry[? "data3"];
            draw_text(70,85+80*i,string_hash_to_newline(servername+" | "+ip));
            draw_text(70,115+80*i,string_hash_to_newline(description));
        }
    }
    draw_line(0,160+80*i,room_width,160+80*i);
}

///Footer
var str = "For demonstration purposes only. Only lists four 'random' servers!"
draw_text(room_width/2-string_width(string_hash_to_newline(str))/2,440,string_hash_to_newline(str));

