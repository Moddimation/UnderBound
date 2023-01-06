if(instance_exists(obj_blconwdflowey ) && textskip == 1)
    scr_textskip();
if(cn == -1) {
    global.typer= 1;
    global.msc= 0;
    if(global.flag[66] == 1) global.msg[0]= "        DATING^1  START!^5 %%";
    else  global.msg[0]= "        HANGOUT^1 START!^5 %%";
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
    cn= 0;
}
if(cn == 0 && !instance_exists(OBJ_WRITER ))
    face_index= 0;
if(cn == 0 && !instance_exists(OBJ_WRITER )) {
    caster_loop(datemusic, 1, 1);
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msc= 0;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    global.msg[0]= "HERE WE ARE!^1!&";
    if(global.flag[66] == 1) global.msg[0]+= "ON OUR DATE!!/";
    else  global.msg[0]+= "HANGING OUT!!/";
    global.msg[1]= "\\\\E3I\\'VE ACTUALLY&NEVER DONE THIS&BEFORE./";
    global.msg[2]= "\\\\E0BUT DON\\'T WORRY!!!/";
    global.msg[3]= "YOU CAN\\'T SPELL&\\'PREPARED\\' WITHOUT&SEVERAL LETTERS&FROM MY NAME!!!/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 1;
}
if(cn == 1 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    global.facechoice= 5;
    image_index= 0;
    image_speed= 0.25;
    snd_play(snd_grab );
    cn= 2;
}
if(cn == 2 && image_index >= 2) {
    image_speed= 0;
    image_index= 2;
    cn= 3;
    alarm[2]= 10;
}
if(cn == 4) {
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    global.msg[0]= "I SNAGGED AN&OFFICIAL&";
    if(global.flag[66] == 1)
        global.msg[0]+= "DATING RULEBOOK";
    else  global.msg[0]+= "HANGOUT GUIDEBOOK";
    global.msg[0]+= "&FROM THE LIBRARY!/";
    global.msg[1]= "WE\\'RE READY TO&HAVE A GREAT&TIME!/";
    global.msg[2]= "\\\\F4 \\\\E8 %";
    global.msg[3]= "LET\\'S SEE.../";
    global.msg[4]= "\\\\XSTEP ONE..^1. PRESS&THE [ C ] KEY ON&YOUR KEYBOARD FOR&";
    if(global.flag[66] == 1)
        global.msg[4]+= "" + chr(ord("\"")) + "\\\\RDATING HUD\\\\X." + chr(ord("\"")) + "/";
    else  global.msg[4]+= "" + chr(ord("\"")) + "\\\\RFRIENDSHIP HUD\\\\X." + chr(ord("\"")) + "/";
    if(joke == 1) {
        global.msg[5]= "\\\\E3I THINK YOU&ALREADY DID&THAT.../%%";
        cn= 6;
        alarm[2]= -1;
    } else  global.msg[4]+= "%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 5.1;
}
if(cn == 5.1) {
    if(!instance_exists(OBJ_WRITER ) && instance_exists(blcon)) {
        with(blcon) instance_destroy();
        if(joke == 0) alarm[2]= 400;
    }
    if(joke == 1) {
        global.msg[5]= "\\\\E3I THINK YOU&ALREADY DID&THAT.../%%";
        cn= 4.3;
        alarm[2]= 90;
    }
}
if(cn == 5.3) {
    global.faceemotion= 0;
    cn= 6;
}
if(cn == 6.1) {
    global.msg[0]= "\\\\E3.../";
    global.msg[1]= "\\\\E3OKAY^1, FORGET IT./%%";
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 6;
}
if(cn < 5.2 && joke == 0 && keyboard_multicheck_pressed(2)) {
    if(cn == 5.1) {
        if(instance_exists(OBJ_WRITER )) {
            // OBJ_WRITER
            with(782) instance_destroy();
        }
        if(instance_exists(blcon)) {
            with(blcon) instance_destroy();
        }
    }
    snd_play(snd_swallow );
    joke= 1;
    graph= instance_create(256, -20, obj_daygraph );
    graph.friction= 0.2;
    graph.vspeed= 4;
    graph2= instance_create(-440, 64, obj_specialgraph );
    graph2.hspeed= 10;
    graph2.friction= 0.1;
    graph3= instance_create(-460, 160, obj_populationgraph );
    graph3.hspeed= 10;
    graph3.friction= 0.1;
    graph4= instance_create(-420, 256, obj_egggraph );
    graph4.hspeed= 10;
    graph4.friction= 0.1;
    graph5= instance_create(980, 80, obj_radar );
    graph5.hspeed= -10;
    graph5.friction= 0.1;
    graph6= instance_create(1020, 244, obj_crimegraph );
    graph6.hspeed= -10;
    graph6.friction= 0.1;
}
if(cn == 6 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    if(joke == 1)
        global.msg[0]= "\\\\E0WOWIE!!^1!&I FEEL SO&INFORMED!!!/";
    else  global.msg[0]= " %";
    global.msg[1]= "I THINK WE\\'RE&READY FOR STEP&TWO!!!/";
    global.msg[2]= "\\\\F4 \\\\E8 %";
    global.msg[3]= "" + chr(ord("\"")) + "STEP TWO..^1.&ASK THEM&";
    if(global.flag[66] == 1) global.msg[3]+= "ON A DATE." + chr(ord("\"")) + "/";
    else  global.msg[3]+= "TO HANG OUT." + chr(ord("\"")) + "/";
    global.msg[4]= "\\\\E0A\\\\F0HEM!/";
    global.msg[5]= "\\\\E1HUMAN^1!&I^1, THE GREAT&PAPYRUS.../";
    if(global.flag[66] == 1)
        global.msg[6]= "WILL GO ON&A DATE WITH&YOU!!!/*";
    else  global.msg[6]= "WILL HANG OUT&WITH YOU!!!/*";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 7;
}
if(cn == 7 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Yes             No       &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 8;
}
if(cn == 8 && choicer == 2) {
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 9;
    choicer= 0;
    alarm[2]= 10;
}
if(cn == 10) {
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    if(choice == 0) {
        global.faceemotion= 9;
        global.facechoice= 3;
        global.msg[0]= "R-REALLY??^1?&WOWIE!!!/";
    } else  {
        global.faceemotion= 0;
        global.facechoice= 4;
        global.msg[0]= "FORTUNATELY^1, IT&ONLY SAYS TO&ASK!!!/";
    }
    global.msg[1]= "\\\\E0I GUESS THAT&MEANS IT\\'S&TIME FOR PART&THREE!!!/";
    global.msg[2]= "\\\\F4 \\\\E8 %";
    global.msg[3]= "" + chr(ord("\"")) + "STEP THREE..^1.&PUT ON NICE&CLOTHES TO&SHOW YOU CARE!" + chr(ord("\"")) + "/";
    global.msg[4]= "\\\\E3.../%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 11;
}
if(cn == 11 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    datevolume-= 0.02;
    if(datevolume < 0.05) {
        datevolume= 0;
        cn= 12;
        caster_stop(datemusic);
    }
    caster_set_volume(datemusic, datevolume);
    joke= 0;
}
if(cn == 12) {
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    global.facechoice= 0;
    global.msg[0]= "\\\\E3WAIT A SECOND./%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 13;
}
if(cn == 13 && !instance_exists(OBJ_WRITER )) {
    caster_loop(datetense, 1, 1);
    cn= 14;
    global.msg[0]= "" + chr(ord("\"")) + "WEAR CLOTHING..." + chr(ord("\"")) + "/";
    global.msg[1]= "THAT THING ON&YOUR BODY.../";
    if(global.armor == 4)
        global.msg[1]= "THAT BANDAGE&HANGING OFF&OF YOU.../";
    if(global.armor == 12) global.msg[1]= "THAT RIBBON IN&YOUR HAIR.../";
    if(global.armor == 15)
        global.msg[1]= "THAT BANDANNA&AROUND YOUR&HEAD.../";
    if(global.armor == 24) global.msg[1]= "THAT TUTU AROUND&YOUR WAIST.../";
    if(global.armor == 44) global.msg[1]= "THOSE GLASSES ON&YOUR FACE.../";
    if(global.armor == 46) global.msg[1]= "THAT APRON YOU&PUT ON.../";
    if(global.armor == 48) global.msg[1]= "THAT COWBOY HAT&ON YOUR HEAD.../";
    if(global.armor == 50) global.msg[1]= "THAT LOCKET&AROUND YOUR NECK./";
    global.msg[2]= "\\\\E1YOU\\'RE WEARING&CLOTHING RIGHT&NOW!!!/";
    global.msg[3]= "\\\\E3NOT ONLY THAT.../";
    global.msg[4]= "\\\\E1EARLIER TODAY^1,&YOU WERE ALSO&WEARING CLOTHING!/";
    global.msg[5]= "\\\\F3 \\\\E2 %";
    global.msg[6]= "NO..^1.&COULD IT BE???/";
    global.msg[7]= "\\\\F0 \\\\E1 %";
    if(global.flag[66] == 1)
        global.msg[8]= "YOU\\'VE WANTED TO&DATE ME FROM&THE VERY&BEGINNING!??/*";
    else 
        global.msg[8]= "YOU\\'VE WANTED TO&HANG OUT WITH&ME FROM THE&VERY BEGINNING!??/*";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 14 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 8 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Yes             No       &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 15;
}
if(cn == 15 && choicer == 2) {
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 16;
    choicer= 0;
}
if(cn == 16) {
    caster_stop(datetense);
    snd_play(snd_damage );
    shudder= 10;
    global.faceemotion= 6;
    alarm[3]= 1;
    instance_create(0, 0, obj_flasher );
    g= instance_create(0, 0, obj_shaker );
    g.vshake= 4;
    g.hshake= 4;
    g.shakespeed= 2;
    cn= 17;
    joke= 2;
    if(instance_exists(obj_graphparent )) obj_graphparent.die= 1;
}
if(cn == 18) {
    cn= 19;
    alarm[2]= 20;
}
if(cn == 20) {
    cn= 20.1;
    global.typer= 22;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    if(choice == 0) {
        global.msg[0]= "NO!!/";
        global.msg[1]= "YOU PLANNED IT&ALL!!!/";
        if(global.flag[66] == 1) {
            global.msg[2]= "YOU\\'RE WAY BETTER&AT DATING THAN&I AM!!!/";
            global.msg[3]= "\\\\XN\\\\E6-NOOOO!!!&YOUR \\\\BDATING POWER\\\\X &...!!!/%%";
        } else  {
            global.msg[2]= "YOU\\'RE WAY BETTER&AT HANGING OUT&THAN I AM!!!/";
            global.msg[3]= "\\\\XN\\\\E6-NOOOO!!!&YOUR \\\\BFRIENDSHIP&POWER\\\\X!!!/%%";
        }
    } else  {
        global.msg[0]= "\\\\E3DESPITE THAT^1, YOU&CHOSE TO WEAR&CLOTHING TODAY^1, OF&ALL DAYS...?/";
        if(global.flag[66] == 1) {
            global.msg[1]= "\\\\E2WAS YOUR INTEREST&IN ME.../";
            global.msg[3]= "\\\\XN\\\\E6-NOOOO!!!&YOUR \\\\BDATING POWER\\\\X &...!!!/%%";
        } else  {
            global.msg[1]= "\\\\E2WAS YOUR&FRIENDSHIP.../";
            global.msg[3]= "\\\\XN\\\\E6-NOOOO!!!&YOUR \\\\BFRIENDSHIP&POWER\\\\X!!!/%%";
        }
        global.msg[2]= "\\\\F3PREDESTINED!?!?/";
    }
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 20.1 && !instance_exists(OBJ_WRITER )) {
    friendgraph.y= 64;
    friendgraph.ideallength= 50;
    if(!instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    snd_play(snd_damage );
    shudder= 10;
    global.faceemotion= 6;
    alarm[3]= 1;
    instance_create(0, 0, obj_flasher );
    g= instance_create(0, 0, obj_shaker );
    g.vshake= 4;
    g.hshake= 4;
    g.shakespeed= 2;
    cn= 19.2;
}
if(cn == 20.2) {
    cn= 20.3;
    alarm[2]= 20;
}
if(cn == 21.3 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 22;
    alarm[2]= 10;
    friendgraph.vspeed= -8;
}
if(cn == 23) {
    cn= 24;
    global.typer= 22;
    global.faceemotion= 7;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.msg[0]= "NYEH!/";
    global.msg[1]= "NYEH HEH HEH!!!/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 24 && !instance_exists(OBJ_WRITER )) {
    cn= 25;
    caster_loop(datefight, 0.85, 1);
    graph3= instance_create(-100, 160, obj_populationgraph );
    graph3.hspeed= 6;
    graph3.friction= 0.1;
    graph3.tough= 1;
    global.msg[0]= "\\\\F0DON\\'T THINK YOU\\'VE&BESTED ME YET!/";
    global.msg[1]= "I^1, THE GREAT&PAPYRUS.../";
    if(global.flag[66] == 1) {
        global.msg[2]= "HAVE NEVER BEEN&BEATEN AT DATING^1,&AND I NEVER WILL!/";
        global.msg[7]= "JUST IN CASE&SOMEBODY HAPPENS&TO ASK ME ON&A DATE!!!/";
    } else  {
        global.msg[2]= "HAVE NEVER BEEN&BEATEN AT HANGING&OUT^1, AND I NEVER&WILL!/";
        global.msg[7]= "JUST IN CASE&SOMEONE WANTS&TO HANG OUT!/";
    }
    global.msg[3]= "\\\\E0I CAN EASILY&KEEP UP WITH&YOU!!!/";
    global.msg[4]= "\\\\E1YOU SEE^1,&I^1, TOO^1, CAN WEAR&CLOTHING!!!/";
    global.msg[5]= "\\\\E3IN FACT.../";
    global.msg[6]= "\\\\E1I ALWAYS WEAR MY&" + chr(ord("\"")) + "SPECIAL" + chr(ord("\"")) + " CLOTHES&UNDERNEATH MY&REGULAR CLOTHES!!/";
    global.msg[8]= "\\\\E0BEHOLD!!!/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 25 && !instance_exists(OBJ_WRITER )) {
    if(!instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    hspeed= 20;
    alarm[2]= 30;
    cn= 26;
}
if(cn == 27) {
    global.facechoice= 1;
    hspeed= -20;
    cn= 28;
    alarm[2]= 30;
}
if(cn == 29 && !instance_exists(OBJ_WRITER )) {
    hspeed= 0;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    cn= 30;
    global.msg[0]= "\\\\E1NYEH!&WHAT DO YOU&THINK OF MY&SECRET STYLE!?!/*";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 30 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   I love it       I hate it&                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 31;
}
if(cn == 31 && choicer == 2) {
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 33;
    choicer= 0;
    alarm[2]= 10;
}
if(cn == 34) {
    global.typer= 22;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    cn= 35;
    global.msg[0]= "\\\\E6NO!!!/";
    if(choice == 0) global.msg[1]= "A GENUINE&COMPLIMENT...!!!/%%";
    else 
        global.msg[1]= "YOUR HONESTY...^1!&IT SHOWS HOW&MUCH YOU REALLY&CARE!!!/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 35 && !instance_exists(OBJ_WRITER )) {
    friendgraph.y= 64;
    friendgraph.vspeed= 0;
    friendgraph.ideallength= 100;
    if(!instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    snd_play(snd_damage );
    shudder= 10;
    global.faceemotion= 6;
    alarm[3]= 1;
    instance_create(0, 0, obj_flasher );
    g= instance_create(0, 0, obj_shaker );
    g.vshake= 4;
    g.hshake= 4;
    g.shakespeed= 2;
    cn= 36;
}
if(cn == 37) {
    cn= 38;
    datevolume= 1;
    alarm[2]= 20;
    if(instance_exists(obj_populationgraph )) {
        obj_populationgraph.hspeed= -6;
        obj_populationgraph.friction= 0;
    }
}
if(cn == 39) {
    datevolume-= 0.02;
    if(datevolume < 0.05) {
        datevolume= 0;
        cn= 40;
        caster_stop(datefight);
    }
    caster_set_volume(datefight, datevolume);
}
if(cn == 40) {
    if(instance_exists(obj_populationgraph )) {
        // obj_populationgraph
        with(168) instance_destroy();
    }
    global.typer= 22;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    cn= 41;
    global.msg[0]= "\\\\E3HOWEVER.../";
    global.msg[1]= "\\\\XY\\\\E0OU DON\\'T TRULY&UNDERSTAND THE\\\\R &HIDDEN POWER\\\\X OF&THIS OUTFIT!!!/";
    global.msg[2]= "\\\\E3THEREFORE.../%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 41 && !instance_exists(OBJ_WRITER )) {
    cn= 42;
    caster_loop(datetense, 1, 1);
    global.msg[0]= "\\\\E1WHAT YOU JUST&SAID IS INVALID!!!/";
    if(global.flag[66] == 1)
        global.msg[1]= "THIS DATE WON\\'T&ESCALATE ANY&FURTHER!!!/";
    if(global.flag[66] == 0)
        global.msg[1]= "THIS HANG-OUT&WON\\'T ESCALATE&ANY FURTHER!/";
    global.msg[2]= "\\\\X.\\\\E7.. UNLESS&YOU FIND \\\\RMY&SECRET\\\\X!!/";
    global.msg[3]= "BUT THAT WON\\'T&HAPPEN!!/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    friendgraph.ideallength= 80;
}
if(cn == 42 && !instance_exists(OBJ_WRITER )) {
    textskip= 0;
    global.idealborder[2]+= 35;
    cn= 43;
    alarm[2]= 15;
}
if(cn == 44 && !instance_exists(OBJ_WRITER )) {
    friendgraph.vspeed= -8;
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    global.typer= 1;
    global.msg[0]= "* (Move and inspect with [Z].)";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 999;
    instance_create(320, global.idealborder[2] - 30, obj_dateheart );
    cn= 45;
}
if(cn == 47) {
    textskip= 1;
    if(instance_exists(iii)) {
        with(iii) instance_destroy();
    }
    global.idealborder[2]-= 35;
    cn= 48;
    global.typer= 22;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.msg[0]= "\\\\E3MY HAT...?/";
    global.msg[1]= "\\\\E8MY HAT./";
    global.msg[2]= "\\\\E0MY HAT!/";
    global.msg[3]= "NYEH HEH HEH!/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 48 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    haty--;
    if(haty < -23) cn= 49;
}
if(cn == 49) {
    cn= 50;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.msg[0]= "W-WELL THEN..^1.&YOU FOUND MY&SECRET!/";
    global.msg[1]= "I SUPPOSE I HAVE&NO CHOICE!/";
    global.msg[2]= "IT\\'S A PRESENT.../";
    global.msg[3]= "A PRESENT J-JUST&FOR YOU!!!/";
    global.msg[4]= "GO AHEAD^1!&OPEN IT!/*";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 50 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt != 0 && OBJ_WRITER.stringno == 3) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Open it         Don\\'t    &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 51;
}
if(cn == 51 && choicer == 2) {
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 52;
    choicer= 0;
    alarm[2]= 10;
}
if(cn == 53) {
    global.typer= 22;
    cn= 54;
    if(choice == 1) {
        global.msg[0]= "\\\\E2YOU CAN\\'T EVEN&BRING YOURSELF TO&HARM MY DELICATE&WRAPPING??/";
        global.msg[1]= "\\\\E7N-NO..^1.&THAT TECHNIQUE!/";
        global.msg[2]= "\\\\E6IT\\'S TOO STRONG!/";
        global.msg[3]= "\\\\E7COUNTERATTACK^1!&I\\'LL OPEN THE&PRESENT MYSELF!!/%%";
        blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
        blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    }
}
if(cn == 54 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    snd_play(snd_item );
    present= 1;
    cn= 55;
    alarm[2]= 30;
}
if(cn == 56) {
    cn= 57;
    global.msg[0]= "\\\\E0DO YOU KNOW WHAT&THIS IS?/*";
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 57 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Of course       No idea  &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 58;
}
if(cn == 58 && choicer == 2) {
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 59;
    choicer= 0;
    alarm[2]= 10;
}
if(cn == 60) {
    friendgraph.x= -180;
    friendgraph.y= 144;
    friendgraph.vspeed= 0;
    caster_stop(datetense);
    global.typer= 22;
    if(choice == 0) {
        global.msg[0]= "\\\\E0" + chr(ord("\"")) + "SPAGHETTI." + chr(ord("\"")) + "/";
        global.msg[1]= "\\\\E3THAT\\'S WHAT&YOU\\'RE THINKING^1,&ISN\\'T IT?/";
        global.msg[2]= "\\\\E0RIGHT!/";
        global.msg[3]= "\\\\E1BUT OH-SO WRONG!/%%";
    } else  {
        global.msg[0]= "\\\\E0NYEH HEH HEH^1!&THAT\\'S RIGHT./";
        global.msg[1]= "YOU HAVE NO IDEA!/";
        global.msg[2]= "\\\\E3THOUGH THIS&APPEARS TO BE&SPAGHETTI.../%%";
    }
    cn= 61;
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 61 && !instance_exists(OBJ_WRITER )) {
    friendgraph.hspeed= 10;
    if(friendgraph.x > 90) friendgraph.hspeed= 0;
    cn= 62;
    caster_loop(datefight, 0.85, 1);
    global.msg[0]= "\\\\E1THIS AIN\\'T ANY&PLAIN OL\\' PASTA!/";
    global.msg[1]= "\\\\E0THIS IS AN&ARTISAN\\'S WORK!/";
    global.msg[2]= "\\\\E3SILKEN SPAGHETTI^1,&FINELY AGED IN&AN OAKEN CASK.../";
    global.msg[3]= "\\\\E0THEN COOKED BY&ME^1, MASTER CHEF&PAPYRUS!/";
    global.msg[4]= "\\\\E1HUMAN!!^1!&IT\\'S TIME TO&END THIS!!/";
    global.msg[5]= "THERE\\'S NO WAY&THIS CAN GO&ANY FURTHER!/";
    global.msg[6]= "EAT THIS^1!&MY ULTIMATE&TECHNIQUE!!!/*";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn >= 61 && friendgraph.x > 70) friendgraph.hspeed= 0;
if(cn == 62 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt != 0 && OBJ_WRITER.stringno == 5) {
    if(friendgraph.x > 90) friendgraph.hspeed= 0;
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Eat it          Refuse   &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 63;
}
if(cn == 63 && choicer == 2) {
    if(friendgraph.x > 90) friendgraph.hspeed= 0;
    if(instance_exists(blconwd)) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    cn= 64;
    if(choice == 1) cn= 65.5;
    choicer= 0;
    alarm[2]= 10;
}
if(cn == 65) {
    cn= 66.5;
    global.typer= 1;
    global.msg[0]= "* (You take a small bite.)/";
    global.msg[1]= "* (Your face reflexively&  scrunches up.)/";
    global.msg[2]= "* (The taste is indescribable...)/%%";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
    with(iii) halt= 0;
}
if(cn == 66.5 && instance_exists(OBJ_WRITER )) {
    face_index= 0;
    if(friendgraph.x > 90) friendgraph.hspeed= 0;
}
if(cn == 66.5 && !instance_exists(OBJ_WRITER )) {
    global.typer= 22;
    if(instance_exists(iii)) {
        with(iii) instance_destroy();
    }
    cn= 67;
    if(choice == 0) {
        global.msg[0]= "\\\\E0WHAT A PASSIONATE&EXPRESSION!!!/";
        global.msg[1]= "\\\\E3YOU MUST REALLY&LOVE MY COOKING!/";
        global.msg[2]= "\\\\E2AND BY EXTENSION^1,&ME!!!/";
        global.msg[3]= "\\\\E6MAYBE EVEN MORE&THAN I DO!!!/%%";
    }
    if(choice == 1) {
        global.msg[0]= "\\\\E3YOU MEAN.../";
        global.msg[1]= "\\\\E2YOU\\'RE LETTING ME&HAVE IT INSTEAD?/";
        global.msg[2]= "\\\\E2BECAUSE YOU KNOW&HOW MUCH I LOVE&PASTA.../";
        global.msg[3]= "\\\\E6IMPOSSIBLE!^1!&TAKING MY PRESENT&AND TURNING IT&AROUND ON ME!/%%";
    }
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 67 && !instance_exists(OBJ_WRITER )) {
    cn= 68;
    friendgraph.ideallength= 100;
    global.msg[0]= "AUGH!!^5!%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    snd_play(snd_damage );
    shudder= 10;
    global.faceemotion= 6;
    alarm[3]= 1;
    instance_create(0, 0, obj_flasher );
    g= instance_create(0, 0, obj_shaker );
    g.vshake= 4;
    g.hshake= 4;
    g.shakespeed= 2;
}
if(cn == 69) {
    cn= 70;
    friendgraph.ideallength= 120;
    global.msg[0]= "URRRGH!!^5!%%";
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    snd_play(snd_damage );
    shudder= 14;
    global.faceemotion= 6;
    alarm[3]= 1;
    instance_create(0, 0, obj_flasher );
    g= instance_create(0, 0, obj_shaker );
    g.vshake= 4;
    g.hshake= 4;
    g.shakespeed= 2;
}
if(cn == 71) {
    caster_stop(datefight);
    cn= 72;
    friendgraph.ideallength= 999;
    global.msg[0]= "NOOOOOOOO!!^4!%%";
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    snd_play(snd_damage );
    shudder= 18;
    global.faceemotion= 6;
    alarm[3]= 1;
    instance_create(0, 0, obj_flasher );
    g= instance_create(0, 0, obj_shaker );
    g.vshake= 4;
    g.hshake= 4;
    g.shakespeed= 2;
}
if(cn == 73) {
    with(blcon) instance_destroy();
    cn= 74;
    g= instance_create(0, 0, obj_whitefader );
    g.tspeed= 0.01;
    alarm[2]= 110;
}
if(cn == 75) {
    friendgraph.x= 999;
    papyrus= caster_load("music/papyrus.ogg");
    cn= 76;
    __view_set( e__VW.WView, 0, 320 );
    __view_set( e__VW.HView, 0, 240 );
    global.typer= 22;
    if(global.flag[66] == 1) {
        global.msg[0]= "HUMAN^1.&IT\\'S CLEAR NOW./";
        global.msg[1]= "YOU\\'RE MADLY IN&LOVE WITH ME./";
        global.msg[2]= "EVERYTHING YOU DO^1.&EVERYTHING&YOU SAY./";
        global.msg[3]= "IT\\'S ALL BEEN&FOR MY SAKE./";
        global.msg[4]= "HUMAN^1. I WANT&YOU TO BE&HAPPY^1, TOO./";
        global.msg[5]= "IT\\'S TIME FOR ME&TO EXPRESS MY&FEELINGS./";
        global.msg[6]= "IT\\'S TIME THAT&I TOLD YOU./";
        global.msg[7]= "I^1, PAPYRUS.../%%";
    } else  {
        global.msg[0]= "HUMAN^1.&IT\\'S CLEAR NOW./";
        global.msg[1]= "YOU\\'RE COMPLETELY&OBSESSED WITH ME./";
        global.msg[2]= "EVERYTHING YOU DO^1.&EVERYTHING&YOU SAY./";
        global.msg[3]= "IT\\'S ALL BEEN&FOR MY SAKE./";
        global.msg[4]= "HUMAN^1. I WANT&YOU TO BE&HAPPY^1,TOO./";
        global.msg[5]= "IT\\'S TIME FOR ME&TO EXPRESS MY&FEELINGS./";
        global.msg[6]= "IT\\'S TIME THAT&I TOLD YOU./";
        global.msg[7]= "\\\\E8I^1, PAPYRUS.../%%";
    }
    myw= instance_create(60, 100, OBJ_WRITER );
    myw.depth= -100000;
}
if(cn == 76 && !instance_exists(OBJ_WRITER )) {
    g.image_alpha= 1;
    g.tspeed= -0.05;
    cn= 77;
    alarm[2]= 20;
    __view_set( e__VW.HView, 0, 480 );
    __view_set( e__VW.WView, 0, 640 );
}
if(cn == 78) {
    cn= 79;
    global.faceemotion= 8;
    if(global.flag[66] == 1) {
        global.msg[0]= "I.../";
        global.msg[1]= "UM.../";
        global.msg[2]= "\\\\E4BOY^1, IS IT HOT&IN HERE^1, OR IS&IT JUST ME??/";
        global.msg[3]= "\\\\E4.../";
        global.msg[4]= "\\\\E5OH^1, SHOOT./";
        global.msg[5]= "HUMAN^1, I.../";
        global.msg[6]= "I\\'M SORRY./";
        global.msg[7]= "I DON\\'T LIKE YOU&THE WAY YOU&LIKE ME./";
        global.msg[8]= "\\\\E4ROMANTICALLY^1,&I MEAN./";
        global.msg[9]= "\\\\E6I MEAN^1, I TRIED&VERY HARD TO!/";
        global.msg[10]= "\\\\E8I THOUGHT THAT&BECAUSE YOU&FLIRTED WITH ME.../";
        global.msg[11]= "THAT I WAS&SUPPOSED&TO GO ON A&DATE WITH YOU./";
        global.msg[12]= "\\\\E0THEN^1, ON THE DATE^1,&FEELINGS WOULD&BLOSSOM FORTH!!!/";
        global.msg[13]= "\\\\E2I WOULD BE ABLE&TO MATCH YOUR&PASSION FOR ME!/";
        global.msg[14]= "\\\\E4BUT ALAS..^1.&I^1, THE GREAT&PAPYRUS.../";
        global.msg[15]= "\\\\E5HAVE FAILED./";
        global.msg[16]= "I FEEL JUST THE&SAME AS BEFORE./";
        global.msg[17]= "AND INSTEAD^1, BY&DATING YOU.../";
        global.msg[18]= "I HAVE ONLY DRAWN&YOU DEEPER.../";
        global.msg[19]= "\\\\E6INTO YOUR INTENSE&LOVE FOR ME!/";
        global.msg[20]= "\\\\E5A DARK PRISON OF&PASSION^1, WITH NO&ESCAPE./";
        global.msg[21]= "HOW COULD I HAVE&DONE THIS TO MY&DEAR FRIEND...?/";
        global.msg[22]= ".../";
        global.msg[23]= "\\\\E6NO^1! WAIT^1!&THAT\\'S WRONG!/";
        global.msg[24]= "I CAN\\'T FAIL AT&ANYTHING!!!/";
        global.msg[25]= "\\\\E1HUMAN!!^1!&I\\'LL HELP YOU&THROUGH THESE&TRYING TIMES!!!/";
        global.msg[26]= "\\\\E0I\\'LL KEEP BEING&YOUR COOL&FRIEND.../";
        global.msg[27]= "\\\\E8AND ACT LIKE THIS&ALL NEVER&HAPPENED./";
        global.msg[28]= "\\\\E0AFTER ALL^1, YOU&ARE VERY GREAT./";
        global.msg[29]= "\\\\E5IT WOULD BE&TRAGIC TO LOSE&YOUR FRIENDSHIP./";
        global.msg[30]= "\\\\E0SO PLEASE..../";
        global.msg[31]= "\\\\E5DON\\'T CRY BECAUSE&I WON\\'T KISS YOU./";
        global.msg[32]= "\\\\E4BECAUSE^1, I DON\\'T&EVEN HAVE LIPS./";
        global.msg[33]= "\\\\E0AND HEY^1, SOMEDAY^1,&YOU\\'LL FIND&SOMEONE AS&GREAT AS ME./";
        global.msg[34]= "\\\\E8WELL, NO^1.&THAT\\'S NOT TRUE./";
        global.msg[35]= "\\\\E0BUT I\\'LL HELP YOU&SETTLE FOR&SECOND BEST!!!/";
        global.msg[36]= "NYEH HEH HEH&HEH HEH!!!/%%";
    } else  {
        caster_loop(papyrus, 1, 1);
        global.faceemotion= 8;
        global.msg[0]= "\\\\E8HMM.../";
        global.msg[1]= "\\\\E0WELL^1, I\\'M FLATTERED&YOU CARE SO MUCH./";
        global.msg[2]= "\\\\E4BUT MAYBE COOL&IT A LITTLE BIT...?/";
        global.msg[3]= "\\\\E0YOU ARE A VERY&NICE PERSON./";
        global.msg[4]= "I\\'M GLAD WE\\'RE&FRIENDS./";
        global.msg[5]= "\\\\E8BUT^1, I THINK YOU&CAN REACH YOUR&MAX POTENTIAL,,,/";
        global.msg[6]= "\\\\E0IF YOU LIVE MORE&FOR YOUR OWN SAKE^1,&RATHER THAN JUST&FOR MINE./";
        global.msg[7]= "\\\\E8HMMM.../";
        global.msg[8]= "\\\\E0HEY^1, I KNOW THE&SOLUTION!!!/";
        global.msg[9]= "YOU SHOULD HANG&OUT WITH MY BOSS^1,&UNDYNE!!!/";
        global.msg[10]= "I THINK IF YOU&SPREAD YOUR FRIEND-&ENERGY OUT MORE.../";
        global.msg[11]= "YOU\\'LL HAVE A MORE&HEALTHY LIFESTYLE./";
        global.msg[12]= "YEAH!!^1!&LET\\'S BE FRIENDS&WITH UNDYNE!!!/";
        global.msg[13]= "NYEH HEH HEH&HEH HEH!!!/%%";
    }
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
}
if(cn == 79 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    cn= 80;
    hspeed= 15;
    alarm[2]= 60;
}
if(cn == 81) {
    hspeed= -30;
    cn= 82;
    alarm[2]= 30;
}
if(cn == 83) {
    hspeed= 0;
    global.msg[0]= "OH^1, AND IF YOU&EVER NEED TO&REACH ME.../";
    global.msg[1]= "\\\\XHERE\\'S MY \\\\RPHONE&NUMBER\\\\X./";
    global.msg[2]= "YOU CAN CALL&ME ANY TIME!/";
    global.msg[3]= "\\\\E4PLATONICALLY./";
    global.msg[4]= "\\\\E0WELL^1, GOTTA GO^1!&NYEH HEH HEH!/%%";
    scr_phoneget(210);
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 84;
}
if(cn == 84 && !instance_exists(OBJ_WRITER )) {
    hspeed= 30;
    with(blcon) instance_destroy();
    cn= 85;
    alarm[2]= 30;
    datevolume= 1;
}
if(cn == 86) {
    cn= 87;
    d= instance_create(0, 0, obj_whitefader );
    d.tspeed= 0.03;
    d.sprite_index= spr_pixblk ;
    alarm[2]= 50;
}
if(cn == 87) {
    datevolume-= 0.03;
    if(datevolume < 0.04) {
        datevolume= 0;
        cn= 88;
    }
    caster_set_volume(papyrus, datevolume);
}
if(cn == 88) {
    global.border= 0;
    SCR_BORDERSETUP();
    global.flag[88]= 4;
    ini_open("undertale.ini");
    pd= ini_read_real("Papyrus", "PD", 0);
    ini_write_real("Papyrus", "PD", pd + 1);
    ini_close();
    global.interact= 0;
    instance_create(0, 0, obj_persistentfader );
    caster_free(-3);
    room_goto(77);
}

/* */
/*  */
