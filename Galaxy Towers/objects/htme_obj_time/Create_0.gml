/// @description DESCRIPTION
/**
  * This obejct controls the time and draws backgrounds.
  * In room htme_rom_demo it draws a color according to the time.
  * In room htme_rom_demo2 it always draws a "wall", that room is inside a building.
  */

/* */
///ADD TO GMnet ENGINE

/**
  * This checks if this was CREATED on the server. If no, we instantly destroy
  * the instance. This way we will only have ONE time object on all clients.
  */
  
if (!htme_isServer()) {
   instance_destroy();
   exit;
}

/**
  * Starts syncing.
  * Basic commands are explained in htme_obj_player
  */
mp_sync();

/**
  * Mark this as "stayAlive".
  * That means if you make this object persistent and run this command,
  * this instance will not only travel through room locally like htme_obj_player
  * but on ALL clients. This object will always exist, no matter what.
  */
mp_stayAlive();

/**
 * Syncs the time every 20 seconds. It should be the same on all clients even
 * without this, since all clients process the time, but maybe a client is 
 * lagging and in this case we want to resync.
 */
mp_add("time","time",buffer_u16,20*room_speed);
mp_setType("time",mp_type.SMART);

self.time = 1000;

/* */
/*  */
