/// @description Set speed to 0 when hitting a top wall
if (!place_free(x, y-16)) {
    move_contact_solid(90,-1);
    vspeed = 0;
}

if (!place_free(x, y+16)) {
   move_contact_solid(270,-1);
   gravity = 0;
   vspeed = 0;
}

