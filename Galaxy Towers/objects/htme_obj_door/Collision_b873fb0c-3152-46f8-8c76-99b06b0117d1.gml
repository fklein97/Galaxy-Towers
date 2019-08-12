/// @description CHECK IF DOOR ENTERED

/** This is the script to change room. It's not that important.
  * However, it checks if there's a player collision and if that player is local,
  * that might be useful for you
  */

var isLocal;
with (other) {isLocal = htme_isLocal();}

if (isLocal && keyboard_check_pressed(vk_up)) {
    var dest = htme_rom_demo2;
    if (room == htme_rom_demo2) dest = htme_rom_demo;
    room_goto(dest);
}

/* */
/*  */
