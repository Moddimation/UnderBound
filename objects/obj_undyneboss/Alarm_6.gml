if(obj_heart.sprite_index == 39 && died == 0) {
    if(global.monsterhp[myself] < global.monstermaxhp[myself] * 0.75 && lesson < 5) {
        lesson= 6;
        order= 6;
        damagecause= 1;
    }
    if(global.monsterhp[myself] < global.monstermaxhp[myself] * 0.5 && lesson < 11) {
        lesson= 11;
        order= 12;
        damagecause= 2;
    }
    if(global.monsterhp[myself] < global.monstermaxhp[myself] * 0.2 && lesson < 20) {
        lesson= 20;
        order= 22;
        damagecause= 3;
        rating+= 2;
    }
}
if(order == 12 && global.flag[99] < 2) global.flag[99]= 2;
if(order == 22 && global.flag[99] < 3) global.flag[99]= 3;
if(lesson > 19 && obj_heart.sprite_index == 34 && defadjust == 0) {
    global.monsterdef[myself]= -15;
    if(global.monsterhp[myself] > global.monstermaxhp[myself] * 0.3)
        global.monsterdef[myself]= -25;
    if(global.monsterhp[myself] > global.monstermaxhp[myself] * 0.4)
        global.monsterdef[myself]= -35;
    if(global.monsterhp[myself] > global.monstermaxhp[myself] * 0.5)
        global.monsterdef[myself]= -50;
    if(global.monsterhp[myself] > global.monstermaxhp[myself] * 0.75)
        global.monsterdef[myself]= -70;
    if(global.monsterhp[myself] == global.monstermaxhp[myself])
        global.monsterdef[myself]= -90;
    defadjust= 1;
}
blcontype= 0;
uncancel= 0;
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "Ngahhh!";
if(mycommand < 20) global.msg[0]= "Bring&it on!";
if(mycommand < 40) global.msg[0]= "C\\'mon!";
if(mycommand < 60) global.msg[0]= "Fuhuhu!";
if(mycommand < 80) global.msg[0]= "Ngahh!!";
if(mycommand < 100) global.msg[0]= "Urahhh!!";
if(damagecause > 0) {
    if(damagecause == 1)
        global.msg[0]= "\\\\E1  You\\'re strong...&  But not strong&  enough!";
    if(damagecause == 2)
        global.msg[0]= "\\\\E4  You\\'re a pain in&  the neck, huh?";
    if(damagecause == 3)
        global.msg[0]= "\\\\E5  DIE ALREADY, YOU&  LITTLE BRAT!";
    blcontype= 1;
}
global.msg[1]= "%%%";
global.typer= 39;
if(order > 0) {
    if(order == 1) {
        uncancel= 1;
        blcontype= 1;
        global.msg[0]= "  \\\\XAs long as you\\'re&  \\\\GGREEN\\\\X you \\\\RCAN\\'T&  ESCAPE\\\\X!/";
        global.msg[1]= "  \\\\XUnless you learn&  to \\\\Rface danger&  head-on\\\\X.../";
        global.msg[2]= "  You won\\'t last&  a SECOND against&  ME!/%%";
    }
    if(order == 2) {
        uncancel= 1;
        blcontype= 1;
        if(mercied > 0)
            global.msg[0]= "  You^1?&  Sparing ME^1?&  Fuhuhuhu!/";
        global.msg[1]= "  How insulting^1!&  I\\'d NEVER&  surrender to the&  likes of you!/%%";
        global.msg[0]= "  Not bad^1!&  Then how about&  THIS!?/%%";
        if(hitno > 0 && hitfirst == 3) {
            global.msg[0]= "\\\\E0  I wanted this to&  be a fair fight./";
            global.msg[1]= "\\\\E1  I thought if I&  beat you like&  this.../";
            global.msg[2]= "  It\\'d truly show&  how strong&  monsters can be./";
            global.msg[3]= "\\\\E4  BUT NOW???/";
            global.msg[4]= "\\\\E5  I DON\\'T CARE!/";
            global.msg[5]= "  I\\'M NOT YOUR&  FREAKING&  KINDERGARTEN&  TEACHER!/";
            global.msg[6]= "\\\\E1  Unless your&  kindergarten&  teacher.../";
            global.msg[7]= "\\\\E5  DOES THIS!/%%";
            rating= 6;
            berserk= 1;
            order= 12;
            lesson= 11;
            hitfirst++;
        }
        if(hitno > 0 && hitfirst == 2) {
            global.msg[0]= "\\\\E5  WHAT ARE YOU&  DOING?/";
            global.msg[1]= "  JUST FACE&  UPWARDS!!!/";
            global.msg[2]= "  IT\\'S NOT HARD!/";
            global.msg[3]= "\\\\E0 %%";
            order= 1;
            lesson= 1;
            hitfirst++;
        }
        if(hitno > 0 && hitfirst == 1) {
            global.msg[0]= "\\\\E4  Look./";
            global.msg[1]= "\\\\E4  I gave you a&  spear to block&  the bullets with./";
            global.msg[2]= "\\\\E4  Do I have to&  explain this&  any more&  clearly?/";
            global.msg[3]= "\\\\E0 %%";
            order= 1;
            lesson= 1;
            hitfirst++;
        }
        if(hitno > 0 && hitfirst == 0) {
            global.msg[0]= "\\\\E1  \\\\XWhen I said&  \\\\Rface towards&  danger\\\\X.../";
            global.msg[1]= "\\\\E4  I meant face&  towards the&  bullets!/";
            global.msg[2]= "\\\\E0 %%";
            order= 1;
            lesson= 1;
            hitfirst++;
        }
    }
    if(order == 3) {
        blcontype= 1;
        global.msg[0]= "  For years,&  we\\'ve dreamed&  of a happy&  ending...";
    }
    if(order == 4) {
        blcontype= 1;
        global.msg[0]= "  And now,&  sunlight is&  just within&  our reach!";
    }
    if(order == 5) {
        blcontype= 1;
        global.msg[0]= "  I won\\'t let&  you snatch it&  away from&  us!";
    }
    if(order == 6) {
        global.msg[0]= "\\\\E1  NGAHHH!&  Enough warming&  up!/%%";
        blcontype= 1;
        uncancel= 1;
    }
    if(order == 7) {
        blcontype= 1;
        global.msg[0]= "  Heh...&  You\\'re tough!";
        if(mercied > 0) {
            uncancel= 1;
            global.msg[0]= "  Mercy^1!&  Ha!/";
            global.msg[1]= "  I still can\\'t&  believe YOU&  want to spare&  ME!/%%";
        }
    }
    if(order == 8) {
        blcontype= 1;
        global.msg[0]= "  But even if&  you could&  beat me...";
        if(mercied > 0) global.msg[0]= "  But even if&  I spared&  YOU...";
    }
    if(order == 9) {
        blcontype= 1;
        global.msg[0]= "\\\\X  No human has&  EVER made it&  past&  \\\\RASGORE\\\\X!";
    }
    if(order == 10) {
        blcontype= 1;
        global.msg[0]= "  Honestly^1,&  killing you&  now is an act&  of mercy...!";
    }
    if(order == 11) {
        blcontype= 1;
        global.msg[0]= "  ...";
    }
    if(global.flag[99] > 1) {
        if(order == 9) {
            blcontype= 1;
            global.msg[0]= "  Honestly, I\\'m&  doing you&  a favor...";
        }
        if(order == 10) {
            blcontype= 1;
            global.msg[0]= "\\\\X  No human has&  EVER made it&  past&  \\\\RASGORE\\\\X!";
        }
        if(order == 11) {
            blcontype= 1;
            global.msg[0]= "\\\\E1  Killing you&  now is an act&  of mercy!";
        }
    }
    if(order == 12 && hitfirst < 3) {
        global.msg[0]= "\\\\E4  So STOP being&  so damn&  resilient!/%%";
        blcontype= 1;
        uncancel= 1;
    }
    if(order == 13) {
        blcontype= 1;
        global.msg[0]= "  What the&  hell are&  humans made&  out of!?";
    }
    if(order == 14) {
        blcontype= 1;
        global.msg[0]= "  Anyone else&  would be DEAD&  by now!";
    }
    if(order == 15) {
        blcontype= 1;
        global.msg[0]= "  Alphys told me&  humans were&  determined...";
    }
    if(order == 16) {
        blcontype= 1;
        global.msg[0]= "  I see now what&  she meant by&  that!";
    }
    if(order == 17) {
        blcontype= 1;
        global.msg[0]= "  But I\\'m&  determined,&  too!";
    }
    if(order == 18) {
        blcontype= 1;
        global.msg[0]= "  Determined to&  end this&  RIGHT NOW!";
    }
    if(order == 19) {
        blcontype= 1;
        global.msg[0]= "  ... RIGHT NOW!";
    }
    if(order == 20) {
        blcontype= 1;
        global.msg[0]= "  ... RIGHT...&  ...&  ... NOW!!";
    }
    if(order == 21) {
        blcontype= 1;
        global.msg[0]= "  Ha...&  Ha...";
    }
    if(order == 22) {
        global.msg[0]= "\\\\E5  NGAHHH!!!&  DIE ALREADY, YOU&  LITTLE BRAT!/%%";
        blcontype= 1;
        uncancel= 1;
    }
    if(order == 23) {
        blcontype= 1;
        global.msg[0]= "  YOU\\'RE GETTING&  IN MY WAY!";
        if(mercied > 0)
            global.msg[0]= "  I WILL NEVER&  TAKE MERCY FROM&  THE LIKES OF YOU!";
    }
    if(order == 24) {
        blcontype= 1;
        global.msg[0]= "  I WILL NOT&  BE DEFEATED!";
        if(mercied > 0) global.msg[0]= "  YOU! WILL!&  NEVER! SPARE! ME!";
    }
    if(order > 24) {
        blcontype= 1;
        global.msg[0]= "  ...";
    }
}
if(order < 0) {
    if(order == -40)
        global.msg[0]= "  Come on^1, is that&  all you\\'ve got!?/%%";
    if(order == -39) {
        global.msg[0]= "  ... pathetic./";
        global.msg[1]= "  You\\'re going to&  have to try&  harder than that!/%%";
    }
    if(order == -38)
        global.msg[0]= "  S-see how strong&  we are when we&  believe in&  ourselves?/%%";
    if(order == -37) {
        global.msg[0]= "  H... heh.../";
        global.msg[1]= "  Had enough yet?/%%";
    }
    if(order == -36) {
        global.msg[0]= "\\\\E7  .../";
        global.msg[1]= "  ... I won\\'t..^1.&  ... give up.../%%";
    }
    if(order == -35) global.msg[0]= "\\\\E7.../%%";
    blcontype= 1;
    uncancel= 1;
}
if(blcontype == 0)
    blcon= instance_create(x + 245, y + 52, obj_blconsm );
if(blcontype == 1)
    blcon= instance_create(blconx, blcony, obj_blconwdflowey );
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
if(mycommand > 50 && obj_heart.sprite_index != 39)
    borderspec= 1;
else  borderspec= 0;
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
if(obj_heart.sprite_index == 39) {
    global.border= 13;
    obj_heart.x= room_width / 2 - 8;
    obj_heart.y= obj_uborder.y + 34;
    greenlock= 1;
} else  {
    if(borderspec == 1) {
        obj_heart.x= room_width / 2 - 8;
        obj_heart.y= obj_uborder.y + 34;
        global.border= 14;
    }
}
damagecause= 0;

/* */
/*  */
