ii= image_index;
if(room == 59) {
    if(instance_exists(obj_papyrus5 ) && fvic == 1) {
        global.plot= obj_papyrus5.xplot + 1;
        obj_mainchara.cutscene= 0;
        obj_xoxo.image_index= 3;
        if(obj_papyrus5.conversation < 9) {
            obj_papyrus5.conversation= 9;
            sans= instance_create(620, 80, obj_sans_room );
        }
    } else  {
        if(global.plot <= 55) {
            if(vic > 0) global.flag[63]++;
            obj_xoxo.image_index= 0;
            fvic= 0;
            vic= 0;
        }
    }
    image_index= 1;
    alarm[2]= 3;
}
if(room == 58) {
    if(fvic == 1 && global.plot < 53) {
        global.plot= 53;
        obj_xoxo.image_index= 3;
    } else  {
        if(global.plot < 53) {
            obj_xoxo.image_index= 0;
            fvic= 0;
            vic= 0;
        }
    }
    image_index= 1;
    alarm[2]= 3;
}
if(room == 63 && global.phasing == 0) {
    if(fvic == 1 && global.plot < 63) {
        global.plot= 63;
        fb= instance_create(obj_specialdrophole.x + 3, obj_specialdrophole.y, obj_fakebridge );
        fb.justdoit= 1;
        fb.alarm[3]= -1;
        obj_xoxo.image_index= 3;
    } else  {
        if(global.plot < 63) {
            obj_xoxo.image_index= 0;
            fvic= 0;
            vic= 0;
        }
    }
    image_index= 1;
    alarm[2]= 3;
}
if(ii == 0 && ii != image_index) snd_play(snd_switchpull_n );

/* */
/*  */
