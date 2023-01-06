if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 70;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(global.myfight == 1) {
    gotimer--;
    if(mypart1.got == 1 && gotimer > 0) {
        if(mypart1.type != 99) remtype= mypart1.type;
        mypart1.type= 99;
        mypart1.hspeed= 0;
        mypart1.vspeed= 0;
    }
}
if(global.hurtanim[myself] == 1) {
    if(mypart1.got == 1) {
        if(mypart1.type != 99) remtype= mypart1.type;
        mypart1.type= 99;
        mypart1.hspeed= 0;
        mypart1.vspeed= 0;
        shudder= 8;
        alarm[3]= global.damagetimer;
        global.hurtanim[myself]= 3;
    } else  global.hurtanim[myself]= 2;
}
if(global.hurtanim[myself] == 2) {
    if(defuse == 0) {
        mypart1.type= bombtype;
        global.hurtanim[myself]= 0;
        global.myfight= 0;
        global.mnfight= 1;
    }
    if(defuse == 1) {
        con= 999;
        global.hurtanim[myself]= 0;
    }
}
if(global.hurtanim[myself] == 5) {
    mypart1.type= bombtype;
    global.hurtanim[myself]= 0;
    global.myfight= 0;
    global.mnfight= 1;
}
if(global.mnfight == 2) {
    if(attacked == 0) {
        gotimer= 3;
        if(mycommand >= 0) global.msg[0]= "* The bomb is still active!";
        if(bombtype == 1) global.msg[0]= "* The dog is still active!";
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* BOMB&* Could blow at any moment./^";
        if(bombtype == 1)
            global.msg[0]= "* ANNOYING DOG-BOMB&* It\\'s blissfully unaware of&  its circumstances./^";
        if(bombtype == 2)
            global.msg[0]= "* EXTREMELY AGILE G.O.W.&* All things considered^1, it\\'s an&  extremely agile glass of water./^";
        if(bombtype == 3)
            global.msg[0]= "* SCRIPT BOMB&* Like all modern blockbusters^1,&  it\\'s full of explosions./^";
        if(bombtype == 4)
            global.msg[0]= "* BASKET BOMB&* Even if you explode^1, you\\'ll&  at least look good./^";
        if(bombtype == 5)
            global.msg[0]= "* PRESENT BOMB&* Regardless^1, you\\'ll have to&  write a thank-you letter./^";
        if(bombtype == 6)
            global.msg[0]= "* GAME BOMB&* You really should have rented&  it first./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* Defuse failed^1!&* Aim for DEFUSE ZONE!/^";
        mypart1.flash= 1;
        if(mypart1.got == 1) {
            global.msg[0]= "* Bomb defused!";
            if(bombtype == 1) global.msg[0]= "* Dog defused!";
            mypart1.type= 99;
            mypart1.defuse= 1;
            mypart1.vspeed= 0;
            mypart1.hspeed= 0;
            con= 1000;
            alarm[4]= 45;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        global.heard= 1;
    }
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(con == 999) {
    con= 1000;
    alarm[4]= 30;
}
if(con == 1001) {
    instance_create(0, 0, obj_unfader );
    con= 1002;
    alarm[4]= 12;
}
if(con == 1003) {
    instance_create(0, 0, obj_persistentfader );
    room_goto(global.currentroom);
}


/*  */
