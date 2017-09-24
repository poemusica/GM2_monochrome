key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

if key_left and place_free(x - collision_buffer, y) {
	x -= movement_speed;
}
if key_right and place_free(x + collision_buffer, y) {
	x += movement_speed;
}
if key_up and place_free(x, y - collision_buffer) {
	y -= movement_speed;
}
if key_down and place_free(x, y + collision_buffer) {
	y += movement_speed;
}