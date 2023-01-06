obj_floweybodyparent.knockfactor= knockfactor;
// obj_floweybodyparent
with(1586) {
    if(object_index != 1587) {
        image_blend= make_color_rgb(255, 255 - knockfactor * 5, 255 - knockfactor * 5);
        blend2= make_color_rgb(255, 255 - knockfactor * 5, 255 - knockfactor * 5);
        x= xstart + random(knockfactor * 3) - random(knockfactor * 3);
        y= ystart + random(knockfactor * 3) - random(knockfactor * 3);
        if(object_index == 1588 || object_index == 1590) {
            x= xstart;
            y= ystart;
        }
        if(object_index == 1655) {
            y-= 80;
            if(x > 320) x-= 40;
            if(x < 320) x+= 40;
        }
    }
}
knockfactor--;
alarm[11]= 1;
if(knockfactor < 0) alarm[11]= -1;

