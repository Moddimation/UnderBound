if(con > 0) {
    if(con == 1) {
        global.interact= 1;
        alphys= 1170;
        alphys.direction= 0;
        global.typer= 47;
        global.msc= 0;
        global.faceemotion= 3;
        global.facechoice= 6;
        global.msg[0]= "* Wait^1, wait!/%%";
        if(obj_mainchara.x > alphys.x) alphys.direction= 0;
        if(obj_mainchara.x < alphys.x) alphys.direction= 180;
        con= 2;
        instance_create(0, 0, obj_dialoguer );
    }
    if(con == 2 && !instance_exists(OBJ_WRITER )) {
        alphys.image_speed= 0.334;
        if(obj_mainchara.x > alphys.x) global.facing= 3;
        if(obj_mainchara.x < alphys.x) global.facing= 1;
        if(obj_mainchara.y > alphys.y) {
            up= 0;
            alphys.direction= 270;
            alphys.vspeed= 3;
            con= 3;
        }
        if(obj_mainchara.y < alphys.y) {
            up= 1;
            alphys.direction= 90;
            alphys.vspeed= -3;
            con= 3;
        }
        if(abs(obj_mainchara.y - alphys.y) <= 5) {
            up= 3;
            alphys.vspeed= 0;
            con= 4;
        }
    }
    if(con == 3 && abs(obj_mainchara.y - alphys.y) <= 3) {
        up= 3;
        con= 4;
    }
    if(con == 4) {
        if(obj_mainchara.x > alphys.x) {
            alphys.direction= 0;
            alphys.hspeed= 3;
        }
        if(obj_mainchara.x < alphys.x) {
            alphys.direction= 180;
            alphys.hspeed= -3;
        }
        con= 5;
    }
    if(con == 5 && abs(obj_mainchara.x + 10 - alphys.x + alphys.sprite_width / 2) < 30) {
        alphys.image_speed= 0;
        alphys.hspeed= 0;
        if(obj_mainchara.x > alphys.x) alphys.direction= 0;
        if(obj_mainchara.x < alphys.x) alphys.direction= 180;
        con= 6;
        alarm[4]= 20;
    }
    if(con == 7) {
        global.msg[0]= "\\\\E0* Let me give you my&  ph-phone number!/";
        global.msg[1]= "\\\\E7* Th-then..^1. m-maybe..^1.&* If you need help^1,&  I could.../%%";
        instance_create(0, 0, obj_dialoguer );
        con= 8;
    }
    if(con == 8 && !instance_exists(OBJ_WRITER )) {
        con= 9;
        alarm[4]= 15;
    }
    if(con == 10 && !instance_exists(OBJ_WRITER )) {
        blc= instance_create(alphys.x + 8, alphys.y - 5, obj_cosmeticblcon );
        snd_play(snd_b );
        alarm[4]= 30;
        con= 11;
    }
    if(con == 12 && !instance_exists(OBJ_WRITER )) {
        with(blc) instance_destroy();
        global.msg[0]= "\\\\E3* Wh..^1. where\\'d you get&  that phone!?&* It\\'s ANCIENT!/";
        global.msg[1]= "\\\\E1* It doesn\\'t even have&  texting./";
        global.msg[2]= "\\\\E3* W-wait a second^1,&  please!/%%";
        instance_create(0, 0, obj_dialoguer );
        con= 13;
    }
    if(con == 13 && !instance_exists(OBJ_WRITER )) {
        if(obj_mainchara.x > alphys.x) alphys.direction= 180;
        if(obj_mainchara.x < alphys.x) alphys.direction= 0;
        alphys.speed= 6;
        alphys.image_speed= 0.5;
        con= 14;
    }
    if(con == 14 && (alphys.x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 30 || alphys.x < __view_get( e__VW.XView, 0 ) - 30)) {
        caster_pause(global.currentsong);
        alphys.speed= 0;
        noise= caster_load("music/alphysfix.ogg");
        caster_play(noise, 0.8, 1);
        con= 15;
        alarm[4]= 100;
    }
    if(con == 16) {
        caster_free(noise);
        caster_resume(global.currentsong);
        if(obj_mainchara.x > alphys.x) alphys.direction= 0;
        if(obj_mainchara.x < alphys.x) alphys.direction= 180;
        alphys.speed= 6;
        if(abs(obj_mainchara.x + 10 - alphys.x + alphys.sprite_width / 2) < 30) {
            alphys.image_speed= 0;
            alphys.speed= 0;
            if(obj_mainchara.x > alphys.x) alphys.direction= 0;
            if(obj_mainchara.x < alphys.x) alphys.direction= 180;
            con= 17;
            alarm[4]= 20;
        }
    }
    if(con == 18) {
        global.faceemotion= 0;
        global.msg[0]= "\\\\E0* Here^1, I upgraded it&  for you!/";
        global.msg[1]= "* It can do texting^1,&  items^1, it\\'s got a&  key chain.../";
        global.msg[2]= "* I even signed you up&  for the underground\\'s&  No. 1 social network!/";
        global.msg[3]= "\\\\E7* Now we\\'re officially&  friends^1!&* Ehehehe!/";
        global.msg[4]= "\\\\E0* Heheh.../";
        global.msg[5]= "\\\\E0* Heh.../";
        global.msg[6]= "\\\\E0* .../";
        global.msg[7]= "\\\\E1* .../";
        global.msg[8]= "\\\\E2* .../";
        global.msg[9]= "\\\\E1* .../";
        global.msg[10]= "\\\\E2* .../";
        global.msg[11]= "\\\\E4* I\\'m going to the&  bathroom./%%";
        instance_create(0, 0, obj_dialoguer );
        slid= 0;
        con= 19;
        scr_phoneget(220);
        scr_phoneget(221);
    }
    if(con == 19 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 11 && slid == 0) {
        // obj_slidingdoor
        with(1291) event_user(0);
        slid= 1;
    }
    if(con == 19 && !instance_exists(OBJ_WRITER )) {
        con= 20;
        if(obj_mainchara.x > alphys.x) alphys.direction= 180;
        if(obj_mainchara.x < alphys.x) alphys.direction= 0;
        alphys.speed= 6;
        alphys.image_speed= 0.5;
    }
    if(con == 20 && abs(alphys.x - obj_slidingdoor.x + 12) < 40) {
        if(alphys.x > obj_mainchara.x) {
            // obj_slidingdoor
            with(1291) event_user(0);
        }
        con= 21;
    }
    if(con == 21) {
        if(alphys.direction == 0 && alphys.x >= obj_slidingdoor.x + 10) {
            alphys.direction= 90;
            con= 22;
        }
        if(alphys.direction == 180 && alphys.x <= obj_slidingdoor.x + 15) {
            alphys.direction= 90;
            con= 22;
        }
    }
    if(con == 22 && alphys.y < obj_slidingdoor.y + 60) {
        alphys.d= 1;
        alphys.depth= obj_slidingdoor.depth + 1;
        // obj_slidingdoor
        with(1291) event_user(1);
        con= 23;
    }
    if(con == 23 && alphys.y < obj_slidingdoor.y + 26) {
        alphys.direction= 270;
        alphys.speed= 0;
        alphys.image_speed= 0.1;
        alphys.y= obj_slidingdoor.y + 25;
        con= 24;
        global.plot= 127;
        global.interact= 0;
        // obj_alphystrigger2
        with(1290) instance_destroy();
    }
}


/*  */
