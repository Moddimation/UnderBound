timer++;
if(timer > 6) {
    image_alpha-= 0.1;
    if(image_alpha <= 0) instance_destroy();
}
siner++;
x+= sin(siner / 2);

