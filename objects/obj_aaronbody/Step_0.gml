if(bull == 0) {
    siny++;
    y= yo + sin(siny / 30) * 9;
    yo+= vspeed;
    if(alphaup == 1 && image_alpha < 1)
        image_alpha+= 0.05;
}
if(shake > 0) {
    shack++;
    if(shack == 2) {
        x= xstart + (random(shake) * 2 - shake) / 2;
        y= ystart + (random(shake) * 2 - shake) / 2;
        shack= 0;
    }
}

