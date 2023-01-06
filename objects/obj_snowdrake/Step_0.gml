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
    alarm[5]= 110;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        mypart1= instance_create(x, y, part1);
        mypart2= instance_create(x, y, part2);
        global.hurtanim[myself]= 0;
        image_index= 0;
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
if(global.mnfight == 2 && attacked == 0) {
    pop= scr_monstersum();
    if(instance_exists(obj_jerry ) && obj_jerry.ditch == 0)
        pop--;
    global.turntimer= 120;
    if(pop == 2) global.turntimer= 130;
    global.firingrate= 16;
    if(pop == 3) global.firingrate*= 2.4;
    if(pop == 2) global.firingrate*= 2;
    if(mycommand >= 0 && mycommand <= 50) {
        gen= instance_create(x, y, obj_4sidegen );
        gen.bullettype= 1;
    } else  {
        global.firingrate+= 8;
        gen= instance_create(x, y, obj_4sidegen );
        gen.bullettype= 0;
    }
    gen.myself= myself;
    if(mycommand >= 0)
        global.msg[0]= "* Snowdrake is assessing the&  crowd.";
    if(mycommand >= 25)
        global.msg[0]= "* Snowdrake is practicing&  its next pun.";
    if(mycommand >= 40)
        global.msg[0]= "* Snowdrake is smiling at its&  own bad joke.";
    if(mycommand >= 60)
        global.msg[0]= "* It smells like a wet&  pillow.";
    if(mycommand >= 80)
        global.msg[0]= "* Snowdrake realized its own&  name is a pun and is&  freaking out.";
    if(mercymod == 80)
        global.msg[0]= "* Snowdrake is pleased with&  its " + chr(ord("\"")) + "cool" + chr(ord("\"")) + " joke.";
    if(mercymod == 200)
        global.msg[0]= "* Snowdrake is laughing at&  your imitation of its&  cohort.";
    if(mercymod == -35)
        global.msg[0]= "* Snowdrake pretends not to&  care.";
    if(mercymod < -10) global.msg[0]= "* Snowdrake is puffed up..";
    if(global.monsterhp[myself] < 20)
        global.msg[0]= "* Snowdrake is flaking&  apart.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* SNOWDRAKE - ATK 12 DEF 7&* This teen comedian fights to&  keep a captive audience./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        gg= floor(random(6));
        if(gg <= 2) global.msg[0]= "* You boo the Snowdrake./^";
        if(gg == 3 || gg == 4)
            global.msg[0]= "* You tell the Snowdrake that&  they aren\\'t funny./^";
        if(gg == 5) {
            global.msg[0]= "* You tell the Snowdrake that&  no one will ever love&  them the way they are.../";
            global.msg[1]= "* They struggle to make a&  retort^1, and slink away&  utterly crushed.../^";
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        mercymod= -10;
        if(gg == 5) mercymod= 222;
    }
    if(whatiheard == 3) {
        if(joketold == 0) mercymod= -4;
        else  {
            mercymod= 80;
            global.flag[136]= 1;
        }
        global.msc= 0;
        if(joketold == 0)
            global.msg[0]= "* You laugh at Snowdrake before&  it says anything funny./^";
        if(joketold == 1)
            global.msg[0]= "* You laugh at Snowdrake\\'s&  pun./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(scr_monstersum() == 1) global.msg[0]= "* You make a bad ice pun./^";
        if(scr_monstersum() > 1) {
            global.msg[0]= "* You make a bad ice pun./";
            global.msg[1]= "* The other monsters think&  it\\'s hilarious.../^";
            scr_withallmonster(0, 20);
            whatiheard= 19;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
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
