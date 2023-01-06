if(global.mnfight == 3) {
    attacked= 0;
    talked= 0;
}
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1) {
    if(talked == 1 && !instance_exists(OBJ_WRITER )) {
        alarm[5]= 1;
        talked= 2;
    }
    if(talked == 0) {
        attacked= 0;
        alarm[6]= 1;
        talked= 1;
        global.heard= 0;
    }
}
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        hurta= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
        killed= 1;
        instance_destroy();
    }
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 48, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2) {
    if(attacked == 0) {
        with(mypart1) event_user(0);
        if(mycommand >= 0)
            global.msg[0]= "* Aaron is splashing you&  playfully.";
        if(mycommand >= 0 && global.flag[95] == 1)
            global.msg[0]= "* Aaron is looking around^1,&  fearful of something.";
        if(mycommand >= 25)
            global.msg[0]= "* Aaron is sweating bullets^3.&* Literally.";
        if(mycommand >= 50)
            global.msg[0]= "* Aaron is admiring his own&  muscles.";
        if(mycommand >= 75)
            global.msg[0]= "* Smells like an underwater&  barnyard.";
        if(mycommand >= 90) global.msg[0]= "* Smells like a mussel farm.";
        if(global.monsterhp[myself] < 30)
            global.msg[0]= "* Aaron\\'s muscles droop&  comically.";
        global.msg[0]= "* Mettaton.";
        attacked= 1;
        alarm[7]= 20;
    }
    if(attacked == 2) {
        // obj_questionasker
        with(307) event_user(0);
        attacked= 3;
    }
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* METTATON - ATK 30 DEF 255&* His metal body renders him&  invulnerable to attack./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* Screaming is against the&  rules./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1) {
    vspeed= -4;
    mypart1.vspeed= -4;
}
if(whatiheard == 3 && flex == 3 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(alphaup == 1 && image_alpha < 1)
    image_alpha+= 0.05;
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
