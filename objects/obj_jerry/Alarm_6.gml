if(ditch == 0) {
    blcon= instance_create(x - 8, ystart - 100, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    mycommand= round(random(100));
    gg= floor(random(3));
    if(mycommand >= 0 && mycommand < 20)
        global.msg[0]= "Guys, it\\'s COLD.&Does ANYONE care?";
    if(mycommand >= 20 && mycommand < 40)
        global.msg[0]= "Why are we doing&this? What a fail.";
    if(mycommand >= 40 && mycommand < 60)
        global.msg[0]= "Wow, you guys&SUCK at this.";
    if(mycommand >= 60 && mycommand <= 80)
        global.msg[0]= "SHHHH! I\\'m&THINKING, guys!!";
    if(mycommand >= 80 && mycommand <= 100)
        global.msg[0]= "Ka-SIGH.";
    if(scr_monstersum() == 1) {
        if(mycommand > 0)
            global.msg[0]= "Well... can YOU&give me a ride&home?";
        if(mycommand > 20)
            global.msg[0]= "Huh? Did they&ditch me...? SOME&friends!";
        if(mycommand > 40) global.msg[0]= "Awkwarrrd.";
        if(mycommand > 60)
            global.msg[0]= "So, like, what&are you even&doing?";
        if(mycommand > 80) global.msg[0]= "The wi-fi here&sucks.";
    }
    if(whatiheard == 1) {
        if(gg == 0) global.msg[0]= "Better&a hatter&than a&HATER.";
        if(gg == 1) global.msg[0]= "Insults&won\\'t&fix your&outfit!";
        if(gg == 2) global.msg[0]= "What?&My hat\\'s&too loud&sorry.";
    }
    if(whatiheard == 3) {
        if(gg == 0) global.msg[0]= "DUH!&Who&DOESN\\'T&know?";
        if(gg == 1) global.msg[0]= "Envious?&TOO BAD!";
        if(gg == 2) global.msg[0]= "Get your&own,&twerp.";
    }
    if(whatiheard == 4) {
        if(gg == 0) global.msg[0]= "I KNEW&IT!!!&THIEF!!";
        if(gg == 1 || gg == 2)
            global.msg[0]= "HELP!!!&FASHION&POLICE!!";
    }
    if(whatiheard == 20) {
        if(gg == 0) global.msg[0]= "Hahaha!&Say something&else funny!";
        if(gg == 1) global.msg[0]= "Haha! Wow!&Drake, you suck!";
        if(gg == 2) global.msg[0]= "Hahaha!&Where do you get&your ideas!?!";
        mercymod= 200;
    }
    global.msg[1]= "%%%";
    global.typer= 2;
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    global.border= 3;
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
}


/*  */
