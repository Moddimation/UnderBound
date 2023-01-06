if(active == 1) {
    if(image_xscale < 1) {
        image_xscale+= 0.08;
        if(image_xscale > 0.2) visible= 1;
    } else  {
        if(con == 0) {
            image_xscale= 1;
            con= 2;
            alarm[4]= 10;
        }
    }
    if(con == 3) {
        con= 4;
        alarm[4]= 3;
    }
    if(con == 4)
        image_blend= make_color_rgb(255, 160 + alarm[4] * 23.3333333333333, 160 + alarm[4] * 23.3333333333333);
    if(con == 5) {
        image_alpha-= 0.2;
        if(memorymode == 0 && image_alpha < 0.1) instance_destroy();
        if(memorymode == 1 && image_alpha < 0.1) {
            visible= 0;
            active= 0;
        }
    }
}

