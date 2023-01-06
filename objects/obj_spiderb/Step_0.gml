if(itemuse == 1 && !instance_exists(OBJ_WRITER )) {
    con= 50;
    global.mnfight= 98;
    global.myfight= 98;
    itemuse= 2;
}
if(global.mnfight == 3) {
    attacked= 0;
    if(instance_exists(obj_purpleheart )) {
        // obj_purpleheart
        with(363) instance_destroy();
    }
    if(purpletime == 1 && !instance_exists(obj_signspider )) {
        o= instance_create(650, 230, obj_signspider );
        o.signno= turnamt;
    }
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
if(blconactive == 1 && !instance_exists(OBJ_WRITER )) {
    blconactive= 0;
    event_user(1);
}
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
        if(con < 95) event_user(4);
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
        if(con > 0 && turnamt < 20) {
            global.turntimer= 180;
            global.firingrate= 10;
            gen= instance_create(x, y, obj_spiderbulletgen );
            idealdmg= global.monsteratk[myself] - atkdown;
            gen.dmg= idealdmg;
            gen.type= turnamt;
            gen.alarm[0]= -1;
            gen.alarm[1]= -1;
            gen.alarm[2]= 10;
            with(gen) event_user(3);
            if(turnamt == 4 || turnamt == 9 || turnamt == 15) {
                global.turntimer= 660;
                if(turnamt == 4) global.turntimer= 620;
                if(turnamt == 15) global.turntimer= 700;
                gege= instance_create(0, 0, obj_fakeborderdraw );
                gege.pattern= 1;
                gege.dmg= idealdmg;
                gen.alarm[2]= 30;
            }
            turnamt++;
            if(turnamt > 99) {
                gen.alarm[0]= 60;
                global.turntimer= 360;
                global.border= 22;
                obj_purpleheart.ttype= 3;
                if(turnamt == 15) obj_purpleheart.yadd2= 3;
                if(turnamt == 16) obj_purpleheart.yadd2= 4;
            }
        } else  {
            if(turnamt < 20) {
                with(mypart1) event_user(0);
                con= 1;
            } else  {
                global.turntimer= -1;
                global.mnfight= 3;
                global.myfight= -1;
            }
        }
        if(mycommand >= 0)
            global.msg[0]= "* Muffet pours you a cup of&  spiders.";
        if(mycommand >= 25)
            global.msg[0]= "* All the spiders clap along to&  the music.";
        if(mycommand >= 50)
            global.msg[0]= "* Muffet does a synchronized&  dance with the other spiders.";
        if(mycommand >= 75)
            global.msg[0]= "* Muffet tidies up the web&  around you.";
        if(mycommand >= 90)
            global.msg[0]= "* Smells like freshly baked&  cobwebs.";
        attacked= 1;
    }
    if(criticize > 0 && pop == 1) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    atkdown= 0;
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* MUFFET - ATK 38.8 DEF 18.8&* If she invites you to her&  parlor^1, excuse your/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You struggle to escape the web^1.&* Nothing happened./^";
        if(struggle == 0)
            global.msg[0]= "* You struggle to escape the web^1.&* Muffet covers her mouth&  and giggles at you./^";
        if(struggle == 1)
            global.msg[0]= "* You struggle to escape the web^1.&* Muffet laughs and claps&  her hands./^";
        if(struggle == 2) {
            global.msg[0]= "* You struggle to escape the web./";
            global.msg[1]= "* Muffet is so amused by your&  antics that she gives you a&  discount!/^";
            if(global.flag[382] <= global.gold)
                global.flag[382]= ceil(global.flag[382] / 2);
            else  global.flag[382]= global.gold;
            if(global.flag[382] <= 1) global.flag[382]= 1;
        }
        if(con > 50)
            global.msg[0]= "* You struggle to escape the web^1.&* Nothing happened./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        struggle++;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(con < 50) {
            if(global.gold >= global.flag[382]) {
                global.msg[0]= "* You pay " + string(global.flag[382]) + "G^1.&* Muffet reduces her ATTACK&  for this turn!/^";
                global.gold-= global.flag[382];
                global.flag[383]+= global.flag[382];
                bribes++;
                if(bribes == 1) global.flag[382]+= 30;
                if(bribes == 2) global.flag[382]+= 40;
                if(bribes == 3) global.flag[382]+= 70;
                if(bribes == 4) global.flag[382]+= 50;
                if(bribes > 4) global.flag[382]+= 300;
                atkdown= 2;
            } else  {
                global.msg[0]= "* You empty your pockets^1, but you&  don\\'t have enough money.&* Muffet lowers the price./^";
                if(bribes == 0) global.flag[382]-= 5;
                if(bribes == 1) global.flag[382]-= 5;
                if(bribes == 2) global.flag[382]-= 5;
                if(bribes > 2) global.flag[382]-= 5;
                global.flag[382]= ceil(global.flag[382] / 10);
                if(global.flag[382] <= 1) global.flag[382]= 1;
            }
            if(bribes > 0 && global.gold == 0)
                global.msg[0]= "* You\\'re out of money^1.&* Muffet shakes her head./^";
            if(global.gold == 0 && bribes == 0) {
                global.msg[0]= "* You empty your pockets..^1.&* But you don\\'t have any&  money at all!/";
                global.msg[1]= "* Muffet takes pity on you&  and reduces her ATTACK for&  this turn./^";
                global.flag[382]= 10;
                bribes= 1;
                atkdown= 2;
            }
        } else  global.msg[0]= "* Muffet refuses your money./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) event_user(5);
}
if(con == 2) {
    purpletime= 1;
    global.msg[0]= "... I think purple is&a better look on&you! Ahuhuhu~/%%";
    event_user(3);
    con= 3;
}
if(con == 3) global.turntimer= 10;
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* You\\'re trapped in a strange&  purple web!";
    global.myfight= -1;
    global.mnfight= 3;
    global.turntimer= 20;
    con= 4;
}
if(con == 50) {
    global.msg[0]= "You\\'re still alive^1?&Ahuhuhu~/";
    global.msg[1]= "Oh, my pet~&Looks like it\\'s&time for dessert~/%%";
    if(itemuse > 0) {
        global.msg[0]= "Huh^1?&Where did you get&that...?/";
        global.msg[1]= "Did you steal it?/";
        global.msg[2]= "Oh^1, my pet^1~&It\\'s time to show&them what we do&with thieves~/%%";
    }
    event_user(3);
    con= 51;
}
if(con == 51 && !instance_exists(OBJ_WRITER )) {
    instance_create(720, 230, obj_telegramspider );
    con= 52;
    alarm[4]= 30;
}
if(con == 53) {
    global.msg[0]= "Huh?&A telegram from&the spiders in&the RUINS?/";
    global.msg[1]= "What?&They\\'re saying&that they saw&you, and.../";
    global.msg[2]= "... that this is&an error message!?/";
    if(global.flag[59] == 0) {
        global.msg[2]= "... even if you&are stingy, you&never hurt a&single spider!/";
        if(global.kills > 0)
            global.msg[2]= "... even if you&hurt others, you&never hurt a&single spider!/";
    }
    if(global.flag[59] > 0)
        global.msg[2]= "... you helped donate&to their cause!/";
    if(global.flag[59] > 20)
        global.msg[2]= "... you were&really passionate&about spiders!/";
    if(global.flag[59] > 50)
        global.msg[2]= "... you\\'re a total&spider fanatic!/";
    if(murder == 1) {
        global.msg[1]= "They say even if&you are a hyper-&violent murderer.../";
        global.msg[2]= "You never laid a&single finger on a&spider!/";
    }
    global.msg[3]= "Oh my, this has&all been a big&misunderstanding~/";
    global.msg[4]= "I thought you&were someone that&hated spiders~/";
    global.msg[5]= "The person who&asked for that SOUL.../";
    global.msg[6]= "They must have&meant a DIFFERENT&human in a&striped shirt~/";
    if(murder == 1) {
        global.msg[5]= "The person who&warned me about&you.../";
        global.msg[6]= "They really had&no idea what they&were talking about~/";
    }
    global.msg[7]= "Sorry for all the&trouble~&Ahuhuhu~/";
    global.msg[8]= "I\\'ll make it up&to you~/";
    global.msg[9]= "You can come back&here any time...&And, for no charge&at all.../";
    global.msg[10]= "I\\'ll wrap you&up and let you&play with my pet&again!/";
    global.msg[11]= "Ahuhuhuhuhuhu~&Just kidding~/";
    global.msg[12]= "I\\'ll SPARE you&now~/%%";
    talktime= 1;
    event_user(3);
    con= 54;
}
if(con == 54 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Muffet is sparing you.";
    // obj_telegramspider
    with(358) con= 2;
    turnamt= 20;
    global.myfight= -1;
    global.mnfight= 3;
    global.turntimer= -1;
    mercymod= 9999;
    global.monsterdef[myself]= -9999;
    con= 55;
}
if(con == 96) {
    instance_create(660, 310, obj_sadspider );
    con= 97;
}
if(con == 97 && !instance_exists(obj_sadspider )) {
    global.monster[myself]= 0;
    instance_destroy();
}
if(keyboard_multicheck_pressed(1) && instance_exists(blconwd)) {
    if(blconwd.halt == 0 && global.typer != 10)
        blconwd.stringpos= string_length(blconwd.originalstring);
    keyboard_clear(16);
}
if(global.debug == 1) {
    if(keyboard_check_pressed(68)) turnamt++;
    if(keyboard_check_pressed(65) && turnamt > 0)
        turnamt--;
}

/* */
/*  */
