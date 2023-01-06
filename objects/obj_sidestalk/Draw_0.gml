if(frozen == 0) siner++;
growth= 1 + cos(siner / 5) * 0.01;
ssx= sin(siner / 3) * 2 * image_xscale;
ssy= cos(siner / 3) * 2;
if(frozen != 0) image_speed= 1;
if(frozen == 0) image_speed= 3;
draw_sprite_ext(sprite_index, image_index, x - ssx, y + ssy, image_xscale, growth, 0, image_blend, 1);

