image_xscale+= 0.1;
image_yscale+= 0.1;
t++;
if(t > 7) image_alpha-= 0.08;
if(image_alpha <= 0.02) instance_destroy();
image_angle+= aa;

