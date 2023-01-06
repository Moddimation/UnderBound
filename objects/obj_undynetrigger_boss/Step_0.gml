// obj_undynetrigger_boss
with(1129) {
    if(instance_exists(obj_mainchara ) && obj_mainchara.y < 600 && con == 0 && global.interact == 0) {
        remembery= obj_mainchara.y;
        rememberyyy= obj_mainchara.y;
        if(obj_mainchara.x < 128) obj_mainchara.x= 128;
        global.interact= 1;
        con= 1;
        vol= caster_get_volume(global.currentsong);
        undyne= instance_create(137, 135, obj_undynea_actor );
        undyne.sprite_index= undyne.usprite;
    }
    if(con == 1) {
        obj_mainchara.cutscene= 1;
        __view_set( e__VW.Object, 0, -4 );
        con= 2;
        alarm[4]= 33;
    }
    if(con == 2) {
        if(vol > 0) vol-= 0.034;
        caster_set_volume(global.currentsong, vol);
    }
    if(con == 3) {
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (4) );
        if(__view_get( e__VW.YView, 0 ) < 80) con= 4;
    }
    if(con == 4) {
        con= 5;
        alarm[4]= 30;
    }
    if(con == 6) {
        global.facechoice= 0;
        global.typer= 37;
        global.msc= 0;
        global.msg[0]= "* Seven./";
        global.msg[1]= "\\\\W* Seven human souls^1, and&  \\\\RKing ASGORE\\\\W will become&  a god./";
        global.msg[2]= "* Six./";
        global.msg[3]= "* That\\'s how many we have&  collected thus far./";
        global.msg[4]= "* Understand?/";
        global.msg[5]= "* Through your seventh and&  final soul^1, this world will&  be transformed./";
        global.msg[6]= "* First^1, however^1, as is customary&  for those who make it this&  far.../";
        global.msg[7]= "* I shall tell you the tragic&  tale of our people./";
        global.msg[8]= "* It all started^1, long ago.../%%";
        g= instance_create(0, 0, obj_dialoguer );
        g.side= 1;
        con= 7;
    }
    if(con == 7 && instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 2)
            undyne.sprite_index= undyne.rsprite;
        if(OBJ_WRITER.stringno == 4)
            undyne.sprite_index= undyne.dsprite;
        if(OBJ_WRITER.stringno == 6)
            undyne.sprite_index= undyne.lsprite;
        if(OBJ_WRITER.stringno == 7)
            undyne.sprite_index= undyne.dsprite;
        if(OBJ_WRITER.stringno == 8)
            undyne.sprite_index= undyne.lsprite;
    }
    if(con == 7 && !instance_exists(OBJ_WRITER )) {
        con= 8;
        if(global.flag[67] == 1) con= 49;
        alarm[4]= 60;
    }
    if(con == 9) {
        undyne.sprite_index= undyne.dsprite;
        global.msg[0]= "* .../";
        global.msg[1]= "* No^1, you know what?/%%";
        g= instance_create(0, 0, obj_dialoguer );
        g.side= 1;
        con= 10;
    }
    if(con == 10 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "* SCREW IT^3!%%";
        event_user(1);
        con= 11;
    }
    if(con == 11 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "* WHY SHOULD I TELL THAT STORY^1 %%";
        event_user(1);
        con= 12;
    }
    if(con == 12 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "* WHEN YOU\\'RE ABOUT TO DIE!?^1! %%";
        event_user(1);
        con= 13;
    }
    if(con == 13 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "* NGAAAAAHHHHHHHHHHHHHHHHH^1! %%";
        event_user(1);
        __view_set( e__VW.Angle, 0, 0 );
        con= 14;
    }
    if(con == 14) {
        con= 15;
        white= instance_create(0, 0, obj_npc_marker );
        white.sprite_index= spr_pixwht ;
        white.image_speed= 0;
        white.image_xscale= 200;
        white.image_yscale= 200;
        white.visible= 1;
        white.image_alpha= 0;
        alp= 0;
    }
    if(con == 15) {
        alp+= 0.02;
        white.image_alpha= alp;
        if(alp >= 1) con= 16;
    }
    if(con == 16) {
        con= 17;
        undyne.x+= 3;
        undyne.sprite_index= spr_undyne_eyeding ;
        undyne.image_index= 0;
        undyne.image_speed= 0;
        fakedrawer= 0;
        __view_set( e__VW.Visible, 1, 0 );
        __view_set( e__VW.HView, 1, 240 );
        __view_set( e__VW.WView, 1, 320 );
        __view_set( e__VW.XView, 1, 0 );
        __view_set( e__VW.YView, 1, 60 );
        __view_set( e__VW.Object, 0, -4 );
        global.flag[18]= 0;
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 60 );
        __view_set( e__VW.HView, 0, 240 );
        __view_set( e__VW.WView, 0, 320 );
        alarm[4]= 20;
    }
    if(con == 18) {
        con= 19;
        alarm[4]= 60;
    }
    if(con == 19) {
        if(alp > 0) alp-= 0.05;
        white.image_alpha= alp;
    }
    if(con == 20) {
        with(white) instance_destroy();
        con= 21;
        ax= 0;
        alarm[4]= 90;
    }
    if(con == 21) {
        if(ax < 8) ax+= 0.2;
        if(ax == 4) snd_play(snd_bell );
        undyne.image_index= floor(ax);
    }
    if(con == 22) {
        undyne.sprite_index= spr_undyne_starkd_nomask ;
        con= 23;
        obj_mainchara.y= 0;
        obj_mainchara.visible= 0;
        alarm[4]= 2;
    }
    if(con == 24) {
        global.facechoice= 5;
        global.faceemotion= 1;
        global.typer= 37;
        q= 0;
        if(global.kills > 0) q= 1;
        if(global.kills == 1 && global.flag[4] == 1) q= 0;
        if(global.kills == 0) q= 0;
        if(q == 0) {
            ini_open("undertale.ini");
            ud= ini_read_real("Undyne", "UD", 0);
            ini_close();
            global.msg[0]= "* YOU!/";
            global.msg[1]= "* You\\'re standing in&  the way of everybody\\'s&  hopes and dreams!/";
            global.msg[2]= "\\\\E4* Alphys\\'s history books&  made me think&  humans were cool.../";
            global.msg[3]= "\\\\E0* ... with their giant&  robots and flowery&  swordswomen./";
            global.msg[4]= "\\\\E1* BUT YOU?/";
            global.msg[5]= "\\\\E2* You\\'re just a coward!/";
            global.msg[6]= "\\\\E3* Hiding behind that kid&  so you could run away&  from me again!/";
            if(global.flag[98] == 2 || global.flag[98] == 0)
                global.msg[6]= "* You abandoned your&  friend just so you&  could run away!/";
            global.msg[7]= "\\\\E2* And let\\'s not forget&  your wimpy goody-two-&  shoes-schtick!/";
            global.msg[8]= "\\\\E6* Oooh^1! I\\'m making such a&  difference by hugging&  random strangers!/";
            global.msg[9]= "*\\\\E3 You know what would&  be more valuable&  to everyone?/";
            global.msg[10]= "*\\\\E1 IF YOU WERE DEAD!!!/";
            global.msg[11]= "\\\\E0* That\\'s right^1, human^1!&* Your continued&  existence is a crime!/";
            global.msg[12]= "* Your life is all&  that stands between&  us and our freedom!/";
            global.msg[13]= "* Right now^1, I can&  feel everyone\\'s hearts&  pounding together!/";
            global.msg[14]= "\\\\E0* Everyone\\'s been&  waiting their whole&  lives for this moment!/";
            global.msg[15]= "\\\\E0* But we\\'re not&  nervous at all./";
            global.msg[16]= "\\\\E1* When everyone puts&  their hearts together^1,&  they can\\'t lose!/";
            global.msg[17]= "\\\\E5* Now^1, human^1!&* Let\\'s end this^1,&  right here^1, right now./";
            global.msg[18]= "\\\\E0* I\\'ll show you how&  determined monsters&  can be!/";
            global.msg[19]= "\\\\E0* Step forward when&  you\\'re ready^1!&* Fuhuhuhu!/%%";
            if(ud > 0) {
                global.msg[7]= "\\\\E1* And^1! And!/";
                global.msg[8]= "\\\\E7*... and something\\'s&  been bothering me^1,&  too./";
                global.msg[9]= "\\\\E4* The whole time I was&  chasing after you.../";
                global.msg[10]= "\\\\E7* I felt something..^1.&* Strange./";
                global.msg[11]= "* The echoes of something&  warm^1, something.../";
                global.msg[12]= "\\\\E9* Something like " + chr(ord("\"")) + "I miss&  being friends with you." + chr(ord("\"")) + "/";
                global.msg[13]= "\\\\E2* BUT THAT\\'S RIDICULOUS!/";
                global.msg[14]= "\\\\E6I WOULD NEVER GET&  CHUMMY WITH A COWARD&  LIKE YOU!/";
                global.msg[15]= "\\\\E1* You^1!&* You must have been&  mind-controlling me!/";
                global.msg[16]= "\\\\E6* Manipulating people to&  make them like you..^1.&* What a Grade-A FREAK!/";
                global.msg[17]= "\\\\E1* Now enough^1!&* For everyone\\'s hopes^1!&* For everyone\\'s dreams!/";
                global.msg[18]= "\\\\E2* And for my own&  freaking dignity!/";
                global.msg[19]= "\\\\E3* I^1, UNDYNE^1, will&  knock you down!/%%";
            }
        }
        if(q == 1) {
            global.msg[0]= "* YOU!/";
            global.msg[1]= "* You\\'re standing in&  the way of everybody\\'s&  hopes and dreams!/";
            global.msg[2]= "\\\\E4* Alphys\\'s history books&  made me think humans&  were compassionate.../";
            global.msg[3]= "\\\\E1* BUT YOU?/";
            global.msg[4]= "\\\\E5* You\\'re just a&  remorseless criminal!/";
            global.msg[5]= "* You wander through the&  caverns^1, attacking&  anyone in your path./";
            global.msg[6]= "\\\\E4* Self-defense^1?&* Please./";
            global.msg[7]= "* You didn\\'t kill them&  because you had to./";
            global.msg[8]= "\\\\E5* You killed them&  because it was&  easy for you./";
            global.msg[9]= "* Because it was fun&  for you./";
            global.msg[10]= "\\\\E4* Do you think it&  was fun when I&  found out...?/";
            global.msg[11]= "* Do you think it\\'s&  fun when people\\'s&  family members.../";
            global.msg[12]= "* ... never come home^1?&* Is that fun?/";
            if(global.flag[81] == 1) {
                global.msg[11]= "* Shyren^1, who was&  just learning to&  sing.../";
                global.msg[12]= "* ... was dead^1, because&  of the whims of&  a single human?/";
            }
            if(global.flag[57] == 2) {
                global.msg[11]= "* A teenage comedian&  who fell in with&  the wrong crowd.../";
                global.msg[12]= "* ... was dead^1, because&  of the whims of&  a single human?/";
            }
            if(global.flag[52] == 1) {
                global.msg[11]= "* Doggo^1, who always&  made me laugh.../";
                global.msg[12]= "* ... was dead^1, because&  of the whims of&  a single human?/";
            }
            if(global.flag[53] == 1) {
                global.msg[11]= "* Those two sweet dogs^1,&  who always took care&  of each other.../";
                global.msg[12]= "* ... were dead^1, because&  of the whims of&  a single human?/";
            }
            if(global.flag[54] == 1) {
                global.msg[11]= "* That big dog^1, who&  wanted nothing more&  than to play.../";
                global.msg[12]= "* ... was dead^1, because&  of the whims of&  a single human?/";
            }
            if(global.flag[55] == 1) {
                global.msg[11]= "* Lesser Dog^1, who&  wanted nothing more&  than affection.../";
                global.msg[12]= "* ... was dead^1, because&  of the whims of&  a single human?/";
            }
            if(global.flag[55] == 1 && global.flag[54] == 1 && global.flag[53] == 1 && global.flag[52]) {
                global.msg[11]= "* The Snowdin Canine&  Unit had been&  completely decimated./";
                global.msg[12]= "* My troops and friends^1,&  destroyed..^1.&* Is that fun?/";
            }
            global.msg[13]= "\\\\E5* No./";
            global.msg[14]= "\\\\E3* But your time\\'s up^1,&  villain!/";
            global.msg[15]= "\\\\E0* You won\\'t hurt anyone&  else./";
            global.msg[16]= "* A knight in shining&  armor has appeared./";
            global.msg[17]= "\\\\E4* And all the pain&  you inflicted on&  the fallen.../";
            global.msg[18]= "* Every hope^1, every&  dream you\\'ve turned&  to dust.../";
            global.msg[19]= "\\\\E0* She\\'s gonna send&  right back through&  her spear!/";
            global.msg[20]= "\\\\E1* NGAHHH!!!/";
            global.msg[21]= "\\\\E0* I\\'ll show you how&  determined monsters&  truly are!/";
            global.msg[22]= "* Come on^1!&* Step forward and&  let\\'s end this!/%%";
        }
        g= instance_create(0, 0, obj_dialoguer );
        g.side= 1;
        con= 25;
    }
    if(con == 25 && !instance_exists(OBJ_WRITER )) {
        obj_mainchara.visible= 1;
        obj_mainchara.y= rememberyyy;
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (8) );
        if(__view_get( e__VW.YView, 0 ) >= yy) {
            save= instance_create(220, 660, obj_savepoint );
            __view_set( e__VW.Object, 0, 1570 );
            obj_mainchara.cutscene= 0;
            global.interact= 0;
            con= 26;
            global.plot= 121;
            if(instance_exists(undyne)) {
                with(undyne) instance_destroy();
            }
            instance_destroy();
        }
    }
    if(con == 50) {
        undyne.sprite_index= undyne.usprite;
        global.msg[0]= "* .../";
        global.msg[1]= "* Forget it./%%";
        con= 51;
        g= instance_create(0, 0, obj_dialoguer );
        g.side= 1;
    }
    if(con == 51 && !instance_exists(OBJ_WRITER )) {
        undyne.sprite_index= undyne.rsprite;
        con= 52;
        alarm[4]= 60;
    }
    if(con == 53) {
        undyne.sprite_index= undyne.dsprite;
        global.typer= 37;
        global.msc= 0;
        global.facechoice= 5;
        global.faceemotion= 4;
        global.msg[0]= "* Look./";
        global.msg[1]= "* Papyrus didn\\'t come&  to his meeting&  today./";
        global.msg[2]= "* Say what you want&  about him./";
        global.msg[3]= "* He\\'s weird^1, he\\'s&  naive^1, he\\'s self-&  absorbed.../";
        global.msg[4]= "\\\\E5* But Papyrus has&  NEVER missed a&  meeting./";
        global.msg[5]= "\\\\E4* And no matter what&  time you call him&  on the phone.../";
        global.msg[6]= "* Night^1, day^1, afternoon^1,&  morning.../";
        global.msg[7]= "\\\\E5* He ALWAYS answers&  within the first&  two rings./";
        global.msg[8]= "\\\\E4* .../";
        global.msg[9]= "* But now he\\'s gone./";
        global.msg[10]= "* And his brother&  isn\\'t around^1,&  either./";
        global.msg[11]= "\\\\E5* .../";
        global.msg[12]= "* What did you do&  to him?/";
        global.msg[13]= "* What did you DO&  TO HIM?/";
        global.msg[14]= "\\\\E4* Papyrus^1, who I have&  trained every day.../";
        global.msg[15]= "* Even though I KNOW&  he\\'s too goofy to&  ever hurt anyone.../";
        global.msg[16]= "\\\\E5* .../";
        global.msg[17]= "\\\\E4* Go ahead^1.&* Prepare however you&  want./";
        global.msg[18]= "\\\\E5* But when you step&  forward.../";
        global.msg[19]= "\\\\E1* I will KILL you./%%";
        g= instance_create(0, 0, obj_dialoguer );
        g.side= 1;
        con= 25;
    }
}

/* */
/*  */
