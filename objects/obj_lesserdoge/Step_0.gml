if(global.mnfight == 3) attacked= 0;
scr_blconmatch();
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 70;
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
        sprite_index= normalsprite;
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
    if(mercymod > 250 && global.turntimer < 10) global.turntimer= 0;
    else  global.turntimer= 110;
    global.firingrate= 4;
    if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
        mycommand= 2;
    if(mycommand < 50) {
        global.firingrate= 13;
        gen= instance_create(global.idealborder[1] - 50, global.idealborder[3] - 45, blt_tinypom_leap );
        gen.dmg= global.monsteratk[myself];
        global.border= 8;
        gen.bullettype= 0;
    }
    if(mycommand >= 50) {
        global.firingrate= 13;
        gen= instance_create(global.idealborder[1] - 50, global.idealborder[3] - 45, blt_bluespear );
        gen.dmg= global.monsteratk[myself];
        global.border= 8;
        gen.bullettype= 0;
    }
    gen.myself= myself;
    gen.dmg= global.monsteratk[myself];
    if(mycommand >= 0)
        global.msg[0]= "* Lesser Dog cocks its head&  to one side.";
    if(mycommand >= 30)
        global.msg[0]= "* Lesser Dog thinks your&  weapon is a dog treat.";
    if(mycommand >= 60)
        global.msg[0]= "* Lesser Dog is really not&  paying attention.";
    if(mycommand >= 85) global.msg[0]= "* Smells like dog chow.";
    if(mercymod >= 40)
        global.msg[0]= "* Lesser Dog is barking&  excitedly.";
    if(mercymod >= 200)
        global.msg[0]= "* Lesser Dog is overstimulated.";
    if(mercymod >= 400)
        global.msg[0]= "* Lesser Dog shows no signs&  of stopping.";
    if(mercymod >= 700) global.msg[0]= "* Lesser Dog is lowering.";
    if(mercymod >= 1640)
        global.msg[0]= "* Lesser Dog is learning&  to read.";
    if(mercymod >= 1740)
        global.msg[0]= "* Lesser Dog is whining&  because it can\\'t see&  you.";
    if(mercymod >= 2190) global.msg[0]= "* Hello there.";
    if(mercymod >= 2340)
        global.msg[0]= "* Lesser Dog is questioning&  your choices.";
    if(mercymod >= 2640)
        global.msg[0]= "* Lesser Dog has gone where&  no Dog has gone before.";
    if(global.monsterhp[myself] < global.monstermaxhp[myself] / 3)
        global.msg[0]= "* Lesser Dog tucks its tail&  between its legs.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1) {
    if(global.heard == 0) {
        if(whatiheard == 0) {
            global.msc= 0;
            global.msg[0]= "* LESSER DOG - ATK 12 DEF 2&* Wields a stone dogger made&  of pomer-granite./^";
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
        }
        if(whatiheard == 1 || whatiheard == 2 || whatiheard == 3 || whatiheard == 4 || whatiheard == 5) {
            global.msc= 0;
            if(mercymod == 0)
                global.msg[0]= "* You barely lifted your&  hand and Lesser Dog&  got excited./^";
            if(mercymod > 40)
                global.msg[0]= "* You lightly touched the&  Dog^1.&* It\\'s already overexcited.../^";
            if(mercymod > 90)
                global.msg[0]= "* You pet the Dog.&* It raises its head up&  to meet your hand./^";
            if(mercymod > 140)
                global.msg[0]= "* You pet the Dog.&* It was a good Dog./^";
            if(mercymod > 190)
                global.msg[0]= "* You pet the Dog.&* Its excitement knows no&  bounds./^";
            if(mercymod > 240)
                global.msg[0]= "* Critical pet!&* Dog excitement increased./^";
            if(mercymod > 290)
                global.msg[0]= "* You have to jump up&  to pet the Dog./^";
            if(mercymod > 340)
                global.msg[0]= "* You don\\'t even pet it^1.&* It gets more excited./^";
            if(mercymod > 390)
                global.msg[0]= "* There is no way to&  stop this madness./^";
            if(mercymod > 440)
                global.msg[0]= "* Lesser Dog enters the&  realm of the clouds./^";
            if(mercymod > 490)
                global.msg[0]= "* You call the Dog but it&  is too late^1.&* It cannot hear you./^";
            if(mercymod > 540) global.msg[0]= "* .../^";
            if(mercymod > 590)
                global.msg[0]= "* You can reach Lesser Dog&  again./^";
            if(mercymod > 640) global.msg[0]= "* You pet Lesser Dog./^";
            if(mercymod > 900)
                global.msg[0]= "* It\\'s possible that you&  may have a problem./^";
            if(mercymod > 1640)
                global.msg[0]= "* Lesser Dog is unpettable&  but appreciates the attempt./^";
            if(mercymod > 2190)
                global.msg[0]= "* Perhaps mankind was not&  meant to pet this much./^";
            if(mercymod > 2240) global.msg[0]= "* It continues./^";
            if(mercymod >= 2640)
                global.msg[0]= "* Lesser Dog is beyond&  your reach./^";
            if(mercymod >= 2690) global.msg[0]= "* Really.../^";
            if(mercymod > 100) global.flag[141]= 1;
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
            mercymod+= 50;
        }
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}


/*  */
