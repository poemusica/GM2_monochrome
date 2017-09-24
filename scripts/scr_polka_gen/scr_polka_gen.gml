surface_size = 1024;

s = surface_create(surface_size, surface_size);

if (!surface_exists(s)) {
  s = surface_create(surface_size, surface_size);
}

surface_set_target(s);

draw_clear_alpha(c_black, 0);
draw_set_color(c_white);
var r, c, spacing, radius;
spacing = 25;
radius = 5;

for (r=0; r<ceil(surface_size/spacing); r+=1) { // rows
	var offset = 0;
    if (r % 2) {  offset = spacing/2 }
	for (c=0; c<ceil(surface_size/spacing); c+=1) { // cols
		draw_circle(offset + (c * spacing), r * spacing, radius, false);
    }
  }

surface_reset_target();

global.spr_polka = sprite_create_from_surface(s, 0, 0, surface_size, surface_size, true, true, 0, 0);

surface_free(s);