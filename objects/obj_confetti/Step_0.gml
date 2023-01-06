siner++;
x+= sin(siner / 3) * 2;
timer--;
if(timer < 20) image_alpha-= 0.05;
if(image_alpha <= 0.05) instance_destroy();

