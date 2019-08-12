/// @description RETRIEVE VARIABLES FROM THE ENGINE
/** SADLY, due to current limitations in GML, we need to add all variables added to the
  * engine by using mp_add (mp_addBuiltin* are not needed to be added here!!).
  * Just use this as a template and copy it.
  *
  * More information in Begin Step. This here does the oposite, it sets the instance variables
  * to the variables stored in the engine.
  **/

self.name = mp_map_syncOut("name", self.name);
self.pressed_jump = mp_map_syncOut("pressed_jump", self.pressed_jump);
self.pressed_left = mp_map_syncOut("pressed_left", self.pressed_left);
self.pressed_right = mp_map_syncOut("pressed_right", self.pressed_right);

/* */
/*  */
