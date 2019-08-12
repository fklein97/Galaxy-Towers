//IF YOU USE GMnet PUNCH demo project:
if (!script_exists(asset_get_index("htme_init"))) {
   self.game = "gmnet_punch_122"
}
//IF YOU USE GMnet ENGINE demo project:
else {
   self.game = "gmnet_engine_130"
}
//IF YOU USE YOUR OWN SERVER - Change self.game!

///Recieve lobby data from the master server
udphp_downloadServerList(4,"date","DESC",self.game);

