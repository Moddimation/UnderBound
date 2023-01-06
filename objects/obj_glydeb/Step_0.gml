if(global.mnfight == 3) {
    attacked= 0;
    with(mypart1) {
        sh_timer= 0;
        sh= 0;
        alarm[1]= -1;
        attackmode= 0;
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
        global.turntimer= 180;
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        if(mycommand < 40) {
            with(mypart1) {
                sh= 1;
                attackmode= 1;
                sh_speed= 1;
                diff= 5;
            }
        }
        if(mycommand >= 40 && mycommand < 70) {
            with(mypart1) {
                sh= 1;
                attackmode= 1;
                sh_speed= 2;
                diff= 3;
            }
        }
        if(mycommand > 70) {
            with(mypart1) {
                attackmode= 1;
                alarm[1]= 5;
            }
        }
        if(mycommand >= 0) global.msg[0]= "* Glyde does fancy flips.";
        if(mycommand >= 25)
            global.msg[0]= "* Glyde is giving itself a&  high five^1.&* ... somehow.";
        if(mycommand >= 50)
            global.msg[0]= "* Glyde sees its reflection &  and gets jealous.";
        if(mycommand >= 75)
            global.msg[0]= "* Glyde is thinking of new&  slang for the word " + chr(ord("\"")) + "cool." + chr(ord("\"")) + "&* Like " + chr(ord("\"")) + "freakadacious." + chr(ord("\"")) + "";
        if(mycommand >= 90)
            global.msg[0]= "* An arrogant-smelling wind&  blows through.";
        if(nothing == 2)
            global.msg[0]= "* Glyde is doing tons of flips&  to get your attention.";
        if(mercymod > 100) global.msg[0]= "* Glyde seems satisfied.";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Glyde is dying^1, but in a&  cool way.";
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
        global.msg[0]= "* GLYDE - ATK HIGH DEF HIGH&* Refuses to give more details&  about its statistics./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(applaud == 0) {
            global.msg[0]= "* You clap really sloppily^1.&* Glyde sucks up your praise&  like a vacuum cleaner./^";
            applaud= 1;
        } else  {
            global.msg[0]= "* You clap like a gorilla^1.&* Glyde is becoming addicted to&  your praise./^";
            if(applaud == 1) applaud= 2;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You boo..^1. but haters&  only make Glyde stronger^1.&* Glyde ATTACK UP+DEFENSE DOWN./^";
        global.monsteratk[myself]+= 2;
        global.monsterdef[myself]-= 10;
        if(nothing == 2) {
            global.msg[0]= "* You boo loudly^1.&* Glyde leaves to look elsewhere&  for praise./^";
            nothing= 3;
            mercymod= 222;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        boo++;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You do nothing^1.&* No effect./^";
        if(applaud >= 2) {
            if(nothing == 2) {
                global.msg[0]= "* You do nothing^1.&* Glyde leaves to look elsewhere&  for praise./^";
                nothing= 3;
                mercymod= 222;
            }
            if(nothing == 1) {
                global.msg[0]= "* You do nothing^1.&* Glyde looks desperate for&  attention./^";
                nothing= 2;
            }
            if(nothing == 0) {
                global.msg[0]= "* You do nothing^1.&* Glyde looks disappointed you&  aren\\'t paying attention./^";
                nothing= 1;
            }
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
if(global.turntimer < 2 && global.mnfight == 2) global.mnfight= 3;


/*  */
