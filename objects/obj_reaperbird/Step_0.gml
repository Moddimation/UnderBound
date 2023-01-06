if(global.mnfight == 3) {
    attacked= 0;
    mypart1.stretchup= 0;
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
        global.turntimer= 200;
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        if(turns > 0) {
            if(turns == 1) {
                gen= instance_create(0, 0, obj_butterflyhead );
                gen.dmg= global.monsteratk[myself];
                turns= 2;
            } else  {
                turns= 1;
                gen= instance_create(0, 0, obj_strangeman_headloss );
                gen.dmg= global.monsteratk[myself];
            }
        } else  {
            global.turntimer= 250;
            gen= instance_create(0, 0, obj_strangeman_intro );
            gen.dmg= global.monsteratk[myself];
            turns= 1;
        }
        if(mycommand >= 0) global.msg[0]= "* ,";
        if(mycommand >= 25) global.msg[0]= "* ,";
        if(mycommand >= 50) global.msg[0]= "* ,";
        if(mycommand >= 75) global.msg[0]= "* ,";
        if(mycommand >= 98) global.msg[0]= "* Smells like a ,";
        if(mercymod > 100) global.msg[0]= "* Reaper Bird seems placated.";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Monster has low HP.";
        attacked= 1;
    }
    if(mercymod == 99999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        if(mercymod < 100) {
            global.msc= 0;
            OBJ_WRITER.halt= 3;
            global.msg[0]= "* ASTIGMATISM " + string(global.monsteratk[myself]) + " ATK " + string(global.monsterdef[myself]) + " DEF&* This relentless bully ALWAYS&  gets its way.";
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
            global.msg[0]= "* WHIMSALOT " + string(global.monsteratk[myself]) + " ATK " + string(global.monsterdef[myself]) + " DEF&* It finally stopped worrying.";
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
            global.msg[0]= "* FINAL FROGGIT " + string(global.monsteratk[myself]) + " ATK " + string(global.monsterdef[myself]) + " DEF&* Its future looks brighter and&  brighter         ./^";
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
            whatiheard= 9;
        } else  {
            global.msc= 0;
            OBJ_WRITER.halt= 3;
            global.msg[0]= "* REAPER BIRD - ATK ?? DEF ??&* This relentless future finally&  looks brighter and brighter./^";
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
        }
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(pickon == 0)
            global.msg[0]= "* You pick on , ^1.&* It seemed effective./^";
        if(pickon == 1)
            global.msg[0]= "* But^1, it was already&  picked on./^";
        pickon= 1;
        if(pray == 1 && pickon == 1 && mystify == 1) {
            mercymod= 999999;
            global.monstername[myself]= "Reaper Bird";
            global.msg[0]= "* You pick on Reaper Bird^1.&* Reaper Bird seems to&  remember something./^";
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(mystify == 0)
            global.msg[0]= "* You did something mysterious.&* , recognizes it has more to&  learn from this world./^";
        if(mystify == 1)
            global.msg[0]= "* But^1, it was already&  mystified./^";
        mystify= 1;
        if(pray == 1 && pickon == 1 && mystify == 1) {
            mercymod= 999999;
            global.monstername[myself]= "Reaper Bird";
            global.msg[0]= "* You did something mysterious^1.&* Reaper Bird seems to&  remember something./^";
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You wash your hands^1.&* Nothing happened./^";
        if(xclean == 1)
            global.msg[0]= "* Your hands are clean enough&  to eat!/^";
        OBJ_WRITER.halt= 3;
        xclean= 1;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 2) {
        global.msc= 0;
        global.msg[0]= "* You hum a familiar tune^1.&* But no one heard you./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 5) {
        global.msc= 0;
        if(pray == 0)
            global.msg[0]= "* You kneel and pray for safety^1.&* , remembers its conscience./^";
        if(pray == 1)
            global.msg[0]= "* But , already remembered its&  conscience./^";
        pray= 1;
        if(pray == 1 && pickon == 1 && mystify == 1) {
            mercymod= 999999;
            global.monstername[myself]= "Reaper Bird";
            global.msg[0]= "* You kneel and pray for safety^1.&* Reaper Bird seems to&  remember something./^";
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
