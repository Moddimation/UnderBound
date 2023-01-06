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
    if(turns >= 19 && global.ratings >= 10000) qualify= 1;
    if(turns < 19 && global.ratings >= 12000) qualify= 1;
    if(qualify == 0) alarm[6]= 1;
    else  con= 90;
    talked= 1;
    global.heard= 0;
}
if(talked == 2 && !instance_exists(OBJ_WRITER ))
    event_user(1);
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
        if(killed == 0) {
            global.mnfight= -1;
            global.myfight= -1;
            killed= 1;
            con= 50;
        }
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
        global.turntimer= 10;
        if(turns >= 1) {
            global.attacktype= 29 + turns;
            if(global.attacktype == 54) {
                turns-= 5;
                global.attacktype= 49;
            }
            if(global.attacktype >= 50) {
                if(global.monsterdef[myself] >= -10)
                    global.monsterdef[myself]= -10;
                global.monsterdef[myself]-= 5;
                if(global.attacktype == 50) global.attacktype= 38;
                if(global.attacktype == 51) global.attacktype= 54;
                if(global.attacktype == 52) global.attacktype= 56;
            }
            instance_create(0, 0, obj_mettattackgen );
        }
        if(mycommand >= 0) global.msg[0]= "* Mettaton.";
        if(mycommand >= 25) global.msg[0]= "* Mettaton.";
        if(mycommand >= 50) global.msg[0]= "* Mettaton.";
        if(mycommand >= 75) global.msg[0]= "* Mettaton.";
        if(mycommand >= 90) global.msg[0]= "* Smells like Mettaton.";
        if(mercymod > 100) global.msg[0]= "* Monster seems satisfied.";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Mettaton has low HP.";
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
        global.msg[0]= "* METTATON EX - ATK 47 DEF 47&* His weak point is his&  heart-shaped core./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You say you aren\\'t going&  to get hit at ALL./";
        global.msg[1]= "* Ratings gradually increase&  during Mettaton\\'s turn./^";
        // obj_ratingsmaster
        with(402) boastmode= 1;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You posed dramatically^1.&* The audience nods./^";
        if(global.hp <= global.maxhp / 2)
            global.msg[0]= "* Despite being hurt^1, you&  posed dramatically^1.&* The audience applauds./^";
        if(global.hp < global.maxhp / 4)
            global.msg[0]= "* Despite being wounded^1, you&  posed dramatically^1.&* The audience gasps./^";
        if(global.hp <= 3)
            global.msg[0]= "* With the last of your power^1,&  you pose dramatically^1.&* The audience screams./^";
        // obj_ratingsmaster
        with(402) {
            curtype= 11;
            event_user(0);
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You turn and scoff at the&  audience./";
        global.msg[1]= "* They\\'re rooting for your&  destruction this turn!/^";
        // obj_ratingsmaster
        with(402) heel= 1;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(con == 50) {
    // obj_ratingsmaster
    with(402) active= 0;
    // obj_dmgwriter
    with(189) instance_destroy();
    caster_free(-3);
    // OBJ_WRITER
    with(782) instance_destroy();
    with(mypart1) {
        hurt= 2;
        sineron= 0;
        pause= 3;
        dsf= 0.5;
    }
    global.faceemotion= 0;
    con= 51;
    alarm[4]= 30;
}
if(con == 52) {
    global.typer= 53;
    global.msc= 0;
    global.msg[0]= "H.. ha.../";
    global.msg[1]= "So I was wrong./";
    global.msg[2]= "Darling.../";
    global.msg[3]= "\\\\E1You really are&strong enough to&get past ASGORE./";
    global.msg[4]= "\\\\E0Well then.../";
    global.msg[5]= "It\\'s time for&you to go./";
    global.msg[6]= "\\\\E0Don\\'t worry about&me./";
    global.msg[7]= "I might seem like&I\\'m dying now^1,&but.../";
    global.msg[8]= "\\\\E1Dr. Alphys can&always repair me./";
    global.msg[9]= "\\\\E0And... besides.../";
    global.msg[10]= "Even if I\\'m not&cut out to be&a star.../";
    global.msg[11]= "\\\\E1I still got to&perform for a&human, didn\\'t I?/";
    global.msg[12]= "So, thank you,&darling.../%%";
    con= 53;
    scr_blcon_x(x + 180, y + 20);
}
if(con == 53 && !instance_exists(OBJ_WRITER )) {
    con= 54;
    alarm[4]= 45;
}
if(con == 54) {
    with(mypart1) dsf-= 0.012;
}
if(con == 55 && !instance_exists(OBJ_WRITER )) {
    global.typer= 54;
    with(mypart1) dsf= 0;
    global.msg[0]= "\\\\E1You\\'ve been a&great audience!/%%";
    scr_blcon_x(x + 180, y + 20);
    con= 56;
}
if(con == 56 && !instance_exists(OBJ_WRITER )) {
    explode= caster_load("music/explosion.ogg");
    mypart1.fadewhite= 1;
    con= 57;
    alarm[4]= 2;
}
if(con == 58) {
    caster_play(explode, 1, 1);
    global.xp+= 800;
    scr_levelup();
    global.kills++;
    global.flag[425]= 1;
    con= 59;
}
if(con == 90) {
    // obj_dmgwriter
    with(189) instance_destroy();
    global.faceemotion= 0;
    mypart1.endface= 1;
    global.typer= 51;
    global.msc= 0;
    global.msg[0]= "OOH^1, LOOK AT&THESE RATINGS!!!/";
    global.msg[1]= "\\\\E6THIS IS THE MOST&VIEWERS I\\'VE EVER&HAD!!!/";
    global.msg[2]= "WE\\'VE REACHED THE&VIEWER CALL-IN&MILESTONE!/";
    global.msg[3]= "\\\\E8ONE LUCKY VIEWER&WILL HAVE THE CHANCE&TO TALK TO ME.../";
    global.msg[4]= "\\\\E7... BEFORE I LEAVE&THE UNDERGROUND&FOREVER!!/";
    global.msg[5]= "\\\\E9LET\\'S SEE WHO&CALLS IN FIRST!/%%";
    con= 91;
    blc= scr_blcon_x(x + 180, y + 20);
}
if(con == 91 && instance_exists(OBJ_WRITER )) {
    vol= caster_get_volume(global.batmusic);
    vol-= 0.02;
    caster_set_volume(global.batmusic, vol);
}
if(con == 91 && !instance_exists(OBJ_WRITER )) {
    caster_stop(global.batmusic);
    snd_play(snd_phone );
    con= 93;
    alarm[4]= 50;
}
if(con == 94 && !instance_exists(OBJ_WRITER )) {
    global.typer= 51;
    global.msc= 0;
    global.msg[0]= "\\\\E0HI^1, YOU\\'RE ON TV!/";
    global.msg[1]= "WHAT DO YOU HAVE&TO SAY ON THIS^1,&OUR LAST SHOW???/%%";
    con= 95;
    scr_blcon_x(x + 180, y + 20);
}
if(con == 95 && !instance_exists(OBJ_WRITER )) {
    shblcon= instance_create(530, 200, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    sadmett= caster_load("music/mettsad.ogg");
    caster_loop(sadmett, 0.9, 1);
    global.typer= 92;
    global.msg[0]= "...../";
    global.msg[1]= "oh......../";
    global.msg[2]= "\\\\E1hi..^1.&mettaton.../";
    global.msg[3]= "i really liked&watching your show.../";
    global.msg[4]= "my life is pretty&boring..^1. but.../";
    global.msg[5]= "seeing you on the&screen..^1. brought&excitement to my&life..^1. vicariously/";
    global.msg[6]= "i can\\'t tell^1, but..^1.&i guess this is&the last episode...?/";
    global.msg[7]= "\\\\E3i\\'ll miss you..^1.&mettaton....../";
    global.msg[8]= "... oh...^1. i didn\\'t&mean to talk so&long.../";
    global.msg[9]= "\\\\E2oh........../%%";
    instance_create(420, 60, OBJ_WRITER );
    con= 96;
}
if(con == 96 && !instance_exists(OBJ_WRITER )) {
    // obj_blconsm
    with(186) instance_destroy();
    global.typer= 51;
    global.msc= 0;
    global.msg[0]= "NO^1, WAIT^1!&WAIT^1, BL.../";
    global.msg[1]= "\\\\E1H..^1.&THEY ALREADY HUNG&UP./";
    global.msg[2]= "\\\\E3.../";
    global.msg[3]= "\\\\E0I\\'LL TAKE ANOTHER&CALLER!!!/%%";
    con= 97;
    scr_blcon_x(x + 180, y + 20);
}
if(con == 97 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_phone );
    shblcon= instance_create(530, 200, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    global.typer= 92;
    global.msg[0]= "\\\\E1Mettaton^1, your show&made us so happy!/%%";
    instance_create(420, 60, OBJ_WRITER );
    con= 98;
}
if(con == 98 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_phone );
    shblcon= instance_create(560, 200, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    with(shblcon) depth-= 4;
    global.typer= 92;
    global.msg[0]= "Mettaton^1, I don\\'t&know what I\\'ll&watch without you./%%";
    instance_create(450, 60, OBJ_WRITER );
    con= 99;
}
if(con == 99 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_phone );
    shblcon= instance_create(520, 200, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    with(shblcon) depth-= 8;
    global.typer= 92;
    global.msg[0]= "Mettaton^1, there\\'s&a Mettaton-shaped&hole in my Mettaton-&shaped heart./%%";
    instance_create(410, 60, OBJ_WRITER );
    con= 100;
}
if(con == 100 && !instance_exists(OBJ_WRITER )) {
    con= 101;
    alarm[4]= 30;
}
if(con == 101)
    obj_blconsm.image_alpha-= 0.035;
if(con == 102) {
    // obj_blconsm
    with(186) instance_destroy();
    global.typer= 51;
    global.msc= 0;
    global.msg[0]= "\\\\E3AH..^1. I.../";
    global.msg[1]= "I SEE.../";
    global.msg[2]= "\\\\E4.../";
    global.msg[3]= "EVERYONE..^1.&THANK YOU SO MUCH./";
    global.msg[4]= ".../";
    global.msg[5]= "\\\\E0DARLING./";
    global.msg[6]= "\\\\E1PERHAPS..^1. IT MIGHT BE&BETTER IF I STAY&HERE FOR A WHILE./";
    global.msg[7]= "\\\\E2HUMANS ALREADY HAVE&STARS AND IDOLS^1,&BUT MONSTERS.../";
    global.msg[8]= "\\\\E0THEY ONLY HAVE ME./";
    global.msg[9]= "\\\\E1IF I LEFT..^1.&THE UNDERGROUND WOULD&LOSE ITS SPARK./";
    global.msg[10]= "\\\\E3I\\'D LEAVE AN ACHING&VOID THAT CAN NEVER&BE FILLED./";
    global.msg[11]= "\\\\E0SO..^1. I THINK I\\'LL&HAVE TO DELAY MY&BIG DEBUT./";
    global.msg[12]= "\\\\E2BESIDES./";
    global.msg[13]= "\\\\E1YOU\\'VE PROVEN TO&BE VERY STRONG./";
    global.msg[14]= "\\\\E0PERHAPS..^1. EVEN STRONG&ENOUGH TO GET PAST&ASGORE./";
    global.msg[15]= "\\\\E0I\\'M SURE YOU\\'LL BE&ABLE TO PROTECT&HUMANITY./";
    global.msg[16]= "\\\\E4HA^1, HA.../";
    global.msg[17]= "IT\\'S ALL FOR THE&BEST^1, ANYWAY./";
    global.msg[18]= "\\\\E3THE TRUTH IS^1, THIS&FORM\\'S ENERGY&CONSUMPTION IS.../";
    global.msg[19]= "INEFFICIENT./";
    global.msg[20]= "IN A FEW MOMENTS^1,&I\\'LL RUN OUT OF&BATTERY POWER^1, AND.../";
    global.msg[21]= "\\\\E4WELL./";
    global.msg[22]= "\\\\E0I\\'LL BE ALRIGHT./";
    global.msg[23]= "\\\\E5KNOCK \\'EM DEAD^1,&DARLING./";
    global.msg[24]= "\\\\E0AND EVERYONE..^1.&THANK YOU./";
    global.msg[25]= "YOU\\'VE BEEN A&GREAT AUDIENCE!/%%";
    con= 103;
    scr_blcon_x(x + 180, y + 20);
}
if(con == 103 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 20) caster_set_volume(sadmett, 0.8);
    if(OBJ_WRITER.stringno == 21) caster_set_volume(sadmett, 0.6);
    if(OBJ_WRITER.stringno == 22) caster_set_volume(sadmett, 0.4);
    if(OBJ_WRITER.stringno == 23) caster_set_volume(sadmett, 0.2);
    if(OBJ_WRITER.stringno == 24) caster_set_volume(sadmett, 0.1);
    if(OBJ_WRITER.stringno == 25) caster_set_volume(sadmett, 0);
}
if(con == 103 && !instance_exists(OBJ_WRITER )) {
    impact= caster_load("music/create.ogg");
    caster_play(impact, 1, 0.8);
    mypart1.fadewhite= 1;
    con= 105;
}
if(global.myfight == 4 && global.mercyuse == 0) script_execute(scr_mercystandard );

/* */
/*  */
