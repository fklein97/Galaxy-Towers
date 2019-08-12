/// @description DRAW THE PLAYERLIST.

/** Get all currently logged-in players from the engine, loop through them,
  * get the obj_htme_player instance they control and get the color and the name
  * from it.
  * If no instance is found, it will display "(Other room)", because
  * if the player is in another room, his instance doesn't exist and we can't get
  * it. If you need the name of the player all the time, create a seperate object
  * for it and let it sync the names, then make it stayAlive and persistent (see
  * obj_htme_time).
  *
  * Please note that doing this EVERY draw event like we do it here is not
  * recommended at all. You should cache the instance and only reread it if it
  * got destroyed (which may happen).
  */
draw_set_color(c_white);
draw_text(40,35,string_hash_to_newline("Players:"));
var playerlist = htme_getPlayers();
for(var i = 0;i<ds_list_size(playerlist);i++) {
    var player = ds_list_find_value(playerlist,i);
    /** We have the playerhash. Now get the instance of htme_obj_player
      * that this player controls 
      */
    var instance = htme_findPlayerInstance(htme_obj_player,player);
    if (instance != -1) {
        var name = (instance).name;
        var _image_blend = (instance).image_blend;
    } else {
        var name = "(Other room)";
        var _image_blend = c_gray;
    }
    //[extra] Additional debug information when debug overlay is enabled.
    if (htme_debugOverlayEnabled()) {
       //Add player hash to name
       name = name+" - "+player;
    }
    //[/extra]
    //Draw small player icon
    draw_sprite_ext(htme_spr_player,0,50,(i)*20+70,0.5,0.5,0,_image_blend,1);
    //Draw player name
    draw_set_colour(_image_blend);
    draw_text(70,(i)*20+62,string_hash_to_newline(name));
    
}
draw_set_color(c_white);

/* */
/*  */
