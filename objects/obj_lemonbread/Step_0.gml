if(global.mnfight == 3) {
    attacked= 0;
    if(mypart1.melting == 3) mypart1.melting= 4;
}
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
        mypart1.pause= 0;
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
        global.turntimer= 150;
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        if(mycommand >= 60) {
            gen= instance_create(x, y, obj_melonbulgen );
            gen.dmg= global.monsteratk[myself];
        } else  {
            gen= instance_create(0, 0, obj_amalgam_biter );
            global.turntimer= 190;
        }
        if(mycommand >= 0) global.msg[0]= "* Smells like sweet lemons.";
        if(mycommand >= 90)
            global.msg[0]= "* You hear the melody of&  pulsating flesh.";
        if(mercymod > 100) global.msg[0]= "* Could this be goodbye!?";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Monster has low HP.";
        attacked= 1;
    }
    if(mercymod == 999999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* You called for help^1.&* But nobody came./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(hum == 0) {
            global.msg[0]= "* You hum a familiar tune^1.&* Lemon Bread\\'s body shakes.../^";
            hum= 1;
        } else 
            global.msg[0]= "* You hum a familiar tune^1.&* Nothing else happened./^";
        if(hum == 1 && hug == 1 && flex == 1) {
            global.msg[0]= "* You hum a familiar tune^1.&* Lemon Bread seems to&  remember something./^";
            mercymod= 99999;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You screamed out^1.&* But nobody came./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(flex == 0) {
            global.msg[0]= "* You flexed your arm^1.&* Lemon Bread\\'s muscle shakes.../^";
            flex= 1;
        } else 
            global.msg[0]= "* You flexed your arm^1.&* Nothing else happened./^";
        if(hum == 1 && hug == 1 && flex == 1) {
            global.msg[0]= "* You flexed your arm^1.&* Lemon Bread seems to&  remember something./^";
            mercymod= 99999;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 2) {
        global.msc= 0;
        if(hug == 0) {
            global.msg[0]= "* You let Lemon Bread be^1.&* Lemon Bread\\'s teeth shake.../^";
            hug= 1;
        } else 
            global.msg[0]= "* You let Lemon Bread be^1.&* Nothing else happened./^";
        if(hum == 1 && hug == 1 && flex == 1) {
            global.msg[0]= "* You let Lemon Bread be^1.&* Lemon Bread seems to&  remember something./^";
            mercymod= 99999;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 5) {
        global.msc= 0;
        global.msg[0]= "* You cried as loud as you&  could^1.&* But nobody came./^";
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
