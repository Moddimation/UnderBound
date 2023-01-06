if(global.flag[52] == 1) visible= 0;
if(conversation == 1) {
    caster_pause(global.currentsong);
    global.interact= 1;
    image_yscale= 1;
    visible= 1;
    sprite_index= spr_movedoge_o ;
    image_speed= 0.1;
    y= 140;
    vspeed= -0.5;
    conversation= 2;
}
if(conversation == 2 && y <= 120) {
    y= 120;
    alarm[0]= 20;
    conversation= 3;
    vspeed= 0;
}
if(conversation == 4) {
    global.msg[0]= "* Did something move^1?&* Was it my imagination?/";
    global.msg[1]= "* I can only see moving&  things./";
    global.msg[2]= "* If something WAS moving..^1.&* For example^1, a human.../";
    global.msg[3]= "* I\\'ll make sure it NEVER&  moves again!/%%";
    if(scr_murderlv() >= 2) {
        global.msg[0]= "* Did something move^1?&* Was it my imagination?/";
        global.msg[1]= "* I can only see moving&  things./";
        global.msg[2]= "* H..^1. hey!&* I can\\'t stop shivering&  all of a sudden./";
        global.msg[3]= "* Who..^1. who\\'s there!?/%%";
    }
    scr_regulartext();
    conversation= 5;
}
if(conversation == 5 && !instance_exists(OBJ_WRITER )) {
    global.battlegroup= 23;
    global.flag[200]= 0;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    conversation= 5.5;
}
if(global.plot == 41 && conversation == 5.5) {
    global.interact= 1;
    alarm[0]= 11;
    conversation= 5.6;
}
if(conversation == 5.6) global.interact= 1;
if(global.plot == 41 && conversation == 6) {
    caster_resume(global.currentsong);
    global.mercy= 0;
    global.interact= 1;
    if(global.flag[52] == 1) {
        global.plot= 42;
        global.interact= 0;
        instance_destroy();
        exit;
    } else  {
        if(global.flag[52] == 0 || global.flag[52] == 2) {
            global.msg[0]= "* S-S-S-Something pet me...&* Something that isn\\'t&  m-m-moving.../";
            global.msg[1]= "* I\\'m gonna need some dog&  treats for this!!!/%%";
            if(global.flag[52] == 2) {
                global.msg[0]= "* A stick appeared out of&  nowhere^1, then disappeared./";
                global.msg[1]= "* Was it a ghost stick?/";
                global.msg[2]= "* Did I just return it to&  the afterlife?/";
                global.msg[3]= "* I need some dog treats&  to think about this./%%";
            }
            conversation= 7;
            scr_regulartext();
        }
    }
}
if(conversation == 7 && !instance_exists(OBJ_WRITER )) {
    vspeed= 1;
    alarm[0]= 20;
    conversation= 8;
}
if(conversation == 9) {
    vspeed= 0;
    global.plot= 42;
    global.interact= 0;
    instance_destroy();
}


/*  */
