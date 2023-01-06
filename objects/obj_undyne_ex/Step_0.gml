if(global.mnfight == 4 && attacked == 1) {
    if(hitno > 0) {
        if(hitno >= 1 && rating < 10) rating++;
        if(hitno >= 3 && rating < 10) rating= 10;
    } else  {
        if(rating > 8) rating--;
    }
    attacked= 0;
    global.mnfight= 5;
    if(global.border == 12) global.border= 13;
    SCR_BORDERSETUP();
    alarm[7]= 10;
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
    alarm[5]= 15;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
    if(order == -35) {
        global.mnfight= 99;
        global.bmenuno= 4;
        obj_heart.x= -400;
        alarm[5]= -2;
        alarm[6]= -2;
        con= 60;
    }
}
if(uncancel == 1) {
    alarm[5]= 100;
    if(!instance_exists(OBJ_WRITER )) {
        alarm[5]= 1;
        uncancel= 0;
    }
}
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] > 0) {
        global.hurtanim[myself]= 0;
        mypart1.pause= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= -99;
        global.mnfight= -99;
        global.hurtanim[myself]= 0;
        con= 50;
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
if(greenlock == 1 && global.mnfight > 0) {
    if(obj_heart.sprite_index == 39) obj_heart.y= obj_uborder.y + 34;
    else  greenlock= 0;
} else  greenlock= 0;
if(darkify == 1) {
    if(pseudodarker.image_alpha < 0.5)
        pseudodarker.image_alpha+= 0.04;
    else  darkify= 2;
    obj_borderparent.image_alpha= 1 - pseudodarker.image_alpha;
}
if(darkify == 3) {
    if(pseudodarker.image_alpha > 0)
        pseudodarker.image_alpha-= 0.04;
    obj_borderparent.image_alpha= 1 - pseudodarker.image_alpha;
    if(pseudodarker.image_alpha <= 0) {
        darkify= 0;
        with(pseudodarker) instance_destroy();
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
if(global.mnfight == 2 && attacked == 0) {
    hitno= 0;
    xx= room_width / 2;
    yy= room_height / 2;
    global.turntimer= 300;
    global.firingrate= 15;
    if(obj_heart.sprite_index == 39) {
        gen= instance_create(xx, yy, obj_spearblocker );
        gen.lesson= lesson;
        gen.rating= rating;
        gen.dmg= global.monsteratk[myself];
        with(gen) event_user(1);
    } else  {
        if(orderb == 0 || orderb == 6) {
            borderspec= 0;
            global.turntimer= 240;
            event_user(2);
            ratingb++;
            lesson++;
            if(ratingb > 10) ratingb= 10;
            if(ratingb < 8) ratingb= 8;
            global.firingrate= 18 - ratingb;
            gen= instance_create(x, y, obj_spearbulletfollowgen );
            gen.dmg= global.monsteratk[myself];
        }
        if(orderb == 1 || orderb == 7) {
            global.turntimer= 220;
            borderspec= 1;
            ratingb++;
            lesson++;
            if(ratingb > 10) ratingb= 10;
            if(ratingb < 8) ratingb= 8;
            global.firingrate= 23 - ratingb;
            gen= instance_create(x, y, obj_risespearbulletgen );
            gen.dmg= global.monsteratk[myself];
        }
        if(orderb == 2 || orderb == 3) {
            borderspec= 0;
            global.turntimer= 215;
            ratingb++;
            lesson++;
            gen= instance_create(x, y, obj_rotspeargen_gen );
            gen.type= 0;
            gen.t= 0;
            gen.dmg= global.monsteratk[myself];
        }
        if(orderb == 4) {
            borderspec= 0;
            global.turntimer= 400;
            ratingb++;
            lesson++;
            gen= instance_create(x, y, obj_followspeargen_2 );
            gen.dmg= global.monsteratk[myself];
        }
        if(orderb == 5) {
            borderspec= 0;
            global.turntimer= 215;
            ratingb++;
            lesson++;
            gen= instance_create(x, y, obj_rotspeargen_gen );
            gen.type= 1;
            gen.t= 1;
            gen.dmg= global.monsteratk[myself];
        }
        orderb++;
        if(orderb >= 8) orderb= 4;
    }
    gen.myself= myself;
    hitno= 0;
    attacked= 1;
    order++;
    lesson--;
    if(mycommand >= 0) global.msg[0]= "* The wind is howling...";
}
if(global.mnfight == 3 && darkify > 0 && darkify != 3)
    darkify= 3;
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* UNDYNE THE UNDYING 99ATK 99DEF&* Heroine reformed by her own&  DETERMINATION to save Earth./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
siner++;
if(instance_exists(obj_boxsiner ))
    obj_boxsiner.x= obj_boxsiner.xstart + sin(siner / 24) * 40;
if(global.myfight == 4 && global.mercyuse == 0) {
    mercied++;
    script_execute(scr_mercystandard );
}
if(obj_heart.sprite_index == 39 && global.mnfight == 2)
    obj_heart.movement= 3;
if(global.mnfight == 2 && global.turntimer < 1 && obj_heart.sprite_index == 34)
    global.mnfight= 4;
if(con == 50) {
    con= 51;
    alarm[4]= 90;
}
if(con == 52) {
    shakify= 2;
    mypart1.shakify= 1;
    myfight= 0;
    mnfight= 99;
    global.bmenuno= 4;
    global.border= 0;
    SCR_BORDERSETUP();
    con= 53;
    global.msc= 0;
    global.typer= 94;
    global.msg[0]= "Damn it.../";
    global.msg[1]= "So even THAT&power..^1.&It wasn\\'t enough...?/";
    global.msg[2]= ".../";
    global.msg[3]= "\\\\E1Heh.../";
    global.msg[4]= "Heheheh.../";
    global.msg[5]= "\\\\E2If you..^1./";
    global.msg[6]= "If you think I\\'m&gonna give up hope^1,&you\\'re wrong./";
    global.msg[7]= "\\'Cause I\\'ve..^1.&Got my friends&behind me./";
    global.msg[8]= "\\\\E3Alphys told me that&she would watch me&fight you.../";
    global.msg[9]= "\\\\E4And if anything went&wrong^1, she would..^1.&evacuate everyone./";
    global.msg[10]= "\\\\E5By now she\\'s called&ASGORE and told him&to absorb the 6&human SOULs./%%";
    scr_blcon_x(blconx, blcony);
}
if(con == 53 && !instance_exists(OBJ_WRITER )) {
    global.typer= 95;
    global.msg[0]= "And with that&power.../%%";
    melter= scr_marker(mypart1.x - 20, -40, 299);
    con= 54;
    scr_blcon_x(blconx, blcony);
    with(mypart1) instance_destroy();
}
if(con == 54 && !instance_exists(OBJ_WRITER )) {
    global.typer= 96;
    global.msg[0]= "This world will&live on...!/%%";
    melter.image_index= 1;
    con= 71;
    scr_blcon_x(blconx, blcony);
}
if(con == 71 && !instance_exists(OBJ_WRITER )) {
    global.monstersprite= melter.sprite_index;
    global.vaporspeed= 0;
    ddd= instance_create(melter.x, melter.y, obj_vaporized_new );
    with(ddd) scr_newvapordata(35);
    ddd.sprite_index= melter.sprite_index;
    with(melter) instance_destroy();
    ddd.ht= ht;
    ddd.wd= wd;
    ddd.image_speed= 0;
    ddd.image_index= 1;
    global.kills++;
    global.xp+= 1500;
    scr_levelup();
    con= 72;
    alarm[4]= 180;
}
if(con == 73) {
    instance_create(x, y, obj_unfader );
    global.flag[350]= 1;
    global.flag[251]= 1;
    global.plot= 122;
    alarm[9]= 10;
    con= 74;
}
if(obj_heart.sprite_index == 34) global.mercy= 1;
if(obj_heart.sprite_index == 39) global.mercy= 1;

/* */
/*  */
