if(global.mnfight == 3) attacked= 0;
scr_blconmatch();
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
        sprite_index= normalgfx;
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
    pop= scr_monstersum();
    if(instance_exists(obj_jerry ) && obj_jerry.ditch == 0)
        pop--;
    global.turntimer= 150;
    if(mycommand < 50) {
        if(pop == 1) global.turntimer= 100;
        gen= instance_create(0, global.idealborder[2] + (global.idealborder[3] - global.idealborder[2] - 40) / 2, obj_iceteeth );
    }
    if(mycommand >= 50) {
        pop= scr_monstersum();
        if(instance_exists(obj_jerry ) && obj_jerry.ditch == 0)
            pop--;
        global.firingrate= 33;
        if(pop == 2) global.firingrate= 45;
        if(pop == 3) global.firingrate= 60;
        gen= instance_create(0, 0, obj_1sidegen );
        gen.bullettype= 11;
    }
    gen.myself= myself;
    gen.dmg= global.monsteratk[myself];
    if(mycommand >= 0) global.msg[0]= "* It\\'s snowing dandruff.";
    if(mycommand >= 25)
        global.msg[0]= "* Ice Cap also wants a hat&  for its nose.";
    if(mycommand >= 50)
        global.msg[0]= "* Ice Cap makes sure its hat&  is still there.";
    if(mycommand >= 75)
        global.msg[0]= "* Ice Cap is thinking about a&  certain article of clothing.";
    if(mycommand >= 90)
        global.msg[0]= "* Here comes that new clothes&  smell.";
    if(ignore == 1)
        global.msg[0]= "* Ice Cap is secretly checking&  if you\\'re looking at&  its hat.";
    if(ignore > 1)
        global.msg[0]= "* Ice Cap is desperate for&  attention.";
    if(global.monsterhp[myself] < global.monstermaxhp[myself] / 3)
        global.msg[0]= "* Ice Cap\\'s hat is loose.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* ICE CAP - ATK 11 DEF 4&* This teen wonders why&  it isn\\'t named \\'Ice Hat.\\'/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(ignore > 0) {
            global.msg[0]= "* You continue not looking&  at Ice Cap\\'s hat./";
            global.msg[1]= "* It seems defeated.../^";
        }
        if(ignore == 0) {
            global.msg[0]= "* You manage to tear your&  eyes away from Ice Cap\\'s&  hat./";
            global.msg[1]= "* It looks annoyed.../^";
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You inform Ice Cap that&  it has a great hat!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        script_execute(scr_mercystandard );
        global.msg[0]= "* You tried to steal Ice Cap\\'s&  hat.../";
        global.msg[1]= "* ... but it\\'s not weakened&  enough!/^";
        if(mercy < 0) {
            global.msg[1]= "* And succeeded!&* (It melts in your hands...)/^";
            m= 0;
            global.monster[myself]= 0;
            if(global.monster[1] == 1 && global.monster[0] == 0) m= 1;
            global.monster[1]= 0;
            global.monstertype[myself]= 20;
            cube= 1;
            global.monsterinstance[myself]= instance_create(x, y, obj_icecube );
            if(m == 1) global.monster[1]= 1;
            instance_destroy();
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


/*  */
