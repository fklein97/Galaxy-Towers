/// @description Draw nameplate
draw_set_color(image_blend);
draw_set_halign(fa_center);
draw_text(x,y-sprite_yoffset-5-string_height(string_hash_to_newline(self.name)),string_hash_to_newline(self.name));
draw_set_halign(fa_left);
draw_set_color(c_white);

draw_self();
