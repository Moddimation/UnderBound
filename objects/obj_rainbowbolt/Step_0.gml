x= thisx + random(6) - random(6);
y= thisy + random(6) - random(6);
if(giga == 1) {
    ss-= 0.5;
    x= thisx + random(12) - random(12);
    y= thisy + random(12) - random(12);
}
ss++;
if(ss > 2) {
    image_alpha-= 0.1;
    if(image_alpha < 0.5) image_xscale-= 0.2;
    if(image_alpha < 0.1) instance_destroy();
}
add+= 10;
image_blend= make_color_hsv(ac + add, 210, 255);

