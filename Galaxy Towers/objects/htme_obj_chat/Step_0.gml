/// @description "Forge" the chat display
/** This will look for new chat messages and add them to the display.
  */  
  
var queue = mp_chatGetQueue();
//Process all new chat messages.
while (ds_queue_size(queue) > 0) {
    //This will retrieve the first unchecked message. They are ordered by time, oldest first.
    //ds_queue_dequeue will return this entry and then remove it from the queue.
    var raw_message = ds_queue_dequeue(queue);
    //We now need to get the sender and the actual message, we do this using these two
    //commands:
    var sender = htme_chatGetSender(raw_message);
    var message = htme_chatGetMessage(raw_message);

    /* Get player name - This works just as in playerlist */
    var player_instance = htme_findPlayerInstance(htme_obj_player,sender);
     if (player_instance != -1) {
         var name = (player_instance).name;
     } else {
         var name = "(Someboy in another room)";
     }
    /* End */
    
    //Add to list of chat output
    ds_list_add(self.output,name+": "+message);
}

/* */
/*  */
