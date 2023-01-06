if(myinteract == 1 && global.interact == 0 && con == 0) {
    global.interact= 1;
    con= 1;
}
if(con == 1) {
    global.facechoice= 0;
    global.typer= 5;
    global.msc= 0;
    global.msg[0]= "* (There\\'s a VHS player with a&  few tapes picked out beside&  it...)/";
    global.msg[1]= "* (They seem to be labelled&  in a specific order.)/";
    global.msg[2]= "* (Will you watch one...?)/%%";
    if(talkedto == 1) global.msg[0]= "* (Choose a tape to watch.)/%%";
    talkedto= 1;
    instance_create(0, 0, obj_dialoguer );
    con= 2;
    buffer= 5;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    buffer--;
    draw_set_color(16777215);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 5, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 80, 0);
    draw_set_color(0);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 8, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 77, 0);
    draw_set_color(16777215);
    draw_set_font(2);
    draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 15, string_hash_to_newline("Cancel"));
    draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 15, string_hash_to_newline("Tape 1"));
    draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 35, string_hash_to_newline("Tape 2"));
    draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 35, string_hash_to_newline("Tape 3"));
    draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 55, string_hash_to_newline("Tape 4"));
    draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 55, string_hash_to_newline("Tape 5"));
    draw_sprite(spr_heartsmall , 0, __view_get( e__VW.XView, 0 ) + 30 + heartx * 110, __view_get( e__VW.YView, 0 ) + 20 + 20 * hearty);
    if(buffer < 0) {
        if(keyboard_check_pressed(38) && hearty > 0)
            hearty--;
        if(keyboard_check_pressed(40) && hearty < 2) {
            if(heartx == 0) {
                if(hearty == 1) hearty++;
                if(hearty == 0) hearty++;
            }
            if(heartx == 1) {
                if(hearty == 1) hearty++;
                if(hearty == 0) hearty++;
            }
        }
        if(keyboard_check_pressed(39) && heartx == 0) {
            if(hearty == 0) heartx++;
            if(hearty == 1) heartx++;
            if(hearty == 2) heartx++;
        }
        if(keyboard_check_pressed(37) && heartx == 1) {
            if(hearty == 0) heartx--;
            if(hearty == 1) heartx--;
            if(hearty == 2) heartx--;
        }
        if(keyboard_multicheck_pressed(0)) {
            con= 100;
            if(heartx == 0 && hearty == 0) con= 100;
            if(heartx == 1 && hearty == 0) {
                con= 10;
                nextcon= 20;
            }
            if(heartx == 0 && hearty == 1) {
                con= 10;
                nextcon= 30;
            }
            if(heartx == 1 && hearty == 1) {
                con= 10;
                nextcon= 40;
            }
            if(heartx == 0 && hearty == 2) {
                con= 10;
                nextcon= 50;
            }
            if(heartx == 1 && hearty == 2) {
                con= 10;
                nextcon= 60;
            }
        }
    }
}
if(con == 10) {
    ivol= caster_get_volume(global.currentsong);
    vol= ivol;
    alph= 0;
    snd_play(snd_item );
    con= 11;
    alarm[4]= 15;
}
if(con == 12) {
    con= 13;
    alarm[4]= 40;
}
if(con == 13) {
    if(vol > 0) vol-= 0.04;
    else  vol= 0;
    caster_set_volume(global.currentsong, vol);
    alph+= 0.04;
    if(alph > 1) alph= 1;
}
if(con == 14) {
    caster_pause(global.currentsong);
    con= nextcon;
}
if(con == 20) {
    hh= caster_load("music/house2.ogg");
    caster_loop(hh, 0.7, 0.8);
    con= 21;
}
if(con == 21) {
    global.msc= 0;
    global.typer= 4;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* Psssst^1.&* Gorey^1, wake up. \\\\Ta/";
    global.msg[1]= "* Mmm^1?&* What is it^1, dear?/";
    global.msg[2]= "* ... err^1, and why do you&  have that video camera? \\\\TT/";
    global.msg[3]= "* Shush^1!&* I want to get your&  reaction./";
    global.msg[4]= "* Gorey^1, dearest^1.&* What is my favorite&  vegetable?\\\\Ta/";
    global.msg[5]= "* Hmmm..^1.&* Carrots^1, right?\\\\TT/";
    global.msg[6]= "* No no no^1!&* My FAVORITE vegetable is.../";
    global.msg[7]= "* Eda-MOM-e./";
    global.msg[8]= "* ... get it???\\\\Ta/";
    global.msg[9]= "* .../";
    global.msg[10]= "* Go back to bed^1, dear.\\\\TT/";
    global.msg[11]= "* No no!^1!&* Not yet^1!&* Hee hee hee./";
    global.msg[12]= "* Now^1, If I were a dog^1,&  what breed of dog would&  I be?\\\\Ta/";
    global.msg[13]= "* Hmmm..^1. I don\\'t know^1, honey^1.&* What kind of dog would&  you be?\\\\TT/";
    global.msg[14]= "* I would be.../";
    global.msg[15]= "* A MOMERANIAN.\\\\Ta/";
    global.msg[16]= "* Hohoho!/";
    global.msg[17]= "* You sure are excited to&  have this child./";
    global.msg[18]= "* You know^1, if you keep&  making jokes like&  this.../";
    global.msg[19]= "* One day^1, you could be.../";
    global.msg[20]= "* ... a famous MOMedian.\\\\TT/";
    global.msg[21]= "* .../";
    global.msg[22]= "* Well^1, I am going to bed.\\\\Ta/";
    global.msg[23]= "* Hey^1!&* Come on^1, Tori^1!&* That one was funny!\\\\TT/";
    global.msg[24]= "* Hahaha^1, I know^1.&* I am just teasing you./";
    global.msg[25]= "* Goodnight^1, dear.\\\\Ta/";
    global.msg[26]= "* Goodnight, honey.\\\\TT/";
    global.msg[27]= "* .../";
    global.msg[28]= "* Oh dear^1, perhaps it is too&  dark in here for the&  video to come out.../%%";
    instance_create(0, 0, obj_dialoguer );
    hhvol= 0.7;
    con= 22;
}
if(con == 22 && !instance_exists(OBJ_WRITER )) {
    hhvol-= 0.04;
    caster_set_volume(hh, hhvol);
    if(hhvol <= 0) {
        caster_free(hh);
        con= 90;
    }
}
if(con == 30) {
    hh= caster_load("music/birdnoise.ogg");
    caster_loop(hh, 0.9, 0.8);
    con= 31;
}
if(con == 31) {
    global.msc= 0;
    global.typer= 76;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* Okay^1, " + global.charname + "^1, are you ready?/";
    global.msg[1]= "* Do your creepy face!/";
    global.msg[2]= "* AHHHHH!^1!&* Hee hee hee!/";
    global.msg[3]= "* Oh^1!&* Wait^1!&* I had the lens cap on.../";
    global.msg[4]= "* What!^1?&* You\\'re not gonna do it&  again...?/";
    global.msg[5]= "* Come on^1, quit tricking me^1!&* Haha!/%%";
    instance_create(0, 0, obj_dialoguer );
    hhvol= 0.7;
    con= 32;
}
if(con == 32 && !instance_exists(OBJ_WRITER )) {
    hhvol-= 0.04;
    caster_set_volume(hh, hhvol);
    if(hhvol <= 0) {
        caster_free(hh);
        con= 90;
    }
}
if(con == 40) {
    hh= caster_load("music/birdnoise.ogg");
    caster_loop(hh, 0.9, 0.9);
    con= 41;
}
if(con == 41) {
    global.msc= 0;
    global.typer= 76;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* Howdy^1, " + global.charname + "^1!&* Smile for the camera!/";
    global.msg[1]= "* Ha^1, this time I got YOU^1!&* I left the cap on..^1.&* ON PURPOSE!/";
    global.msg[2]= "* Now you\\'re smiling for&  noooo reason^1!&* Hee hee hee!/";
    global.msg[3]= "* What^1?&* Oh^1, yeah^1, I remember./";
    global.msg[4]= "* When we tried to make&  butterscotch pie for Dad^1,&  right?/";
    global.msg[5]= "* The recipe asked for cups&  of butter.../";
    global.msg[6]= "* But we accidentally put&  in buttercups instead./";
    global.msg[7]= "* Yeah^1!&* Those flowers got him&  really sick./";
    global.msg[8]= "* I felt so bad^1.&* We made Mom really upset./";
    global.msg[9]= "* I should have laughed it&  off^1, like you did.../";
    global.msg[10]= "* Um^1, anyway^1, where are you&  going with this?/";
    global.msg[11]= "* Huh^1?&* Turn off the camera...^1?&* OK./%%";
    instance_create(0, 0, obj_dialoguer );
    hhvol= 0.7;
    con= 42;
}
if(con == 42 && !instance_exists(OBJ_WRITER )) {
    hhvol-= 0.04;
    caster_set_volume(hh, hhvol);
    if(hhvol <= 0) {
        caster_free(hh);
        con= 90;
    }
}
if(con == 50) {
    hh= caster_load("music/birdnoise.ogg");
    caster_loop(hh, 0.9, 1);
    con= 51;
}
if(con == 51) {
    global.msc= 0;
    global.typer= 76;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* I..^1. I don\\'t like this idea^1,&  " + global.charname + "./";
    global.msg[1]= "* Wh.^1. what^1?&* N-no, I\\'m not.../";
    global.msg[2]= "* ... big kids don\\'t cry./";
    global.msg[3]= "* Yeah^1, you\\'re right./";
    global.msg[4]= "* No^1!&* I\\'d never doubt you^1, " + global.charname + "..^1.&* Never!/";
    global.msg[5]= "* Y..^1. yeah^1!&* We\\'ll be strong^1!&* We\\'ll free everyone./";
    global.msg[6]= "* I\\'ll go get the flowers./%%";
    instance_create(0, 0, obj_dialoguer );
    hhvol= 0.7;
    con= 52;
}
if(con == 52 && !instance_exists(OBJ_WRITER )) {
    hhvol-= 0.04;
    caster_set_volume(hh, hhvol);
    if(hhvol <= 0) {
        caster_free(hh);
        con= 90;
    }
}
if(con == 60) {
    hh= caster_load("music/oogloop.ogg");
    caster_loop(hh, 0.7, 0.6);
    con= 61;
}
if(con == 61) {
    global.msc= 0;
    global.typer= 4;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* " + global.charname + "..^1.&* Can you hear me^1?&* We want you to wake up...\\\\Ta/";
    global.msg[1]= "* " + global.charname + "^1!&* You have to stay determined!/";
    global.msg[2]= "* You can\\'t give up..^1.&* You are the future of humans&  and monsters...\\\\TR/";
    global.msg[3]= "* .../";
    global.msg[4]= "* Psst... " + global.charname + "..^1.&* Please..^1. wake up.../";
    global.msg[5]= "* I don\\'t like this plan&  anymore./";
    global.msg[6]= "* I..^1. I.../";
    global.msg[7]= "* ..^1. no^1, I said..^1.&* I said I\\'d never doubt you./";
    global.msg[8]= "* Six^1, right^1?&* We just have to get six.../";
    global.msg[9]= "* And we\\'ll do it together^1,&  right?/%%";
    instance_create(0, 0, obj_dialoguer );
    hhvol= 0.7;
    con= 62;
}
if(con == 62 && !instance_exists(OBJ_WRITER )) {
    hhvol-= 0.04;
    caster_set_volume(hh, hhvol);
    if(hhvol <= 0) {
        caster_free(hh);
        con= 90;
    }
}
if(con == 90) {
    caster_resume(global.currentsong);
    if(vol < ivol) vol+= 0.05;
    else  vol= ivol;
    caster_set_volume(global.currentsong, vol);
    alph-= 0.05;
    if(alph < 0) {
        alph= 0;
        con= 100;
    }
}
if(con == 100) {
    con= 0;
    myinteract= 0;
    global.interact= 0;
    global.facing= 0;
}
if(alph > 0) {
    draw_set_color(0);
    draw_set_alpha(alph);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_set_alpha(1);
}


/*  */
