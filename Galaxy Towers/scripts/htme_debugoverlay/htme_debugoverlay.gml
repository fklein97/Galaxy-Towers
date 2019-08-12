/// @description htme_debugoverlay();

/*
**  Description:
**      PRIVATE "METHOD" OF obj_htme! That means this script MUST be called with obj_htme!
**
**      Draw the debug overlay, if enabled
**  
**  Usage:
**      <See above>
**
**  Arguments:
**      <None>
**
**  Returns:
**      <Nothing>
**
*/

if (!self.started) exit;

//Get screen coordinates
if (!view_enabled) {
   self.dbg_left = 0;
   self.dbg_right = room_width;
   self.dbg_top = 0;
   self.dbg_bottom = room_height;
} else {
   self.dbg_left = __view_get( e__VW.XView, 0 );
   self.dbg_right = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 );
   self.dbg_top = __view_get( e__VW.YView, 0 );
   self.dbg_bottom = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 );
}


if (string_copy(self.gamename,0,13) == "gmnet_engine_") {
    //Draw default gamename warning
    draw_set_halign(fa_right);
    var str = "WARNING! (SHOW: F10)";
    draw_set_colour(c_black);
    draw_rectangle(self.dbg_right-22-string_width(string_hash_to_newline(str)),self.dbg_top+48,self.dbg_right-20,self.dbg_top+48+string_height(string_hash_to_newline(str))+2,false);
    draw_set_colour(c_yellow);
    draw_text(self.dbg_right-20,self.dbg_top+50,string_hash_to_newline(str));
    draw_set_halign(fa_left);
    if (keyboard_check_pressed(vk_f10)) {
        show_message(@"Warning! 
You are using the default gamename string! 
If you are testing the demo project or simply play arround with the engine, ignore this.
Otherwise, when making your game, you need to change 'self.gamename' in 'htme_init'.
This string is used to identify your game. It is meant to make sure different
games can't connect to each other. If incompatible games would try to connect
to each other that would result in data corruption and crashes.
Also change this string when releasing a new version of your game, that is incompatible
with old versions of your game.");
    }
}

//Display a warning when using the default game name.

if (!self.debugoverlay) exit;

self.dbgcolor = c_white;
self.dbgcolor_a = c_red;
draw_set_font(-1);

if (self.dbgstate != vk_f12) {
    //Draw transparent overlay
    draw_set_colour(c_black);
    draw_set_alpha(0.4);
    draw_rectangle(self.dbg_left,self.dbg_top,self.dbg_right,self.dbg_bottom,false);
    
    draw_set_colour(self.dbgcolor);
    draw_set_alpha(1);
}

switch (self.dbgstate) {
    case vk_f12:
        htme_doOff();
    break;
    case vk_f1:
        htme_doInstAll();
    break;
    case vk_f2:
        htme_doInstVisible();
    break;
    case vk_f3:
        htme_doPlayers();
    break;
    case vk_f4:
        htme_doInstInvisible();
    break;
    case vk_f5:
        htme_doInstCached();
    break;
    case vk_f6:
        htme_doGlobalSync();
    break;
    case vk_f7:
        htme_doChat();
    break;
    case vk_f8:
        htme_doSignedPackets(false);
    break;
    case vk_f10:
    break;
    case vk_f9:
        htme_doSignedPackets(true);
    break;
    case vk_f11:
        if (!self.isServer) {
            htme_clientDisconnect();
            self.dbgstate = vk_f12;
        }
        else {
            htme_dotbd();
        }
    break;
    case vk_nokey:
        htme_doMain();
    break;
    default:
        htme_dotbd();
    break;
}
