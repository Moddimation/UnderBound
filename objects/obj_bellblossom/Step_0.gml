if(myinteract == 1 && con == 0 && global.interact == 0) {
    snd_play(snd_bell );
    if(instance_exists(obj_waterboard )) {
        global.interact= 1;
        image_speed= 0.2;
        con= 1;
        alarm[4]= 15;
    } else  {
        image_speed= 0.2;
        con= 20;
        alarm[4]= 15;
    }
}
if(con == 1) {
    global.encounter= 0;
    finished= 0;
    if(instance_exists(obj_waterboard )) {
        if(obj_waterboard.using == 99) finished= 1;
        obj_waterboard.using= 99;
        // obj_waterboard
        with(1114) image_alpha-= 0.08;
    }
}
if(con == 2) {
    obj_waterboardpuzzle1.won= 0;
    i= 0;
    while(i < 4) {
        if(block[i] > 0) {
            with(block[i]) {
                x= xstart;
                y= ystart;
            }
            block[i]= 0;
        }
        i++;
    }
    con= 3;
    alarm[4]= 15;
}
if(con == 3 && instance_exists(obj_waterboard )) {
    obj_waterboard.image_index= 0;
    obj_waterboard.image_speed= 0;
    // obj_waterboard
    with(1114) x= xstart;
    // obj_waterboard
    with(1114) y= ystart;
    // obj_waterboard
    with(1114) image_alpha+= 0.08;
}
if(con == 4) {
    if(instance_exists(obj_waterboardpuzzle1 ))
        obj_waterboardpuzzle1.waterboard= 0;
    if(instance_exists(obj_waterboard )) {
        obj_waterboard.using= 0;
        obj_waterboard.myinteract= 0;
        obj_waterboard.depth= 800000;
    }
    myinteract= 0;
    con= 0;
    image_speed= 0;
    image_index= 0;
    global.interact= 0;
}
if(con == 21) {
    image_speed= 0;
    image_index= 0;
    con= 0;
    myinteract= 0;
}


/*  */
