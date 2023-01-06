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
    alarm[5]= 2;
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
    global.myfight= -1;
    global.mnfight= -1;
    con= 20;
    alarm[4]= 45;
    global.hurtanim[myself]= -1;
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
        if(mycommand >= 50) {
            gen= instance_create(x, y, obj_lavafiregen );
            gen.dmg= global.monsteratk[myself];
        } else 
            gen= instance_create((global.idealborder[0] + global.idealborder[1]) / 2 - 30, global.idealborder[2] + 2, obj_vulkincloudbul );
        if(mycommand >= 0) global.msg[0]= "* Stage lights are blaring.";
        attacked= 1;
    }
    if(mercymod == -999999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    global.msg[0]= "* Stage lights are blaring.";
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* METTATON NEO - 90 ATK 9 DEF&* Dr. Alphys\\'s greatest&  invention./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) script_execute(scr_mercystandard );
if(mercymod == 222 && !instance_exists(OBJ_WRITER ))
    script_execute(scr_mercystandard );
if(con == 21) {
    mypart1.hspeed= -3;
    con= 22;
    alarm[4]= 20;
}
if(con == 23) {
    with(mypart1) event_user(0);
    mypart1.hspeed= 0;
    // obj_dmgwriter
    with(189) instance_destroy();
    global.faceemotion= 6;
    global.typer= 97;
    global.msc= 0;
    if(scr_murderlv() < 15) {
        global.msg[0]= "\\\\E6G...&GUESS SHE SHOULD&HAVE WORKED MORE&ON THE DEFENSES.../";
        global.msg[1]= "\\\\E6.../";
        global.msg[2]= "\\\\E6YOU MAY HAVE&DEFEATED ME...&BUT.../";
        global.msg[3]= "\\\\E4I KNOW.&I CAN TELL FROM&THAT STRIKE, DARLING./";
        global.msg[4]= "\\\\E5YOU WERE HOLDING&BACK./";
        global.msg[5]= "\\\\E6YES, ASGORE WILL&FALL EASILY TO&YOU.../";
        global.msg[6]= "\\\\E5BUT YOU WON\\'T&HARM HUMANITY,&WILL YOU?/";
        global.msg[7]= "\\\\E1YOU AREN\\'T&ABSOLUTELY EVIL./";
        global.msg[8]= "\\\\E5IF YOU WERE&TRYING TO BE,&THEN YOU MESSED UP./";
        global.msg[9]= "\\\\E0AND SO LATE INTO&THE SHOW, TOO./";
        global.msg[10]= "\\\\E0HA... HA.&AT LEAST NOW,&I CAN REST EASY./";
        global.msg[11]= "\\\\E3KNOWING ALPHYS AND&THE HUMANS WILL&LIVE ON...!/%%";
    } else  {
        global.msg[0]= "\\\\E6GH.../";
        global.msg[1]= "\\\\E5GUESS YOU DON\\'T&WANNA JOIN MY&FAN CLUB...?/%%";
    }
    con= 24;
    blc= scr_blcon_x(x + 180, y + 20);
}
if(con == 24 && !instance_exists(OBJ_WRITER )) {
    explode= caster_load("music/explosion.ogg");
    mypart1.fadewhite= 1;
    con= 25;
    alarm[4]= 2;
}
if(con == 26) {
    global.flag[8]= 1;
    caster_play(explode, 1, 1);
    if(scr_murderlv() >= 15) {
        if(global.xp <= 50000) global.xp= 50000;
        global.kills++;
    } else  global.xp+= 10000;
    scr_levelup();
    global.flag[425]= 1;
    con= 27;
}

/* */
/*  */
