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
    global.turntimer= 130;
    global.firingrate= 17;
    if(pop == 3) global.firingrate*= 2.4;
    if(pop == 2) global.firingrate*= 1.7;
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
        global.msg[0]= "* Chilldrake starts a one-&  monster riot.";
    if(mycommand >= 25)
        global.msg[0]= "* Chilldrake is chanting an&  anarchist spell.";
    if(mycommand >= 50)
        global.msg[0]= "* Chilldrake is eating its&  own homework.";
    if(mycommand >= 70)
        global.msg[0]= "* It smells like " + chr(ord("\"")) + "Ice" + chr(ord("\"")) + "&  scented body-spray.";
    if(mycommand >= 90)
        global.msg[0]= "* Chilldrake is wondering&  where Snowy went.";
    if(mercymod == 80)
        global.msg[0]= "* Chilldrake feels neutered&  by your agreement.";
    if(mercymod == 200)
        global.msg[0]= "* Chilldrake is laughing at&  your imitation of its&  cohort.";
    if(mercymod == -35)
        global.msg[0]= "* Chilldrake pretends not to&  care.";
    if(mercymod < -10) global.msg[0]= "* Chilldrake is puffed up..";
    if(global.monsterhp[myself] < 20)
        global.msg[0]= "* Chilldrake is flaking&  apart.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* CHILLDRAKE - ATK 12 DEF 7&* Rebels against everything!!&* Looking for its friend Snowy./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        gg= floor(random(6));
        if(gg <= 6)
            global.msg[0]= "* You tell Chilldrake it\\'s&  all wrong./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        mercymod= -10;
        if(gg == 7) mercymod= 222;
    }
    if(whatiheard == 3) {
        if(joketold == 0) mercymod= -4;
        else  mercymod= 80;
        global.msc= 0;
        if(joketold == 0)
            global.msg[0]= "* You agree with Chilldrake&  before it gives its speech./^";
        if(joketold == 1)
            global.msg[0]= "* You agree with Chilldrake^1.&* It seems to get very&  uncomfortable.../^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(scr_monstersum() == 1)
            global.msg[0]= "* You make fun of Chilldrake./^";
        if(scr_monstersum() > 1) {
            global.msg[0]= "* You make fun of Chilldrake./";
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


/*  */
