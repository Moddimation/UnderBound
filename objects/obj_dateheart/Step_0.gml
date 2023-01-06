global.invc--;
if(global.invc > 0) image_speed= 0.5;
else  {
    image_index= 0;
    image_speed= 0;
}
if(obj_time.left == 1 && movement == 1) {
    x-= global.sp;
    if(keyboard_multicheck(16) == 1)
        x+= global.sp / 2;
}
if(obj_time.right == 1 && movement == 1) {
    x+= global.sp;
    if(keyboard_multicheck(16) == 1)
        x+= global.sp / 2;
}
if(obj_time.up == 1 && movement == 1) {
    y-= global.sp;
    if(keyboard_multicheck(16) == 1)
        x+= global.sp / 2;
}
if(obj_time.down == 1 && movement == 1) {
    y+= global.sp;
    if(keyboard_multicheck(16) == 1)
        x+= global.sp / 2;
}
if(global.hp < 1) script_execute(scr_gameoverb );
if(deleteafter == 1 && !instance_exists(blconwd)) {
    alarm[3]= 10;
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    movement= 1;
    if(instance_exists(obj_papdate )) {
        obj_papdate.face_index= 0;
        obj_papdate.face_speed= 0;
    }
    deleteafter= 0;
}
if(keyboard_multicheck_pressed(13) && movement == 1 && canpress == 1 && instance_exists(169)) {
    snd_play(snd_bell );
    bodypart= 0;
    xx= obj_papdate.x;
    yy= obj_papdate.y;
    if(collision_rectangle(xx + 24, yy + 58, xx + 86, yy + 130, 749, 0, 0))
        bodypart= 1;
    if(collision_rectangle(xx + 84, yy + 56, xx + 110, yy + 164, 749, 0, 0))
        bodypart= 2;
    if(collision_rectangle(xx + 0, yy + 66, xx + 24, yy + 112, 749, 0, 0))
        bodypart= 2;
    if(collision_rectangle(xx + 90, yy + 144, xx + 138, yy + 172, 749, 0, 0))
        bodypart= 3;
    if(collision_rectangle(xx + 0, yy + 112, xx + 44, yy + 146, 749, 0, 0))
        bodypart= 3;
    if(collision_rectangle(xx + 34, yy + 130, xx + 84, yy + 196, 749, 0, 0))
        bodypart= 4;
    if(collision_rectangle(xx + 12, yy + 196, xx + 124, yy + 216, 749, 0, 0))
        bodypart= 5;
    if(collision_rectangle(xx + 36, yy, xx + 88, yy + 58, 749, 0, 0))
        bodypart= 6;
    if(bodypart > 0) {
        deleteafter= 1;
        if(bodypart == 2) {
            global.msg[0]= "\\\\E3I SEE^1. I SEE./";
            global.msg[1]= "\\\\E0YOU LIKE CARESSING&MY BICEPS WITH A&FLOATING HEART./";
            global.msg[2]= "\\\\E1BUT WHO DOESN\\'T!?/%%";
            global.msg[3]= "\\\\E0TRY AGAIN!/%%";
        }
        if(bodypart == 1) {
            global.msg[0]= "\\\\E0THIS SHIRT DIDN\\'T&ORIGINALLY SAY&\\'COOL^1,\\' BUT I&IMPROVED IT./";
            global.msg[1]= "EXPERT TIP^1: ALL&CLOTHING ARTICLES&CAN BE IMPROVED&THIS WAY./%%";
            global.msg[2]= "\\\\E1BUT THAT\\'S NOT A&SECRET!!!/";
            global.msg[3]= "IT\\'S JUST GOOD&ADVICE!!!/%%";
        }
        if(bodypart == 3) {
            global.msg[0]= "\\\\E2HOLDING MY HAND&SO I\\'LL TELL&YOU THE ANSWER.../";
            global.msg[1]= "\\\\E7NO!!^1!&I MUST RESIST!!/%%";
        }
        if(bodypart == 4) {
            global.msg[0]= "\\\\E0THERE\\'S NO SECRET&TO MY LEGS./";
            global.msg[1]= "JUST HARD WORK&AND PERSEVERANCE.../%%";
        }
        if(bodypart == 5) {
            global.msg[0]= "\\\\E3HUMAN SOULS ARE&STRONGER THAN&MONSTER SOULS.../";
            global.msg[1]= "\\\\E0BUT THE SOLES OF&OUR SHOES ON THE&OTHER HAND...!/";
            global.msg[2]= "\\\\E3... ARE ABOUT THE&SAME./%%";
        }
        if(bodypart == 6) global.msg[0]= "HAT DIALOGUE./%%";
        if(bodypart < 6) event_user(1);
        if(bodypart == 6) {
            obj_papdate.cn= 47;
            instance_destroy();
        }
    }
}


/*  */
