pattern_sprite = argument0;
pattern_scale = argument1;
pattern_tint = argument2;
shape_tint = argument3;


if (!surface_exists(s)) {
  s = surface_create(sprite_width * image_xscale, sprite_height * image_yscale);
}

x_loc = (x/room_width) * sprite_get_width(pattern_sprite);
y_loc = (y/room_height) * sprite_get_height(pattern_sprite);

surface_set_target(s);

gpu_set_blendmode(bm_normal);

draw_sprite_ext(sprite_index, image_index, sprite_xoffset, sprite_yoffset, image_xscale, image_yscale, 0, shape_tint, 1);

gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);

draw_sprite_ext(pattern_sprite, 0, -x_loc, -y_loc, pattern_scale, pattern_scale, 0, pattern_tint, 1);

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(s, x-sprite_xoffset, y-sprite_yoffset);