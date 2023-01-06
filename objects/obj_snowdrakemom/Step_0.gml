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
        global.turntimer= 100;
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        gen= instance_create(x, y, obj_clawfailuregen );
        if(mycommand >= 0) global.msg[0]= "* It\\'s so cold.";
        if(mycommand >= 25) global.msg[0]= "* It\\'s so cold.";
        if(mycommand >= 50) global.msg[0]= "* It\\'s so cold.";
        if(mycommand >= 75) global.msg[0]= "* It\\'s so cold.";
        if(mycommand >= 90) global.msg[0]= "* Smells like salty slush.";
        if(mercymod > 100) global.msg[0]= "* Seems calmed down.";
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
        global.msg[0]= "* AMALGAMATE - ATK -12 DEF -5&* Seems like it\\'s losing it/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You laugh^1, and keep laughing^1.&* It\\'s SO funny^1, you can\\'t stop^1.&* Tears run down your face./";
        global.msg[1]= "* ... what^1?&* You didn\\'t do that?/^";
        if(xlaugh == 1) global.msg[0]= "* But it\\'s not funny./^";
        xlaugh= 1;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You said something like..^1.&* " + chr(ord("\"")) + "You look horrible.^1" + chr(ord("\"")) + "&* " + chr(ord("\"")) + "Why are you even alive?^1" + chr(ord("\"")) + "/";
        global.msg[1]= "* ... what^1?&* You didn\\'t say that?/^";
        if(xheckle == 1) global.msg[0]= "* You call this a performance?/^";
        xheckle= 1;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(joke == 0)
            global.msg[0]= "* You told a bad pun about&  snow^1.&* Her expression starts to shift./^";
        if(joke == 1)
            global.msg[0]= "* You told a bad pun about&  snow^1.&* Her expression changes more./^";
        if(joke == 2) {
            global.msg[0]= "* You told a bad pun about&  snow^1.&* She\\'s completely calmed down./^";
            mercymod= 22222;
        }
        joke++;
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
if(mercymod == 22222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(sinepitcher == 1) {
    siner++;
    caster_set_pitch(global.batmusic, pitch + sin(siner / 2) * 0.01);
}

/* */
/*  */
