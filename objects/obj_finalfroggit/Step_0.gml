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
        global.turntimer= 150;
        global.firingrate= 10;
        if(instance_exists(obj_astigmatism ))
            global.firingrate+= 5;
        if(pop == 3) global.firingrate*= 2.8;
        if(pop == 2) global.firingrate*= 1.8;
        if(mycommand >= 50 && pop == 1) {
            gen= instance_create(x, y, obj_frogbullet_gen );
            gen.dmg= global.monsteratk[myself];
        } else  {
            gen= instance_create(x, y, obj_megaflybulletgen );
            gen.dmg= global.monsteratk[myself];
        }
        if(mycommand >= 0)
            global.msg[0]= "* Final Froggit knows exactly&  why it\\'s here.";
        if(mycommand >= 30)
            global.msg[0]= "* Final Froggit jumps ominously&  up and down.";
        if(mycommand >= 60)
            global.msg[0]= "* The battlefield is filled&  with the smell of mustard&  seed.";
        if(mycommand >= 80)
            global.msg[0]= "* You are intimidated by&  Final Froggit\\'s strength^4.&* Truly.";
        if(mercymod > 100)
            global.msg[0]= "* Final Froggit seems reluctant&  to fight you.";
        if(global.monsterhp[myself] < global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Final Froggit stands its&  ground.";
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
        global.msg[0]= "* FINAL FROGGIT - ATK 30 DEF 24&* Its future looks brighter and&  brighter./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You compliment Final Froggit^1.&* It understood you perfectly^1.&* Its ATTACK dropped./^";
        global.monsteratk[myself]-= 2;
        mercymod+= 40;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You threaten Final Froggit^1.&* It understood you perfectly^1.&* Its DEFENSE dropped./^";
        global.monsterdef[myself]-= 20;
        mercymod+= 40;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(mercymod < 200) {
            global.msg[0]= "* You did something mysterious./";
            global.msg[1]= "* Final Froggit recognizes it&  has more to learn from&  this world./^";
            mercymod= 200;
        } else 
            global.msg[0]= "* You did something mysterious^1.&* But nothing happened./^";
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
