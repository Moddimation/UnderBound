scr_depth(0, 0, 0, 0, 0);
if(instance_exists(obj_torface )) {
    myinteract= 1;
    if(instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt != 0)
        image_speed= 0.2;
} else  {
    myinteract= 0;
    if(speed == 0) {
        image_index= 0;
        image_speed= 0;
    }
    if(speed > 0) image_speed= 0.2;
}
scr_npcdir(0);
if(room == 5 && y < 140) fader= 1;
if(fader == 1) {
    image_alpha-= 0.2;
    if(image_alpha <= 0.2) instance_destroy();
}

/* */
/*  */
