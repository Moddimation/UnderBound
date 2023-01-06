if(global.mnfight == 3) attacked= 0;
scr_blconmatch();
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 60;
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
        sprite_index= spr_whimsun ;
        path_start(path_whimsun , 0.5, 1, path_action_stop );
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
    global.turntimer= 100;
    if(mycommand >= 0 && mycommand <= 50) script_execute(scr_rotategen , 10, 20, 624, obj_heart.x, obj_heart.y + 42);
    else  gen= instance_create(0, 0, obj_butterfly2gen );
    gen.myself= myself;
    if(mycommand >= 0) global.msg[0]= "* Whimsun avoids eye contact.";
    if(mycommand >= 30)
        global.msg[0]= "* Whimsun continues to mutter&  apologies.";
    if(mycommand >= 70) global.msg[0]= "* Whimsun is fluttering.";
    if(mycommand >= 90)
        global.msg[0]= "* It\\'s starting to smell like&  lavender and mothballs.";
    if(mercymod > 100) global.msg[0]= "* Whimsun is hyperventilating.";
    if(global.monsterhp[myself] < global.monstermaxhp[myself])
        global.msg[0]= "* Whimsun is having trouble&  flying.";
    attacked= 1;
}
if(whatiheard == 3 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* WHIMSUN - ATK 5 DEF 0&* This monster is too&  sensitive to fight.../^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.flag[131]= 1;
        global.msc= 0;
        global.msg[0]= "* Halfway through your first&  word^1, Whimsun bursts into&  tears and runs away./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You raise your arms and&  wiggle your fingers.&* Whimsun freaks out!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        mercymod= 101;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
