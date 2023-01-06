if(global.mnfight == 4 && attacked == 1) {
    if(hitno > 0) {
        if(hitno == 1) rating++;
        if(hitno > 1) rating+= 2;
        if(berserk == 1) rating--;
    } else  {
        if(rating >= 10 && lesson > 5) rating-= 2;
        else  {
            if(rating > 8) rating--;
        }
        if(berserk == 1 && rating > 6) rating--;
    }
    attacked= 0;
    global.mnfight= 5;
    if(global.border == 12) global.border= 13;
    SCR_BORDERSETUP();
    alarm[7]= 10;
    if(instance_exists(obj_undynesiner2 )) {
        // obj_undynesiner2
        with(262) event_user(1);
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
    if(order == -35) {
        global.mnfight= 99;
        global.bmenuno= 4;
        obj_heart.x= -400;
        alarm[5]= -2;
        alarm[6]= -2;
        con= 60;
    }
}
if(keyboard_multicheck_pressed(13) && uncancel == 0 && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(uncancel == 1) {
    alarm[5]= 100;
    if(!instance_exists(OBJ_WRITER )) {
        alarm[5]= 1;
        uncancel= 0;
    }
}
if(global.hurtanim[myself] == 1) {
    tempdie= 0;
    shudder= 8;
    if(global.monsterhp[myself] < 1 && died == 0) shudder= 16;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        mypart1= instance_create(x, y, part1);
        global.hurtanim[myself]= 0;
        image_index= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
        if(died == 0) {
            caster_stop(global.batmusic);
            deadmusic1= caster_load("music/endingexcerpt1.ogg");
            deadmusic2= caster_load("music/endingexcerpt2.ogg");
            con= 50;
            obj_heart.sprite_index= spr_heart ;
            // obj_boxsiner
            with(267) fade= 1;
            order= -40;
            lesson= -40;
            died= 1;
            global.mnfight= 99;
        }
        mypart1= instance_create(x, y, part1);
        global.hurtanim[myself]= 0;
        image_index= 0;
    }
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
    global.turntimer= 200;
    global.firingrate= 15;
    if(obj_heart.sprite_index == 39) {
        gen= instance_create(xx, yy, obj_spearblocker );
        gen.lesson= lesson;
        gen.rating= rating;
        gen.dmg= global.monsteratk[myself];
        with(gen) event_user(1);
    } else  {
        if(mycommand <= 50) {
            event_user(2);
            ratingb++;
            lesson--;
            if(ratingb > 9) ratingb= 9;
            global.firingrate= 19 - ratingb;
            gen= instance_create(x, y, obj_spearbulletfollowgen );
            gen.dmg= global.monsteratk[myself];
        } else  {
            borderspec= 1;
            ratingb++;
            lesson--;
            if(ratingb > 9) ratingb= 9;
            global.firingrate= 23 - ratingb;
            gen= instance_create(x, y, obj_risespearbulletgen );
            gen.dmg= global.monsteratk[myself];
        }
    }
    gen.myself= myself;
    if(global.monsterhp[myself] < global.monstermaxhp[myself]) {
        if(mycommand >= 0) global.msg[0]= "* The wind is howling...";
        if(mycommand >= 20)
            global.msg[0]= "* Undyne flips her spear&  impatiently.";
        if(mycommand >= 40)
            global.msg[0]= "* Flower pollen drifts in&  front of you.";
        if(mycommand >= 60) global.msg[0]= "* Water rushes around you.";
        if(mycommand >= 80)
            global.msg[0]= "* The spears pause for a&  moment.";
    }
    if(global.monsterhp[myself] >= global.monstermaxhp[myself] / 2) {
        if(mycommand >= 0)
            global.msg[0]= "* Undyne points heroically&  towards the sky.";
        if(mycommand >= 10)
            global.msg[0]= "* Undyne flips her spear&  impatiently.";
        if(mycommand >= 20)
            global.msg[0]= "* Undyne suplexes a huge&  boulder^1, just because&  she can.";
        if(mycommand >= 30) global.msg[0]= "* Undyne bounces impatiently.";
        if(mycommand >= 40)
            global.msg[0]= "* Undyne flashes a menacing&  smile.";
        if(mycommand >= 50)
            global.msg[0]= "* Undyne draws her finger&  across her neck.";
        if(mycommand >= 60)
            global.msg[0]= "* Undyne holds her fist in&  front of her and shakes&  her head.";
        if(mycommand >= 70) global.msg[0]= "* Undyne towers threateningly.";
        if(mycommand >= 80)
            global.msg[0]= "* Undyne thinks of her friends&  and pounds the ground&  with her fists.";
        if(mycommand >= 90) global.msg[0]= "* Smells like sushi.";
        if(order > 22) {
            if(mycommand >= 0)
                global.msg[0]= "* Undyne\\'s eye is twitching&  involuntarily.";
            if(mycommand >= 25)
                global.msg[0]= "* Undyne is smashing spears&  on the ground.";
            if(mycommand >= 50)
                global.msg[0]= "* Undyne\\'s eyes dart around&  to see if this is&  a prank.";
            if(mycommand >= 75) global.msg[0]= "* Undyne is hyperventilating.";
            if(mycommand >= 90) global.msg[0]= "* Smells like angry fish.";
        }
    }
    if(order == -40)
        global.msg[0]= "* Undyne is smiling as if&  nothing is wrong.";
    if(order == -39) global.msg[0]= "* Undyne\\'s body is wavering.";
    if(order == -38)
        global.msg[0]= "* Undyne\\'s body is losing&  its shape.";
    if(order == -37) global.msg[0]= "* Undyne\\'s body...";
    if(order == -36) global.msg[0]= "* ...";
    attacked= 1;
    order++;
    lesson++;
}
if(global.mnfight == 3 && darkify > 0 && darkify != 3)
    darkify= 3;
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* UNDYNE - ATK 50 DEF 20&* The heroine that NEVER gives&  up./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        chal_e= 0;
        if(rating == 8) {
            rating= 7;
            chal_e= 1;
        }
        if(rating == 9) {
            rating= 8;
            chal_e= 1;
        }
        if(rating == 10) {
            rating= 9;
            chal_e= 1;
        }
        if(rating == 11) {
            rating= 10;
            chal_e= 1;
        }
        if(rating == 12) {
            rating= 10;
            chal_e= 1;
        }
        if(rating == 13) {
            rating= 11;
            chal_e= 1;
        }
        if(rating == 14) {
            rating= 11;
            chal_e= 1;
        }
        if(rating == 15) {
            rating= 12;
            chal_e= 1;
        }
        if(rating == 16) {
            rating= 12;
            chal_e= 1;
        }
        if(chal_e == 0)
            global.msg[0]= "* You tell UNDYNE her attacks&  are too easy^1.&* She doesn\\'t care./^";
        if(chal_e == 1) {
            if(ratingb < 6) ratingb++;
            global.msg[0]= "* You tell UNDYNE her attacks&  are too easy^1.&* The bullets get faster./^";
            if(rating == 7)
                global.msg[0]= "* You tell UNDYNE her attacks&  are too easy^1.&* The bullets get unfair./^";
        }
        if(con >= 50) global.msg[0]= "* Didn\\'t work./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* Hamburger Helpers./^";
        plead_e= 0;
        if(ratingb == 7) {
            ratingb= 6;
            plead_e= 1;
        }
        if(ratingb == 8) {
            ratingb= 7;
            plead_e= 1;
        }
        if(ratingb == 9) {
            ratingb= 7;
            plead_e= 1;
        }
        if(rating == 9) {
            rating= 10;
            plead_e= 1;
        }
        if(rating == 8) {
            rating= 10;
            plead_e= 1;
        }
        if(rating == 7) {
            rating= 9;
            plead_e= 1;
        }
        if(plead_e == 0)
            global.msg[0]= "* You told Undyne you didn\\'t&  want to fight^1.&* But nothing happened./^";
        if(plead_e == 1) {
            global.msg[0]= "* You told Undyne you just&  want to be friends.&* She remembers someone.../";
            global.msg[1]= "* Her attacks became a little&  less extreme./^";
        }
        if(con >= 50) global.msg[0]= "* Didn\\'t work./^";
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
if(con == 0) {
    con= 1;
    alarm[4]= 30;
}
if(con == 1) {
    global.bmenuno= 4;
    obj_heart.x= room_width / 2 - obj_heart.sprite_width / 2;
    obj_heart.y= room_height / 2 - obj_heart.sprite_height / 2;
    global.myfight= 0;
    global.mnfight= 99;
}
if(con == 2) {
    if(global.flag[99] < 4) {
        event_user(1);
        con= 3.1;
        alarm[4]= 30;
    } else  con= 4.1;
}
if(con == 4.1) {
    global.typer= 39;
    global.msg[0]= "En guarde!/%%";
    if(global.flag[99] == 2) {
        global.msg[0]= "\\\\E1  You won\\'t get&  away from me&  this time!/%%";
        lesson= 8;
        order= 9;
    }
    if(global.flag[99] == 3) {
        global.msg[0]= "\\\\E4  You\\'ve escaped&  from me for&  the LAST time!/%%";
        lesson= 13;
        order= 15;
    }
    if(global.flag[99] == 4) {
        global.msg[0]= "\\\\E5  STOP RUNNING&  AWAY!!!/%%";
        lesson= 22;
        order= 22;
    }
    if(global.flag[99] > 4) {
        global.msg[0]= "\\\\E5  COME BACK HERE^1,&  YOU LITTLE&  PUNK!!/%%";
        lesson= 22;
        order= 22;
    }
    scr_blcon_x(blconx, blcony);
    con= 5;
}
if(con == 5 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Undyne attacks!";
    caster_loop(global.batmusic, 0.82, 1);
    global.myfight= 0;
    global.mnfight= 3;
    con= 6;
}
if(global.mnfight == 2 && global.turntimer < 1 && obj_heart.sprite_index == 34)
    global.mnfight= 4;
if(con == 50) {
    with(mypart1) instance_destroy();
    image_index= 2;
    shakify= 1;
    myfight= 0;
    mnfight= 99;
    global.bmenuno= 4;
    global.border= 4;
    SCR_BORDERSETUP();
    con= 51;
    global.msc= 0;
    global.typer= 40;
    global.msg[0]= "Ngahhh.../";
    global.msg[1]= "You were stronger...&Than I thought.../";
    global.msg[2]= "So then..^1.&... this is where..^1.&... it ends.../";
    global.msg[3]= ".../%%";
    scr_blcon_x(blconx, blcony);
}
if(con == 51) {
    obj_heart.x= obj_uborder.y + 20;
    obj_heart.x= room_width / 2 - 8;
}
if(con == 51 && !instance_exists(OBJ_WRITER )) {
    con= 50.1;
    shakify= 3;
    alarm[4]= 60;
}
if(con == 51.1) {
    shakify= 0;
    x= xstart;
    y= ystart;
    image_index= 3;
    global.faceemotion= 8;
    global.typer= 40;
    global.msg[0]= "  No.../%%";
    scr_blcon_x(blconx, blcony);
    con= 52;
}
if(con == 53 && !instance_exists(OBJ_WRITER )) {
    event_user(1);
    con= 54;
    alarm[4]= 30;
}
if(con == 52 && !instance_exists(OBJ_WRITER )) {
    shakify= 0;
    image_index= 0;
    global.typer= 41;
    mypart1= instance_create(x, y, part1);
    with(mypart1) event_user(4);
    caster_play(deadmusic1, 1, 1);
    global.msg[0]= "NO!/";
    global.msg[1]= "I won\\'t die!/";
    global.msg[2]= "Alphys..^1.&Asgore..^1.&Papyrus.../";
    global.msg[3]= "Everyone is counting&on me to protect&them!/";
    global.msg[4]= "NNNNGAH!/%%";
    scr_blcon_x(blconx, blcony);
    con= 53;
}
if(con == 55) {
    global.typer= 41;
    global.msg[0]= "Human!/";
    global.msg[1]= "In the name of&everybody\\'s hopes&and dreams.../";
    global.msg[2]= "I WILL DEFEAT YOU!/%%";
    scr_blcon_x(blconx, blcony);
    con= 56;
}
if(con == 56 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Undyne looks determined.";
    global.myfight= 0;
    global.mnfight= 3;
    con= 57;
}
if(con == 60) {
    caster_free(deadmusic1);
    caster_free(deadmusic2);
    global.faceemotion= 7;
    global.typer= 40;
    global.msc= 0;
    global.msg[0]= ".../";
    global.msg[1]= "Ha..^1. ha.../";
    global.msg[2]= "... Alphys.../";
    global.msg[3]= "This is what I&  was afraid of.../";
    global.msg[4]= "This is why I&  never told you.../";
    global.msg[5]= ".../%%";
    scr_blcon_x(blconx, blcony);
    con= 61;
}
if(con == 61 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 8;
    // obj_undynesiner2
    with(262) event_user(1);
    global.msg[0]= "No..^1.&No!/";
    global.msg[1]= "Not yet!/";
    global.msg[2]= "I won\\'t die!/%%";
    scr_blcon_x(blconx, blcony);
    con= 62;
}
if(con == 62 && !instance_exists(OBJ_WRITER )) {
    // obj_undynesiner2
    with(262) event_user(1);
    global.typer= 42;
    global.msg[0]= "NGAHHHHHHHH!!^2! %%";
    scr_blcon_x(blconx, blcony);
    con= 63;
}
if(con == 63 && !instance_exists(OBJ_WRITER )) {
    con= 64;
    global.typer= 42;
    // obj_undynesiner2
    with(262) event_user(1);
    alarm[4]= 120;
    global.msg[0]= " I WON\\'T DIE^3! %%";
    scr_blcon_x(blconx, blcony);
}
if(con == 65 && !instance_exists(OBJ_WRITER )) {
    con= 66;
    global.typer= 43;
    with(melter) image_index= 1;
    alarm[4]= 120;
    global.msg[0]= " I WON\\'T DIE^3! %%";
    scr_blcon_x(blconx, blcony);
}
if(con == 67 && !instance_exists(OBJ_WRITER )) {
    con= 68;
    global.typer= 44;
    with(melter) image_index= 2;
    alarm[4]= 120;
    global.msg[0]= " I WON\\'T DIE^3! %%";
    scr_blcon_x(blconx, blcony);
}
if(con == 69 && !instance_exists(OBJ_WRITER )) {
    con= 70;
    global.typer= 45;
    with(melter) image_index= 3;
    alarm[4]= 120;
    global.msg[0]= " I^2 WON\\'T^2 %%";
    scr_blcon_x(blconx, blcony);
}
if(con == 71 && !instance_exists(OBJ_WRITER )) {
    global.vaporspeed= 0;
    global.monstersprite= 278;
    ddd= instance_create(melter.x, melter.y, obj_vaporized );
    ddd.image_speed= 0;
    ddd.image_index= 1;
    global.kills++;
    global.xp+= 500;
    scr_levelup();
    with(melter) instance_destroy();
    con= 72;
    alarm[4]= 200;
}
if(con == 73) {
    instance_create(x, y, obj_unfader );
    global.flag[350]= 1;
    global.plot= 122;
    alarm[9]= 10;
    con= 74;
}
global.flag[351]= global.monsterhp[myself];
if(obj_heart.sprite_index == 34) global.mercy= 0;
if(obj_heart.sprite_index == 39) global.mercy= 1;
if(died == 1) global.mercy= 1;
if(died == 1 && con >= 53 && con < 60 && caster_is_playing(deadmusic1) == 0 && caster_is_playing(deadmusic2) == 0)
    caster_loop(deadmusic2, 1, 1);
if(shakify > 0) {
    x= xstart + random(shakify);
    y= ystart + random(shakify);
}
if(global.debug == 1 && keyboard_check_pressed(85))
    global.monsterhp[myself]= 2;

/* */
/*  */
