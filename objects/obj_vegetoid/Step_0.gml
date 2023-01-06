if(global.mnfight == 3) attacked= 0;
scr_blconmatch();
if(global.myfight == 0 && global.mnfight == 0) eat= 0;
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 75;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 16;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        sprite_index= spr_vegetoid ;
        image_index= 0;
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
if(global.mnfight == 2 && attacked == 0) {
    global.turntimer= 110;
    global.firingrate= 4;
    if(mycommand < 50) {
        global.firingrate= 6;
        if(global.monster[0] + global.monster[1] + global.monster[2] > 1)
            global.firingrate= 10;
        if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
            global.firingrate= 16;
        gen= instance_create(0, 0, obj_1sidegen );
        if(eat == 1) gen.specgreen= 1;
        gen.bullettype= 6;
    }
    if(mycommand >= 50) {
        global.firingrate= 18;
        if(global.monster[0] + global.monster[1] + global.monster[2] == 2)
            global.firingrate= 30;
        if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
            global.firingrate= 42;
        gen= instance_create(0, 0, obj_1sidegen );
        if(eat == 1) gen.specgreen= 1;
        gen.bullettype= 5;
    }
    gen.myself= myself;
    gen.dmg= global.monsteratk[myself];
    if(mycommand >= 0)
        global.msg[0]= "* Vegetoid gave a mysterious&  smile.";
    if(mycommand >= 30) global.msg[0]= "* Vegetoid cackles softly.";
    if(mycommand >= 70)
        global.msg[0]= "* Vegetoid\\'s here for your&  health.";
    if(mycommand >= 90)
        global.msg[0]= "* It smells like steamed&  carrots and peas.";
    if(global.monsterhp[myself] < global.monstermaxhp[myself] / 3)
        global.msg[0]= "* Vegetoid seems kind of&  bruised.";
    attacked= 1;
}
if(whatiheard == 1 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 8) {
        killed= 0;
        instance_destroy();
    }
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* VEGETOID - ATK 6 DEF 6&* Serving Size: 1 Monster&* Not monitored by the USDA/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.myfight= 0;
        global.mnfight= 1;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        script_execute(scr_mercystandard );
        global.msg[0]= "* You tried to eat Vegetoid^1,&  but it wasn\\'t weakened&  enough./^";
        if(mercy < 8) {
            global.msg[0]= "* You took a bite out of&  Vegetoid^1.&* You recovered 5 HP!/^";
            instance_create(0, 0, obj_foodsound );
            script_execute(scr_recover , 5);
            sprite_index= spr_vegetoidhurt ;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        eat= 1;
        global.msc= 0;
        global.msg[0]= "* You pat your stomach^1.&* Vegetoid offers a healthy&  meal./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) {
        global.flag[134]= 1;
        instance_destroy();
    }
}

/* */
/*  */
