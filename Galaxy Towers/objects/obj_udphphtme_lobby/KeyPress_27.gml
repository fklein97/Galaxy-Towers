/// @description Go back
//====GMnet PUNCH DEMO ONLY
if (!script_exists(asset_get_index("htme_init"))) {
   room_goto(asset_get_index("udphp_room"));
}
//====GMnet ENGINE DEMO ONLY
else {
   room_goto(asset_get_index("htme_rom_menu"));
}

