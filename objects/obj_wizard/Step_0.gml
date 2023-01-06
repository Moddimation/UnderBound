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
        global.turntimer= 160;
        global.firingrate= 7;
        if(pop == 3) global.firingrate*= 2.4;
        if(pop == 2) global.firingrate*= 1.7;
        if(stare1a == 1) mycommand= random(50) + 50;
        if(stare2a == 1) mycommand= random(49);
        if(mycommand < 50) {
            orb= instance_create(100, 100, obj_wizardorb_wall );
            if(stare2 > 0) {
                orb.dmg-= stare2 * 2;
                orb.alt= 1;
            }
        } else  {
            orb= instance_create(100, 100, obj_wizardorb_chaser );
            if(pop == 2) orb.zap= 1;
            orb.king= 1;
            orb.dirr= random(360);
            if(stare1 > 0 && pop == 1) {
                orb.dirr= random(100);
                nowdirr= orb.dirr;
                orb2= instance_create(100, 100, obj_wizardorb_chaser );
                orb2.dirr= nowdirr + 40 + random(80);
                orb3= instance_create(100, 100, obj_wizardorb_chaser );
                orb3.dirr= orb2.dirr + 40 + random(70);
                obj_wizardorb_chaser.dmg-= stare1 * 2;
                obj_wizardorb_chaser.zap= 0;
            }
        }
        stare1a= 0;
        stare2a= 0;
        if(confuse > 0 && obj_heart.sprite_index != 35) {
            obj_heart.confuse= 1;
            obj_heart.sprite_index= spr_confuseheart ;
            obj_heart.x+= 8;
            obj_heart.y+= 8;
        }
        if(mycommand >= 0)
            global.msg[0]= "* Madjick does a mysterious jig.";
        if(mycommand >= 25)
            global.msg[0]= "* Madjick flaunts its orbs&  in a menacing manner.";
        if(mycommand >= 50)
            global.msg[0]= "* Madjick whispers arcane&  swear words.";
        if(mycommand >= 75)
            global.msg[0]= "* Madjick peers at you with&  strange eyes.";
        if(mycommand >= 90) global.msg[0]= "* Smells like magic.";
        if(mercymod == 140)
            global.msg[0]= "* Madjick is distracted by its&  own voice.";
        if(confuse > 0) global.msg[0]= "* You still feel confused.";
        if(confuse > 0 && mercymod == 140)
            global.msg[0]= "* Madjick is distracted.&* You still feel confused.";
        if(stare1 > 0 && stare2 > 0)
            global.msg[0]= "* Madjick\\'s orbs are&  incapacitated.";
        if(mercymod > 280)
            global.msg[0]= "* Madjick believes you are&  a fellow wizard.";
        attacked= 1;
    }
    if(criticize > 0 && pop == 1) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* MADJICK - ATK 29 DEF 24 &* This magical mercenary only&  says magic words./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(confuse > 0 && clear == 0) {
            global.msg[0]= "* You can\\'t get a word&  in edgewise^1.&* Its words dizzy you.../^";
            obj_heart.confuse= 1;
            confuse= 1;
            obj_heart.sprite_index= spr_confuseheart ;
        }
        if(confuse == 0 && clear == 0) {
            global.msg[0]= "* Madjick interrupts you by&  chattering to it/";
            global.msg[1]= "* Its gibberish dizzies you...&* Your DEFENSE drops by 1./^";
            confuse++;
            obj_heart.confuse= 1;
            obj_heart.sprite_index= spr_confuseheart ;
            global.df--;
        }
        if(clear > 0)
            global.msg[0]= "* Magick interrupts you by&  chattering to itself^1.&* It seems satisfied./^";
        mercymod= 190;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.typer= 1;
        global.myfight= 3;
        global.bmenuno= 6;
        global.msg[0]= "* Where to stare?             &                            &   Chaser Orb      Corner Orb\\\\C";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        clear= 1;
        if(confuse == 0) {
            global.msg[0]= "* You ignore Madjick and think&  of pollen and sunshine^1.&* Your DEFENSE increased by 1./^";
            global.df+= 5;
        }
        if(confuse > 0) {
            global.msg[0]= "* You think of pollen and&  sunshine./";
            global.msg[1]= "* Your confusion abates^1.&* Your DEFENSE increased by 2./^";
            global.df+= 10;
            obj_heart.confuse= 0;
            confuse= 0;
        }
        // OBJ_WRITER
        with(782) halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 6) {
        // OBJ_WRITER
        with(782) instance_destroy();
        stare1++;
        stare1a= 1;
        global.msc= 0;
        global.typer= 1;
        global.msg[0]= "* The unrelenting " + chr(ord("\"")) + "Chaser Orb" + chr(ord("\"")) + "&  was weakened by your glare./^";
        if(stare1 > 1)
            global.msg[0]= "* The destitute " + chr(ord("\"")) + "Chaser Orb" + chr(ord("\"")) + " was&  weakened further by your glare./^";
        if(mercymod < 200) mercymod+= 100;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
    }
    if(whatiheard == 7) {
        // OBJ_WRITER
        with(782) instance_destroy();
        stare2++;
        stare2a= 1;
        global.msc= 0;
        global.typer= 1;
        global.msg[0]= "* The intimidating " + chr(ord("\"")) + "Corner Orb" + chr(ord("\"")) + "&  was weakened by your glare./^";
        if(stare2 > 1)
            global.msg[0]= "* The homely " + chr(ord("\"")) + "Corner Orb" + chr(ord("\"")) + " was&  weakened further by your glare./^";
        if(mercymod < 200) mercymod+= 100;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(global.mnfight == 0 && global.myfight == 0) {
    obj_heart.sprite_index= spr_heart ;
    obj_heart.image_angle= 0;
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
