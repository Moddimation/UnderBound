if(ditch == 1 && global.mnfight > 0) {
    talked= 0;
    if(image_alpha > 0.05) image_alpha-= 0.05;
    thisturn2= global.turn - thisturn;
    if(thisturn2 >= 2 && scr_monstersum() > 0) ditch= 0;
    global.monster[myself]= 0;
}
if(ditch == 0) {
    global.monster[myself]= 1;
    if(image_alpha < 1) image_alpha+= 0.05;
}
if(global.mnfight == 3) attacked= 0;
scr_blconmatch();
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 100;
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
    global.monsterhp[myself]-= ceil(takedamage / 5);
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
    if(ditch == 0) {
        if(scr_monstersum() > 1) {
            if(global.turntimer < 1) global.turntimer= 1;
            alarm[10]= 10;
        } else  global.mnfight= 3;
    }
    if(mycommand < 50) {
    }
    if(mycommand >= 50) {
    }
    if(ditch == 0) {
        if(mycommand >= 0)
            global.msg[0]= "* Jerry eats powdery food and&  licks its hands loudly.";
        if(mycommand >= 25)
            global.msg[0]= "* Jerry sneezes without covering&  its nose.";
        if(mycommand >= 50)
            global.msg[0]= "* Jerry tells everyone it has to&  go to the bathroom.";
        if(mycommand >= 75) global.msg[0]= "* Jerry lets out a yawn.";
        if(mycommand >= 90) global.msg[0]= "* Smells like....... Jerry.";
        if(global.monsterhp[myself] < global.monstermaxhp[myself] / 3)
            global.msg[0]= "* Jerry is wounded.";
    }
    if(ditch == 1 && thisturn2 == 0)
        global.msg[0]= "* The other monsters celebrate&  Jerry\\'s disappearance.";
    if(ditch == 0 && thisturn2 == 2)
        global.msg[0]= "* Return of Jerry.";
    attacked= 1;
}
if(whatiheard == 1 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) {
        killed= 0;
        instance_destroy();
    }
}
if(global.myfight == 2 && ditch == 0 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* JERRY - ATK 0 DEF 30&* Everyone knows Jerry.&* Makes attacks 2 seconds longer./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You and the other&  monsters ditch Jerry&  when it looks away!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        ditch= 1;
        thisturn= global.turn;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        script_execute(scr_mercystandard );
        global.msg[0]= "* You tried to steal Ice Cap\\'s&  hat.../";
        global.msg[1]= "* ... but failed!/^";
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
if(global.myfight == 4 && ditch == 0 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}


/*  */
