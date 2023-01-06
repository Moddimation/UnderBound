scr_depth(0, 0, 0, 0, 0);
script_execute(scr_npc_anim );
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    instance_create(0, 0, obj_unfader );
    alarm[5]= 20;
    m= instance_create(0, 0, obj_musfadeout );
    m.fadespeed= 0.05;
    conversation= 3;
}
if(conversation == 6) {
    if(global.hp < global.maxhp) global.hp= global.maxhp;
    if(global.hp == 36) global.hp= 38;
    if(global.hp == 32) global.hp= 36;
    if(global.hp == 28) global.hp= 34;
    if(global.hp == 24) global.hp= 32;
    if(global.hp == 20) global.hp= 30;
    global.msc= 0;
    global.msg[0]= "* Hiya^1!&* You look like you&  had a great sleep./";
    global.msg[1]= "* Which is incredible^1, because&  you were only up there for&  about two minutes.../";
    if(global.flag[72] == 1)
        global.msg[2]= "* Here\\'s your money back^1.&* You can pay me if you\\'re&  going to stay overnight./%%";
    if(global.flag[72] == 2)
        global.msg[2]= "* Feel free to come back&  if you get tired./%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 7;
}
if(conversation == 7 && !instance_exists(OBJ_WRITER )) {
    conversation= 0;
    global.interact= 0;
    myinteract= 0;
    global.flag[73]= 0;
}

/* */
/*  */
