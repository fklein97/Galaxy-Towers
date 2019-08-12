/// @description Draw the chat output
/** 
 * Loops over all entries in the output list and display them at the
 * bottom of the screen
 */

//Get an offset, so we draw the newest line on bottom
var size = ds_list_size(self.output);
var bottomLine = room_height-50;
var offset = size*20;

for(var i = 0;i<size;i++) {
    var line = ds_list_find_value(self.output,i);
    draw_text(50,bottomLine-offset+i*20,string_hash_to_newline(line));
}

/* */
/*  */
