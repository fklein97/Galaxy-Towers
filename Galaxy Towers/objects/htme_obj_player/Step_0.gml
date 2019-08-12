/// @description Perform platforming!
//This is a very basic example of a platformer. You should not program your physics like this!

if (place_free(x, y+1)) {
   gravity = 0.2;
} else {
   gravity = 0;
   vspeed = 0;
}

/** Don't check the buttons themself here.
  * The way this engine works is by only using the direct button input here via
  * Begin step if we are local. If we are not, the other clients should overwrite
  * these variables with THEIR button input!
  **/
if (self.pressed_jump && (!vspeed)) {
    vspeed = -12
    image_xscale = 1;
    image_angle = 90;
}
if (self.pressed_right) {
    x+=10;
    image_xscale = 1;
    image_angle = 0;
}
if (self.pressed_left) {
    x-=10;
    image_xscale = -1;
    image_angle = 0;
}
if (vspeed < 0) vspeed=vspeed+gravity;

/* */
/*  */
