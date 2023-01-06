scr_depth(0, 0, 0, 0, 0);
if(talkedto == 1 && !instance_exists(obj_dialoguer )) {
    myinteract= 4;
    image_alpha-= 0.05;
    if(image_alpha < 0.1) {
        global.flag[36]= 2;
        instance_destroy();
    }
}

/* */
/*  */
