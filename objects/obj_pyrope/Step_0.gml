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
        global.turntimer= 180;
        global.firingrate= 9;
        if(pop == 3) global.firingrate*= 2.4;
        if(pop == 2) global.firingrate*= 1.7;
        num= 0;
        if(mycommand < 50 && pop == 1) {
            global.turntimer= 180;
            gen= instance_create(x, y, obj_ropebulgen );
            gen.dmg= global.monsteratk[myself];
        } else  {
            global.firingrate= 40;
            if(pop == 3) global.firingrate*= 2.6;
            if(pop == 2) global.firingrate*= 1.1;
            gen= instance_create(0, 0, obj_bombgen );
            gen.dmg= global.monsteratk[myself];
        }
        if(mycommand >= 0)
            global.msg[0]= "* Pyrope is protected by its&  winsome smile.";
        if(mycommand >= 25)
            global.msg[0]= "* Pyrope is pretending to&  pull the fire alarm.";
        if(mycommand >= 50)
            global.msg[0]= "* Pyrope is chuckling through&  its teeth.";
        if(mycommand >= 75)
            global.msg[0]= "* Pyrope is pretending to be&  a candle.";
        if(mycommand >= 90) global.msg[0]= "* Smells like rope burn.";
        if(heat == 1) global.msg[0]= "* Pyrope wants more heat.";
        if(heat > 1) global.msg[0]= "* The room is sweltering!";
        attacked= 1;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* PYROPE - ATK 29 DEF 14&* This mischievous monster&  is never warm enough./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        if(instance_exists(obj_heatwaver )) {
            // obj_heatwaver
            with(341) instance_destroy();
        }
        global.msc= 0;
        global.msg[0]= "* You blow on Pyrope.&* Its flames die down.&* Pyrope\\'s ATTACK dropped!/^";
        // obj_pyrope
        with(343) {
            if(global.monsteratk[myself] > 2)
                global.monsteratk[myself]-= 2;
            heat= 0;
            mercymod= -200;
            whatiheard= 3;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        // obj_pyrope
        with(343) whatiheard= 1;
        // obj_pyrope
        with(343) mercymod+= 30;
        // obj_pyrope
        with(343) heat++;
        if(heat > 1) {
            // obj_pyrope
            with(343) mercymod= 900;
        }
        global.msg[0]= "* You crank up the thermostat.&* Pyrope begins to get&  excited./^";
        if(heat == 2)
            global.msg[0]= "* You crank up the thermostat.&* It\\'s super hot!&* Pyrope looks satisfied./^";
        if(heat > 2)
            global.msg[0]= "* You crank up the thermostat.&* It\\'s SOOOO hot!/^";
        if(heat == 1 && !instance_exists(obj_heatwaver ))
            instance_create(0, 0, obj_heatwaver );
        if(heat > 1 && instance_exists(obj_heatwaver ) && obj_heatwaver.cfactor < 30)
            obj_heatwaver.cfactor+= 2;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You invite Pyrope to hang&  out./^";
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
