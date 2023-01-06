timer++;
image_xscale++;
image_yscale++;
if(timer > 7) image_alpha-= 0.2;
if(image_alpha < 0.2) instance_destroy();

