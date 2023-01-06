if(instance_exists(obj_kitchenforcefield ))
    depth= obj_kitchenforcefield.depth + 1;
if(powered == 1) siner++;
else  siner= 0;
if(image_xscale >= 0) {
    i= 0;
    while(i < image_xscale) {
        draw_sprite(spr_core_wallstrip_m , siner / 6, x + i * 20, y);
        i++;
    }
}


/*  */
