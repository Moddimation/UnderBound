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
    global.turntimer= 160;
    global.firingrate= 25;
    if(pop == 3) global.firingrate*= 2.4;
    if(pop == 2) global.firingrate*= 1.7;
    if(mycommand >= 0 && mycommand <= 50) {
        global.turntimer= 160;
        gen= instance_create(x, y, obj_muscbulgen );
        if(pop > 1) gen.offset= 1;
        gen.dmg= global.monsteratk[myself];
    } else  {
        global.firingrate= 5;
        if(pop == 3) global.firingrate*= 2.7;
        if(pop == 2) global.firingrate*= 1.8;
        gen= instance_create(x, y, obj_sweatbulgen );
        gen.bullettype= 0;
    }
    gen.myself= myself;
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
    if(flex > 0)
        global.msg[0]= "* Aaron is ready for your&  next flex.";
    if(global.monsterhp[myself] < 30)
        global.msg[0]= "* Aaron\\'s muscles droop&  comically.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* AARON - ATK 24 DEF 12&* This seahorse has a lot of&  HP (Horsepower)./";
        global.msg[1]= "* All of his attacks are harder&  to dodge at the bottom of the&  box./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You tell Aaron to go away./^";
        mercymod= -10;
        if(global.flag[95] == 1) {
            global.msg[0]= "* You tell Aaron to go away^1.&* He agrees./^";
            mercymod= 222;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(flex == 0)
            global.msg[0]= "* You flex^1.&* Aaron flexes twice as hard.&* ATTACK increases for you two./^";
        if(flex == 1)
            global.msg[0]= "* You flex harder^1.&* Aaron flexes thrice as hard.&* ATTACK increases for you two./^";
        if(flex == 2) {
            global.msg[0]= "* You flex^1.&* Aaron flexes very hard.../";
            mercymod= 400;
            global.flag[143]= 1;
        }
        global.msg[1]= "* He flexes himself out of&  the room!/^";
        flex++;
        if(global.at < 150) global.at+= 15;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        global.monsteratk[myself]++;
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


/*  */
