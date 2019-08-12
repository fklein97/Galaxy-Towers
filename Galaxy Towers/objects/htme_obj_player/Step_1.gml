/// @description ADD VARIABLES TO THE ENGINE
/** SADLY, due to current limitations in GML, we need to add all variables added to the
  * engine by using mp_add. (and ONLY mp_add, mp_addPosition and similiar are 
  * resolved automatically!)
  * Just use this as a template and copy it.
  **/
  
/* You need to apply changes to your variables here aswell, before you sync them. 
 * If you need to change them during the step, cache them for the local player
 * and then sync them here. The multiplayer engine will not change the variables
 * for the local player, only retrieve them to send them to other players
 */
if (htme_isLocal()) {
    /** WRITES THE INPUTS FOR THE LOCAL PLAYER! These will be sent to all
      * other players as configured in the create event.
      *
      * Instead of check_pressed we use check for the jump, 
      * because the pressed frames could get lost due to network lagg 
      * which can cause desync and we don't want to use SMART or IMPORTANT
      * (see manual) packets here, because this needs to be fast!
      * This also means, our players can fly.
      * If you need keyboard_check_pressed sync keyboard_check instead and 
      * built your own function that simulates the pressed functions. 
      */
    self.pressed_jump = keyboard_check(vk_space);
    self.pressed_left = keyboard_check(vk_left);
    self.pressed_right = keyboard_check(vk_right);
}

/** THIS SYNCS THE VARIABLES WITH THE ENGINE
  * Add every variable synced via mp_add here!
  * DO NOT JUST DO THIS FOR THE LOCAL PLAYER! Do it for all!
  */
mp_map_syncIn("name",self.name);
mp_map_syncIn("pressed_jump",self.pressed_jump);
mp_map_syncIn("pressed_left",self.pressed_left);
mp_map_syncIn("pressed_right",self.pressed_right);

/* */
/*  */
