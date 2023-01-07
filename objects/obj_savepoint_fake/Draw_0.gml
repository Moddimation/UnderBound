if(myinteract == 0)
    draw_sprite(sprite_index, image_index, x, y);
if(myinteract == 1 && con == 0) {
    audio_play_sound(155, 90, 0);
    con= 1;
    drawthis= 1;
    alarm[4]= 90;
    xx= __view_get( e__VW.XView, 0 );
    yy= __view_get( e__VW.YView, 0 ) - 10;
    nowxx= __view_get( e__VW.XView, 0 );
    nowyy= __view_get( e__VW.YView, 0 ) - 10;
}
if(drawthis == 1) {
    global.interact= 1;
    ini_open("undertale.ini");
    name= ini_read_string("General", "Name", "EMPTY");
    love= ini_read_real("General", "Love", 0);
    time= ini_read_real("General", "Time", 0);
    kills= ini_read_real("General", "Kills", 0);
    roome= ini_read_real("General", "Room", 0);
    ini_close();
    draw_set_font(10);
    draw_set_color(16777215);
    draw_rectangle(54 + xx, 49 + yy, 265 + xx, 135 + yy, 0);
    draw_set_color(0);
    draw_rectangle(57 + xx, 52 + yy, 262 + xx, 132 + yy, 0);
    draw_set_color(16777215);
    minutes= floor(time / 1800);
    seconds= round((time / 1800 - minutes) * 60);
    if(seconds == 60) seconds= 59;
    if(seconds < 10) seconds= "0" + string(seconds);
    script_execute(scr_roomname , roome);
    draw_text(70 + xx, 60 + yy, string_hash_to_newline(name));
    draw_text(140 + xx, 60 + yy, string_hash_to_newline("LV " + string(love)));
    draw_text(210 + xx, 60 + yy, string_hash_to_newline(string(minutes) + ":" + string(seconds)));
    draw_text(70 + xx, 80 + yy, string_hash_to_newline(roomname));
    draw_text(xx + 85, yy + 110, string_hash_to_newline("Save"));
    draw_text(xx + 175, yy + 110, string_hash_to_newline("Return"));
}
if(con == 2) {
    punch= caster_load("music/sfx_gigapunch.ogg");
    explosion= caster_load("music/explosion.ogg");
    caster_play(punch, 0.7, 0.9);
    crack= 1;
    shake= 6;
    instance_create(0, 0, obj_vsflowey_shaker );
    con= 3;
    alarm[4]= 50;
}
if(con == 4) {
    caster_play(punch, 0.85, 0.83);
    crack= 2;
    shake= 8;
    drawthis= 0;
    instance_create(0, 0, obj_vsflowey_shaker );
    con= 5;
    alarm[4]= 50;
}
if(con == 6) {
    caster_play(punch, 1, 0.76);
    crack= 3;
    shake= 10;
    drawthis= 0;
    instance_create(0, 0, obj_vsflowey_shaker );
    con= 7;
    alarm[4]= 60;
}
if(con == 8) {
    crack= -1;
    drawthis= -1;
    con= 9;
    i= 0;
    instance_create(0, 0, obj_vsflowey_shaker );
    fl= instance_create(nowxx + 114, nowyy + 56, obj_floweyfacer );
    caster_play(explosion, 1, 1);
    repeat(6)  {
        in= instance_create(nowxx + 54, nowyy + 49, obj_fileerased_part );
        in.image_index= i;
        i++;
    }
    alarm[4]= 90;
}
if(con == 10) {
    fl.type= 1;
    obj_mainchara_fake.cutscene= 1;
    con= 11;
    alarm[4]= 6;
}
if(con == 12) {
    hellmus= caster_load("music/yourbestfriend_3.ogg");
    fl.type= 2;
    con= 13;
    alarm[4]= 10;
}
if(con == 13) {
    obj_mainchara_fake.y+= 6;
    obj_floweyfacer.y-= 2;
}
if(con == 14) {
    fl.type= 1;
    con= 15;
    alarm[4]= 8;
}
if(con == 16) {
    // obj_floweyfacer
    with(1575) {
        moved= 2;
        xx= x;
        yy= y;
    }
    fl.type= 0;
    con= 17;
    alarm[4]= 20;
}
if(con == 18) {
    caster_loop(hellmus, 0.8, 0.7);
    global.msg[0]= "Howdy!/";
    global.msg[1]= "It\\'s me, FLOWEY./";
    global.msg[2]= "\\\\E2FLOWEY the FLOWER!/";
    global.msg[3]= "\\\\E0I owe you a HUGE thanks./";
    global.msg[4]= "\\\\E9You really did a number&on that old fool./";
    global.msg[5]= "\\\\E0Without you^1, I NEVER could&have gotten past him./";
    global.msg[6]= "\\\\E7But now^1, with YOUR help.../";
    global.msg[7]= "\\\\E8 %";
    global.msg[8]= "\\\\TFHe\\'s DEAD./";
    global.msg[9]= "\\\\E6And I\\'VE got the human&SOULS!/%%";
    global.typer= 9;
    global.msg[10]= "%%%";
    mywriter= instance_create(__view_get( e__VW.XView, 0 ) + 30, __view_get( e__VW.YView, 0 ) + 100, obj_flowey_writer );
    con= 19;
}
if(con == 19 && !instance_exists(mywriter)) {
    laugh= caster_load("music/f_newlaugh.ogg");
    fl.type= 1;
    con= 20;
    alarm[4]= 10;
}
if(con == 21) {
    obj_floweyfacer.set= 1;
    fl.type= 2;
    caster_play(laugh, 1, 0.9);
    con= 22;
    alarm[4]= 70;
}
if(con == 23) {
    fl.type= 1;
    con= 24;
    alarm[4]= 10;
}
if(con == 25) {
    fl.type= 0;
    con= 26;
}
if(con == 26) {
    global.msg[0]= "\\\\E0Boy!/";
    global.msg[1]= "\\\\E0I\\'ve been empty for so&long.../";
    global.msg[2]= "\\\\E4It feels great to have a&SOUL inside me again./";
    global.msg[3]= "\\\\E1Mmmm^1, I can feel them&wriggling.../";
    global.msg[4]= "\\\\E6Awww^1, you\\'re feeling&left out^1, aren\\'t you?/";
    global.msg[5]= "\\\\E1Well^1, that\\'s just perfect./";
    global.msg[6]= "\\\\E0After all^1, I only have&six souls./";
    global.msg[7]= "\\\\E1I still need one more.../";
    global.msg[8]= "\\\\TFB\\\\E2efore I become GOD./";
    global.msg[9]= "\\\\E3And then^1, with my&newfound powers.../";
    global.msg[10]= "\\\\E7Monsters./";
    global.msg[11]= "\\\\E5Humans./";
    global.msg[12]= "\\\\E5Everyone^2./";
    global.msg[13]= "\\\\E8I\\'ll show them all the REAL&meaning of this world./%%";
    global.msg[14]= "%%%";
    global.typer= 9;
    mywriter= instance_create(__view_get( e__VW.XView, 0 ) + 30, __view_get( e__VW.YView, 0 ) + 100, obj_flowey_writer );
    con= 27;
}
if(con == 27) {
    if(instance_exists(obj_flowey_writer )) {
        if(obj_flowey_writer.stringno == 12) {
            // obj_floweyfacer
            with(1575) {
                if(type == 0) {
                    image_index= 0;
                    sprite_index= spr_tv_floweyface_everyone ;
                    type= 3;
                }
            }
        }
        if(obj_flowey_writer.stringno == 13) {
            // obj_floweyfacer
            with(1575) {
                if(type == 3) {
                    image_speed= 0;
                    image_index= 0;
                    type= 0;
                }
            }
        }
    }
    if(!instance_exists(obj_flowey_writer )) {
        con= 28;
        fl.type= 1;
        alarm[4]= 20;
    }
}
if(con == 29) {
    global.faceemotion= 0;
    fl.type= 2;
    fl.set= 2;
    caster_play(laugh, 1, 0.8);
    con= 30;
    alarm[4]= 70;
}
if(con == 31) {
    fl.type= 1;
    con= 32;
    alarm[4]= 10;
}
if(con == 33) {
    fl.type= 0;
    con= 34;
}
if(con == 34) {
    global.msg[0]= "\\\\E0Oh^1, and forget about escaping&to your old SAVE FILE./";
    global.msg[1]= "\\\\TFI\\\\E2t\\'s gone FOREVER./";
    if(!file_exists("file0")) {
        global.msg[0]= "\\\\E0Golly^1, if only you&had a SAVE FILE you&could run away to.../";
        global.msg[1]= "\\\\TFB\\\\E2ut you were just&too STUPID to make one!/";
    }
    global.msg[2]= "\\\\TfB\\\\E3ut don\\'t worry./";
    global.msg[3]= "\\\\E0Your old friend FLOWEY.../";
    global.msg[4]= "\\\\E1Has worked out a replacement&for you!/";
    global.msg[5]= "\\\\TFI\\\\E6\\'ll SAVE over your own&death./";
    global.msg[6]= "\\\\E7So you can watch me tear&you to bloody pieces.../";
    global.msg[7]= "\\\\E8Over^1, and over^1, and over.../%%";
    global.msg[14]= "%%%";
    global.typer= 9;
    mywriter= instance_create(__view_get( e__VW.XView, 0 ) + 30, __view_get( e__VW.YView, 0 ) + 100, obj_flowey_writer );
    con= 35;
}
if(con == 35 && !instance_exists(obj_flowey_writer )) {
    obj_mainchara_fake.vspeed= -2;
    obj_mainchara_fake.image_speed= 0.334;
    obj_mainchara_fake.moving= 1;
    con= 36;
    alarm[4]= 6;
}
if(con == 37) {
    obj_mainchara_fake.vspeed= 0;
    obj_mainchara_fake.image_speed= 0;
    obj_mainchara_fake.moving= 0;
    con= 38;
    alarm[4]= 20;
}
if(con == 39) {
    global.msg[0]= "\\\\E9... what?/";
    global.msg[1]= "Do you really think&you can stop ME?/";
    global.msg[2]= "\\\\TfH\\\\E4ee hee hee.../%%";
    global.msg[14]= "%%%";
    global.typer= 16;
    mywriter= instance_create(__view_get( e__VW.XView, 0 ) + 30, __view_get( e__VW.YView, 0 ) + 100, obj_flowey_writer );
    con= 40;
}
if(con == 40 && !instance_exists(obj_flowey_writer )) {
    global.faceemotion= 5;
    global.msg[0]= "\\\\E5You really ARE an idiot^4.%%";
    global.msg[14]= "%%%";
    caster_free(-3);
    global.typer= 78;
    mywriter= instance_create(__view_get( e__VW.XView, 0 ) + 30, __view_get( e__VW.YView, 0 ) + 100, obj_flowey_writer );
    con= 41;
}
if(con == 41 && !instance_exists(obj_flowey_writer )) {
    // obj_floweyfacer
    with(1575) instance_destroy();
    instance_create(0, 0, obj_floweybattler2 );
    con= 42;
}
if(crack == 1) draw_sprite(spr_fileerased_crack , 0, 54 + xx, 49 + yy);
if(crack == 2 || crack == 3) {
    draw_sprite(spr_fileerased , 0, 54 + xx, 49 + yy);
    draw_sprite(spr_fileerased_crack , crack - 1, 54 + xx, 49 + yy);
}
if(shake >= 0) {
    xx= nowxx + shake * choose(1, -1);
    yy= nowyy + shake * choose(1, -1);
    shake--;
}

/* */
/*  */
