/// @description Draw background
if (room == htme_rom_demo) {
    //Draw night/day
    //This is not a good way of doing it, but I'm not in the mood for that :D
    if (self.time == 0) {
       var bgcolor = make_colour_hsv(170,185,0);
    } else if (self.time <= 1000) {
       var bgcolor = make_colour_hsv(170,185,255/100*(self.time)/10);
    } else if (self.time == 1001) {
       var bgcolor = make_colour_hsv(170,185,255);
    } else if (self.time <= 2000) {
       var bgcolor = make_colour_hsv(170,185,255/100*(1000-self.time)/10);
    }
    draw_set_colour(bgcolor);
    draw_rectangle(0,0,room_width,room_height,false);
    //Draw time as debug on screen
    draw_set_colour(c_white);
    draw_text(room_height-70,70,string_hash_to_newline("Time: "+string(self.time)));
} else {
  draw_set_colour(c_maroon);
  draw_rectangle(0,0,room_width,room_height,false);
}
draw_set_colour(c_white);

