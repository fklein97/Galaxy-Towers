/// @description Process the message the player typed in
var i_d = ds_map_find_value(async_load, "id");
if (i_d == self.str_id) {
   if (ds_map_find_value(async_load, "status")) {
      if (ds_map_find_value(async_load, "result") != "") {
         var message = ds_map_find_value(async_load, "result");
         //Send the message using the CHAT API.
         mp_chatSend(message);
      }
   }
}

