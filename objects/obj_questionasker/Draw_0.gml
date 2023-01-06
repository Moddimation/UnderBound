draw_sprite_ext(sprite_index, round(image_index), x - shake + random(shake * 2), y - shake + random(shake * 2), 2, 2, 0, 16777215, 1);
if(phase == -1) sprite_index= spr_alphyshelper ;
if(phase > 0 && con == 0) sprite_index= spr_alphyshelper_lookup ;
if(phase == 2 && quiztimer < 280) {
    if(correct == 0) sprite_index= spr_alphyshelper_a ;
    if(correct == 1) sprite_index= spr_alphyshelper_b ;
    if(correct == 2) sprite_index= spr_alphyshelper_c ;
    if(correct == 3) sprite_index= spr_alphyshelper_d ;
    if(q == 7) sprite_index= spr_alphyshelper_confused ;
}
if(phase == 2 && quiztimer > 320) sprite_index= spr_alphyshelper_confused ;
if(phase > 2 && q < 10) {
    sprite_index= spr_alphyshelper_shock ;
    obj_mettatonb_body.arms= 322;
    if(correct == answer) {
        obj_mettatonb_body.arms= 321;
        sprite_index= spr_alphyshelper_thumbsup ;
        if(q == 7) sprite_index= spr_alphyshelper_confused ;
    }
}
if(q == 8 && quiztimer < 300) {
    if(quiztimer % 2 == 0) mettamt++;
    if(!instance_exists(obj_mettatonnn_writer ) && phase == 2)
        instance_create(x, y, obj_mettatonnn_writer );
}
if(q == 9 && alarm[4] < 140 && con == 0) {
    sprite_index= spr_alphyshelper_tooexcited ;
    alarm[4]= -2;
    global.msc= 0;
    image_speed= 0.3;
    global.typer= 52;
    global.msg[0]= "OH^1! OH^1! I KNOW&THIS ONE!!!&IT\\'S SNAIL ICE&CREAM!!!!!!!^1!%";
    global.msg[1]= "IN THE FOURTH&CHAPTER EVERYONE&GOES TO THE&BEACH!!!%";
    global.msg[2]= "AND SHE BUYS&ICE CREAM FOR&ALL OF HER&FRIENDS!!!!%";
    global.msg[3]= "BUT IT\\'S SNAIL&FLAVOR AND SHE\\'S&THE ONLY ONE&WHO WANTS IT!!!!!!%";
    global.msg[4]= "IT\\'S ONE OF MY&FAVORITE PARTS&OF THE GAME&BECAUSE%";
    global.msg[5]= "IT\\'S ACTUALLY A&VERY POWERFUL&message abou^1t&friendshi^1p and..^2.%%";
    scr_blcon(x - 10, y - 120, 2);
    con= 1;
}
if(con == 1) {
    go= 0;
    if(!instance_exists(OBJ_WRITER )) go= 1;
    if(!instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 5)
        go= 1;
    if(go == 1) {
        image_speed-= 0.004;
        if(image_speed <= 0) {
            con= 2;
            alarm[7]= 60;
            sprite_index= spr_alphyshelper_excited2 ;
        }
    }
}
if(con == 3) {
    global.typer= 51;
    phase= -2;
    global.msg[0]= "ALPHYS^1,&ALPHYS^1,&ALPHYS./";
    global.msg[1]= "YOU AREN\\'T HELPING&OUR CONTESTANT,&ARE YOU?/";
    global.msg[2]= "OOOOOOH!!!&YOU SHOULD HAVE&TOLD ME./";
    global.msg[3]= "I\\'LL ASK A&QUESTION.../";
    global.msg[4]= "YOU\\'LL BE SURE&TO KNOW THE&ANSWER TO!/%%";
    con= 4;
    sprite_index= spr_alphyshelper_excited2 ;
    scr_blcon(obj_mettatonb_body.x + 95, obj_mettatonb_body.y - 100, 3);
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    image_speed= 0.2;
    sprite_index= spr_alphyshelper_shock2 ;
    con= 5;
    event_user(0);
}
if(con == 4) {
    if(instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
        sprite_index= spr_alphyshelper_shakehead ;
    if(OBJ_WRITER.stringno == 3) sprite_index= spr_alphyshelper_embarrass ;
    image_speed= 0.1;
    if(OBJ_WRITER.stringno == 4) sprite_index= spr_alphyshelper_shock ;
}
if(con == 7) {
    sprite_index= spr_alphyshelper_shockembarrass ;
    global.typer= 51;
    phase= -2;
    global.msg[0]= "ALPHYS^1, ALPHYS^1,&ALPHYS./";
    global.msg[1]= "YOU AREN\\'T HELPING&OUR CONTESTANT,&ARE YOU?/";
    global.msg[2]= "OOOOOOH!!!&YOU SHOULD HAVE&TOLD ME./";
    global.msg[3]= "I\\'LL ASK A&QUESTION.../";
    global.msg[4]= "YOU\\'LL BE SURE&TO KNOW THE&ANSWER TO!/%%";
    con= 30;
    if(answer == 0) {
        global.msg[0]= "SEE, ALPHYS?&I TOLD YOU IT&WAS OBVIOUS./";
        global.msg[1]= "EVEN THE HUMAN&FIGURED IT OUT./";
        global.msg[2]= "YES, SHE SCRAWLS&HER NAME IN THE&MARGINS OF HER&NOTES./";
        global.msg[3]= "SHE NAMES PROGRAMMING&VARIABLES AFTER&HER./";
        fsgsfgsx= "LOOLLLL IF YOU CAME TO THIS PART OF THE CODE TO SEE WHO I HAVE A CRUSH ON YOURE OUT OF LUCK";
        global.msg[4]= "SHE EVEN WRITES&STORIES OF THEM&TOGETHER.../";
        global.msg[5]= "SHARING A DOMESTIC&LIFE./";
        global.msg[6]= "PROBABILITY OF&CRUSH:&101 PERCENT./";
        global.msg[7]= "MARGIN OF ERROR.&ONE PERCENT./%%";
    }
    if(answer == 1) {
        global.msg[0]= "WHY WOULD SOMEONE&OUTFIT AN&AMUSEMENT ROBOT.../";
        global.msg[1]= "WITH BRUTAL COMBAT&CAPABILITIES?/";
        global.msg[2]= "SIMPLE./";
        global.msg[3]= "TO IMPRESS MR.&ASGORE DREEMURR,&OF COURSE!/";
        global.msg[4]= "OR AS ALPHYS&CALLS HIM.../";
        global.msg[5]= "" + chr(ord("\"")) + "MR. DREAMY." + chr(ord("\"")) + "/";
        global.msg[6]= "THOSE STRONG ARMS.../";
        global.msg[7]= "THAT LUSTROUS&BEARD.../";
        global.msg[8]= "LIKE ALL THOSE WHO&CREATE WEAPONS./";
        global.msg[9]= "SHE CRAVES THE&TENDER EMBRACE OF&A BURLY MAN./";
        global.msg[10]= "CAN SHE TRULY&BE BLAMED?/%%";
    }
    if(answer == 2) {
        sprite_index= spr_alphyshelper_confused ;
        shake= 0;
        global.msg[0]= "... SERIOUSLY?/";
        global.msg[1]= "MY MY..^1.&HOW CONCEITED CAN&YOU GET...?/";
        global.msg[2]= "I LOVE IT!/";
        global.msg[3]= "AND WHILE YOU ARE&COMPLETELY WRONG^1,&YOU DESERVE SOME&CREDIT./";
        global.msg[4]= "I\\'VE SEEN HER WATCH&YOU ON HER COMPUTER&SCREEN./";
        global.msg[5]= "SMILING WHEN YOU&SUCCEED./";
        global.msg[6]= "SHRIEKING WHEN YOU&FAIL./";
        global.msg[7]= "AND ALWAYS, ALWAYS,&WHISPERING.../";
        global.msg[8]= "" + chr(ord("\"")) + "NO! WRONG!&YOU HAVE TO&GO THAT WAY!" + chr(ord("\"")) + "/";
        global.msg[9]= "IN ITS OWN WAY^1,&IS THIS NOT&LOVE??/%%";
    }
    if(answer == 3) {
        sprite_index= spr_alphyshelper_thumbsup ;
        image_speed= 0.2;
        global.msg[0]= "CORRECT./";
        global.msg[1]= "DR. ALPHYS HAS&A CRUSH ON.../";
        global.msg[2]= "THE UNKNOWABLE./";
        global.msg[3]= "YOU SEE, ALPHYS&BELIEVES THERE IS&SOMEONE OUT THERE./";
        global.msg[4]= "SOMEONE WATCHING HER./";
        global.msg[5]= "SOMEONE SHE THINKS&IS " + chr(ord("\"")) + "CUTE" + chr(ord("\"")) + " AND&" + chr(ord("\"")) + "INTERESTING." + chr(ord("\"")) + "/";
        global.msg[6]= "HELLO, THEORETICAL&PERSON./";
        global.msg[7]= "DR. ALPHYS LIKES&YOU./";
        global.msg[8]= "TOO BAD YOU&ARE NOT REAL./";
        global.msg[9]= "*DERISIVE&LAUGHTRACK*/%%";
        con= 20;
    }
    if(con != 20) shake= 1;
    scr_blcon(obj_mettatonb_body.x + 95, obj_mettatonb_body.y - 100, 3);
}
if(con == 20 && !instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) sprite_index= spr_alphyshelper_confused ;
    if(OBJ_WRITER.stringno == 4) sprite_index= spr_alphyshelper_embarrass ;
    if(OBJ_WRITER.stringno == 8) sprite_index= spr_alphyshelper_confused ;
}
if(con == 20 && !instance_exists(OBJ_WRITER )) {
    con= 21;
    sprite_index= spr_alphyshelper ;
    global.typer= 52;
    global.msg[0]= "H-hey^1, I\\'ve done&research about this!/";
    global.msg[1]= "There are alternate&universes out there!/";
    global.msg[2]= "S-someday^1, maybe^1, I&could meet them.../%%";
    scr_blcon(x - 10, y - 120, 2);
}
if(con == 21 && !instance_exists(OBJ_WRITER )) {
    sprite_index= spr_alphyshelper_embarrass ;
    global.typer= 51;
    phase= -2;
    global.msg[0]= "YOU SAID THE&EXACT SAME THING&ABOUT " + chr(ord("\"")) + "MEW MEW&KISSY CUTIE." + chr(ord("\"")) + "/";
    global.msg[1]= "BUT I\\'LL GIVE YOU&THE BENEFIT OF&THE DOUBT./";
    global.msg[2]= "PERSON^1, IF YOU\\'RE&OUT THERE.../";
    global.msg[3]= "HOW ABOUT GIVING US&A SIGN^1, RIGHT NOW?/%%";
    con= 22;
    scr_blcon(obj_mettatonb_body.x + 95, obj_mettatonb_body.y - 100, 3);
}
if(con == 22 && !instance_exists(OBJ_WRITER )) {
    sprite_index= spr_alphyshelper ;
    caster_pause(global.batmusic);
    con= 23;
    alarm[7]= 150;
}
if(con == 24) {
    sprite_index= spr_alphyshelper_embarrass ;
    caster_resume(global.batmusic);
    con= 30;
    global.msg[0]= "THAT SETTLES&THAT, DOESN\\'T IT?/%%";
    scr_blcon(obj_mettatonb_body.x + 95, obj_mettatonb_body.y - 100, 3);
}
if(con == 30 && !instance_exists(OBJ_WRITER )) {
    // obj_mettatonb_body
    with(301) event_user(1);
    alarm[7]= 20;
    con= 31;
}
if(con == 32 && !instance_exists(OBJ_WRITER )) {
    shake= 0;
    obj_mettatonb_body.arms= 319;
    sprite_index= spr_alphyshelper ;
    global.typer= 51;
    phase= -2;
    if(instance_exists(obj_answernodule )) {
        // obj_answernodule
        with(306) instance_destroy();
    }
    global.msg[0]= "WELL WELL WELL./";
    global.msg[1]= "WITH DR. ALPHYS&HELPING YOU.../";
    global.msg[2]= "THE SHOW HAS NO&DRAMATIC TENSION!/";
    global.msg[3]= "WE CAN\\'T GO ON&LIKE THIS!!/";
    global.msg[4]= "BUT./";
    global.msg[5]= "BUT!!!/";
    global.msg[6]= "THIS WAS JUST THE&PILOT EPISODE!!/";
    global.msg[7]= "NEXT UP, MORE&DRAMA!/";
    global.msg[8]= "MORE ROMANCE!!!/";
    global.msg[9]= "MORE BLOODSHED!!!/";
    global.msg[10]= "UNTIL NEXT TIME,&DARLINGS...!!!/%%";
    con= 34;
    scr_blcon(obj_mettatonb_body.x - 320, obj_mettatonb_body.y - 120, 1);
}
if(con == 34 && !instance_exists(OBJ_WRITER )) {
    obj_mettatonb_body.arms= 995;
    con= 35;
    obj_mettatonb_body.siner= 0;
    obj_mettatonb_body.sineron= 0;
    obj_mettatonb_body.sprite_index= spr_mettatonb_armsin ;
    obj_mettatonb_body.image_index= 0;
    obj_mettatonb_body.image_speed= 0.25;
}
if(con == 35 && obj_mettatonb_body.image_index >= 5) {
    con= 36;
    alarm[7]= 10;
    obj_mettatonb_body.image_speed= 0;
}
if(con == 37) {
    obj_mettatonb_body.shaker= 2;
    con= 38;
    alarm[7]= 25;
}
if(con == 39) {
    obj_mettatonb_body.image_speed= 0.334;
    obj_mettatonb_body.sprite_index= spr_mettatonb_rocketoff ;
    obj_mettatonb_body.gravity= -0.4;
    obj_mettatonb_body.gravity_direction= 270;
    con= 40;
    alarm[7]= 20;
}
if(con == 41) {
    con= 42;
    alarm[7]= 40;
    sprite_index= spr_alphyshelper_lookup ;
}
if(con == 43) {
    instance_create(x, y, obj_unfader );
    alarm[9]= 12;
    con= 44;
}
if(phase >= 1 && phase < 3) {
    obj_mettatonb_body.arms= 318;
    draw_set_color(16777215);
    if(q == 10) draw_set_color(make_color_hsv(0, 0, 21165));
    draw_set_font(1);
    if(q != 4) draw_text(205 + random(1), 50 + random(1), string_hash_to_newline(qtext));
    if(q == 4)
        draw_text_transformed(170 + random(1), 20 + random(1), string_hash_to_newline(qtext), 0.5, 0.5, 6);
}
if(phase == 2) {
    if(q != 10 && q != 9) quiztimer--;
    if(q == 7) quiztimer+= 2;
    drawtime= ceil(quiztimer / 10);
    draw_set_color(255);
    draw_set_font(1);
    if(drawtime > 0) draw_text(300, 260, string_hash_to_newline(drawtime));
    else  phase= 3;
}
if(phase == 3) {
    global.msc= 0;
    global.typer= 51;
    if(q != 10) {
        if(instance_exists(obj_mettatonnn_writer )) {
            // obj_mettatonnn_writer
            with(300) instance_destroy();
        }
        if(instance_exists(obj_zoomaton )) {
            // obj_zoomaton
            with(303) event_user(0);
        }
        alarm[6]= 4;
        if(correct == answer && q != 7) {
            snd_play(snd_dumbvictory );
            repeat(60)  instance_create(random(640), -10, obj_confetti );
        }
        if(q == 7) snd_play(snd_wrongvictory );
        phase= 4;
        alarm[4]= 70;
    } else  {
        correct= answer;
        phase= 4;
        con= 6;
        snd_play(snd_bell );
        alarm[7]= 30;
    }
}
if(phase == 5) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(obj_shockermaker )) {
        // obj_shockermaker
        with(296) instance_destroy();
    }
    global.mnfight= 3;
    phase= -1;
    obj_mettatonb_body.arms= 319;
    // obj_mettatonb_body
    with(301) event_user(1);
    // obj_answernodule
    with(306) instance_destroy();
}

/* */
/*  */
