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
        global.hurtanim[myself]= 0;
        mypart1.hurt= 0;
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
        pop= scr_monstersum();
        global.turntimer= 160;
        global.firingrate= 20;
        if(pop == 3) global.firingrate*= 2.4;
        if(pop == 2) global.firingrate*= 1.7;
        num= 0;
        if(mycommand >= 0 && mycommand <= 50) num= 1;
        if(whatiheard == 1) num= 1;
        if(num == 1) {
            global.turntimer= 160;
            gen= instance_create(x, y, obj_vertplanegen );
            gen.dmg= global.monsteratk[myself];
            if(whatiheard == 1) gen.green= 1;
        } else  {
            global.firingrate= 30;
            if(pop == 3) global.firingrate*= 2.2;
            if(pop == 2) global.firingrate*= 1.5;
            gen= instance_create(x, y, obj_incendiarygen );
            gen.dmg= global.monsteratk[myself];
            gen.bullettype= 0;
        }
        gen.myself= myself;
        if(mycommand >= 0)
            global.msg[0]= "* Tsunderplane looks over^1,&  then turns up its nose.";
        if(mycommand >= 25)
            global.msg[0]= "* Tsunderplane shakes its&  nose dimissively at you.";
        if(mycommand >= 50)
            global.msg[0]= "* Tsunderplane " + chr(ord("\"")) + "accidentally" + chr(ord("\"")) + "&  bumps you with its wing.";
        if(mycommand >= 75)
            global.msg[0]= "* Tsunderplane gives you a&  condescending barrel roll.";
        if(mycommand >= 90)
            global.msg[0]= "* Smells like an airport&  perfume counter.";
        if(mercymod > 60)
            global.msg[0]= "* Tsunderplane is looking away&  shyly.";
        if(global.monsterhp[myself] < 30)
            global.msg[0]= "* Tsunderplane\\'s body is smoking.";
        attacked= 1;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* TSUNDERPLANE - ATK 25 DEF 26&* Seems mean^1, but does&  it secretly like you?/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You tell Tsunderplane it has&  an impressive wingspan./^";
        g= floor(random(5));
        if(g == 0)
            global.msg[0]= "* You tell Tsunderplane it has&  an impressive wingspan./^";
        if(g == 1)
            global.msg[0]= "* You tell Tsunderplane it has&  nice turbines./^";
        if(g == 2)
            global.msg[0]= "* You tell Tsunderplane it has&  a powerful rudder./^";
        if(g == 3)
            global.msg[0]= "* You tell Tsunderplane that&  you like its taste in&  movies and books./^";
        if(g == 4)
            global.msg[0]= "* You tell Tsunderplane that&  it has cute winglets./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You get close to Tsunderplane^1.&* But not too close./^";
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
