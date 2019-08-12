/// @description Type a new message in
/**
  * This will prompt the player for his chat message.
  * Don't use the normal get_string here as it will freeze the game while
  * waiting for the input which WILL disconnect you.
  * The value of this message will be retrived in the Dialog event.
  */
self.str_id = get_string_async("Send a chat message:","");

/* */
/*  */
