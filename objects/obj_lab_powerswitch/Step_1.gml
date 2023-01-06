if(con == 5) {
    global.interact= 1;
    caster_pause(global.currentsong);
    snd_play(snd_noise );
    con= 6;
    alarm[4]= 60;
}
if(con == 6) global.interact= 1;
if(con == 7) {
    global.facing= 0;
    dis= caster_load("music/sfx_disturbing.ogg");
    caster_loop(dis, 0.4, 0.8);
    tr= caster_load("music/sfx_generate.ogg");
    am[0]= scr_marker(60, 280, 2126);
    am[0].image_speed= 0.1;
    am[1]= scr_marker(120, 280, 2126);
    am[1].image_speed= 0.1;
    am[2]= scr_marker(160, 280, 2126);
    am[2].image_speed= 0.1;
    am[3]= scr_marker(220, 280, 2126);
    am[3].image_speed= 0.1;
    con= 8;
    alarm[9]= 30;
    alarm[4]= 350;
}
if(con == 9) {
    caster_stop(dis);
    i= 0;
    repeat(4)  {
        am[i].vspeed= 0;
        am[i].sprite_index= spr_amalgam_sinkless2 ;
        i++;
    }
    alarm[9]= -1;
    alarm[10]= -1;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 47;
    global.msg[0]= "* Hey^1!&* Stop!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 10;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    con= 11;
    alarm[4]= 20;
    al= instance_create(140, 280, obj_alphys_actor );
    al.direction= 90;
    al.sprite_index= al.usprite;
    al.vspeed= -6;
    am[1].hspeed= -1;
    am[2].hspeed= 1;
}
if(con == 12) {
    i= 0;
    repeat(4)  {
        am[i].sprite_index= spr_amalgam_sinkless3 ;
        i++;
    }
    al.vspeed= 0;
    al.fun= 1;
    al.sprite_index= al.utsprite;
    al.image_speed= 0;
    am[1].hspeed= 0;
    am[2].hspeed= 0;
    con= 13;
    alarm[4]= 15;
}
if(con == 14) {
    global.facechoice= 6;
    global.faceemotion= 6;
    global.flag[430]= 3;
    global.msg[0]= "* I got you guys some&  food^1, okay!?/%%";
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 0;
    con= 15;
}
if(!instance_exists(OBJ_WRITER ) && con == 15) {
    i= 0;
    repeat(4)  {
        am[i].sprite_index= spr_amalgam_sinkless1 ;
        am[i].vspeed= 3;
        i++;
    }
    con= 16;
}
if(con == 16 && am[0].y > __view_get( e__VW.YView, 0 ) + 300) {
    con= 20;
    i= 0;
    repeat(4)  {
        am[i].sprite_index= spr_amalgam_sinkless1 ;
        am[i].vspeed= 0;
        i++;
    }
}
if(con == 20) {
    global.msg[0]= "\\\\E4* Sorry about that.../";
    global.msg[1]= "\\\\E2* They get kind of sassy&  when they don\\'t get&  fed on time./";
    global.msg[2]= "\\\\E3* Um!!/";
    if(global.flag[495] > 0)
        global.msg[2]= "\\\\E3* I think they smelled&  the potato chips you&  had^1, and.../";
    global.msg[3]= "\\\\E3* Anyway!/";
    global.msg[4]= "\\\\E6* The power went out^1,&  and I\\'ve been trying&  to turn it back on!/";
    global.msg[5]= "\\\\E4* But it seems like you&  were one step ahead&  of me./";
    global.msg[6]= "\\\\E2* This was probably just&  a big inconvenience&  for you.../";
    global.msg[7]= "\\\\E4* B-but I appreciate&  that you came here&  to back me up!/";
    global.msg[8]= "\\\\E4* As I said^1, I was&  afraid I might.../";
    global.msg[9]= "\\\\E8* Not come back.../";
    global.msg[10]= "\\\\E5* But that\\'s not because&  of these guys or&  anything!/";
    global.msg[11]= "\\\\E4* I was just worried I&  would be too afraid.../";
    global.msg[12]= "\\\\E9* To tell the truth.../";
    global.msg[13]= "\\\\E8* That I might run away^1,&  or do something.../";
    global.msg[14]= "\\\\E9* Cowardly./";
    global.msg[15]= "* .../";
    global.msg[16]= "*\\\\E8 Uh..^1. I..^1.&* I suppose I owe you&  an explanation./";
    global.msg[17]= "\\\\E9* As you probably know^1,&  ASGORE asked me to study&  the nature of SOULs./";
    global.msg[18]= "\\\\E3* During my research^1, I&  isolated a power I&  called " + chr(ord("\"")) + "determination." + chr(ord("\"")) + "/";
    global.msg[19]= "\\\\E6* I injected it into dying&  monsters so their SOULs&  would last after death./";
    global.msg[20]= "\\\\E9* But the experiment&  failed./";
    global.msg[21]= "* You see^1, unlike humans\\',&  monsters\\' bodies don\\'t&  have enough.../";
    global.msg[22]= "* Physical matter to take&  those concentrations&  of " + chr(ord("\"")) + "determination." + chr(ord("\"")) + "/";
    global.msg[23]= "* Their bodies started to&  melt^1, and lost what&  physicality they had./";
    global.msg[24]= "\\\\E3* Pretty soon^1, all of the&  test subjects had melted&  together into.../";
    global.msg[25]= "\\\\E8* Those./";
    global.msg[26]= "\\\\E9* Seeing them like this^1,&  I knew.../";
    global.msg[27]= "\\\\E8* I couldn\\'t tell their&  families about it./";
    global.msg[28]= "\\\\E8* I couldn\\'t tell anyone&  about it./";
    global.msg[29]= "\\\\E9* No matter how much&  everyone was asking me./";
    global.msg[30]= "\\\\E9* And I was too afraid to&  do any more work^1,&  knowing.../";
    global.msg[31]= "\\\\E8* ... everything I\\'d done&  so far had been such&  a horrific failure./";
    global.msg[32]= "\\\\E9* ... but now./";
    global.msg[33]= "\\\\E9* Now^1, I\\'ve changed my&  mind about all this./";
    global.msg[34]= "\\\\E9* I\\'m going to tell&  everyone what I\\'ve done./";
    global.msg[35]= "\\\\E9* .../";
    global.msg[36]= "* It\\'s going to be hard./";
    global.msg[37]= "* Being honest..^1.&* Believing in my../";
    global.msg[38]= "* I\\'m sure there will be&  times where I\\'ll&  struggle./";
    global.msg[39]= "* I\\'m sure there will be&  times where I screw&  up again./";
    global.msg[40]= "\\\\E0* But knowing^1, deep down^1,&  that I have friends&  to fall back on.../";
    global.msg[41]= "\\\\E7* I know it\\'ll be a&  lot easier to stand&  on my own./";
    global.msg[42]= "* Thank you./%%";
    con= 21;
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 0;
}
if(con == 21 && instance_exists(OBJ_WRITER )) {
    sn= OBJ_WRITER.stringno;
    if(sn == 0) al.sprite_index= al.rtsprite;
    if(sn == 1 || sn == 3 || sn == 6 || sn == 9 || sn == 19)
        al.sprite_index= al.utsprite;
    if(sn == 2 || sn == 5) al.sprite_index= al.rtsprite;
    if(sn == 8 || sn == 13) al.sprite_index= spr_alphys_r_sad ;
}
if(con == 21 && !instance_exists(OBJ_WRITER )) {
    i= 0;
    repeat(4)  {
        am[i].sprite_index= spr_amalgam_sinkless1 ;
        am[i].vspeed= -3;
        i++;
    }
    con= 22;
    alarm[4]= 30;
}
if(con == 23) {
    i= 0;
    repeat(4)  {
        am[i].sprite_index= spr_amalgam_sinkless1 ;
        am[i].image_speed= 0;
        am[i].vspeed= 0;
        i++;
    }
    al.sprite_index= al.dtsprite;
    con= 24;
    alarm[4]= 30;
}
if(con == 25) {
    global.msg[0]= "* Come on^1, guys./";
    global.msg[1]= "* It\\'s time for everyone&  to go home./%%";
    ds= instance_create(0, 0, obj_dialoguer );
    ds.side= 0;
    con= 26;
}
if(con == 26 && !instance_exists(OBJ_WRITER )) {
    al.vspeed= 3;
    al.sprite_index= al.dsprite;
    al.image_speed= 0.25;
    i= 0;
    repeat(4)  {
        am[i].sprite_index= spr_amalgam_sinkless1 ;
        am[i].image_speed= 0.25;
        am[i].vspeed= 3;
        i++;
    }
    con= 27;
    alarm[4]= 60;
}
if(con == 28) {
    // obj_mainchara
    with(1570) uncan= 0;
    global.interact= 0;
    global.flag[430]= 0;
    global.flag[485]= 1;
    global.flag[493]= 12;
    global.flag[454]= 1;
    if(global.plot < 201) global.plot= 201;
    con= 0;
    caster_resume(global.currentsong);
}


/*  */
