/// @description Increase the time.
/** Increase the time.
  * If time is greater than 2000, set to zero.
  */
self.time++;
if (self.time > 2000) self.time = 0;

/* */
///ADD VARIABLES TO THE ENGINE
/** SEE HTME_OBJ_PLAYER **/
mp_map_syncIn("time",self.time);

/* */
/*  */
