image_alpha-= 0.02;
if(image_alpha < 0.05) instance_destroy();
rot+= 2;
size+= 0.07;
draw_sprite_ext(sprite_index, 9, x, y, size, size, rot, 16777215, image_alpha);
siner++;
x+= sin(siner / 5) * 2;

