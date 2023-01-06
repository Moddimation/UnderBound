if(a_con == 4) {
    with(asriel) instance_destroy();
    a2= scr_marker(286, 140, 2296);
    a2.depth= 100000;
    a2.image_xscale= 2;
    a2.image_yscale= 2;
    a2.image_index= 0;
    a_con= 5;
    alarm[4]= 60;
}
if(a_con == 6) {
    global.typer= 85;
    global.msc= 0;
    global.msg[0]= "\\\\XI mean^1, we haven\\'t&even done the\\\\R &Special Thanks\\\\X yet.../";
    global.msg[1]= "Ready^1?&Let\\'s end all of&this for good!/%%";
    scr_blcon_x(a2.x + 80, a2.y);
    a_con= 7;
}
if(a_con == 7 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    a2.image_index= 1;
if(a_con == 7 && !instance_exists(OBJ_WRITER )) {
    a_con= 8;
    alarm[4]= 50;
    ch= instance_create(300, 300, obj_creditsheart );
    snd_play(snd_impact );
    specialfade= 15;
    drawbar= 1;
}
if(a_con == 8) a2.image_alpha-= 0.06;
if(a_con == 9) {
    alarm[5]= 10;
    active= 1;
    a_con= 10;
}
if(a_con == 2) {
    a_con= 3;
    global.typer= 86;
    global.msc= 0;
    global.msg[0]= "Ha ha ha ha.../";
    global.msg[1]= "\\\\M1Did you REALLY&think it was&OVER!?!?/%%";
    scr_blcon_x(asriel.x + 80, asriel.y - 20);
}
if(a_con == 3 && !instance_exists(OBJ_WRITER )) {
    caster_stop(horror);
    a_con= 4;
    instance_create(0, 0, obj_flasher );
    snd_play(snd_break2 );
}
if(active == 1) mytimer++;
if(mytimer == 10) {
    lastsong= caster_load("music/end/express_myogg");
    caster_play(lastsong, 1, 1);
    memory= 0;
    alarm[5]= 1;
}
if(credno >= 60 && memory == 0) {
    alarm[5]= 90;
    memory= 2;
}
if(memory == 2 && credno >= 252) {
    alarm[5]= -1;
    cb= instance_create(320, 240, obj_creditboss );
    cb.alarm[0]= 60;
    cb.type= 2;
    memory= 3;
}
if(memory == 3 && !instance_exists(obj_creditboss )) {
    alarm[5]= 60;
    memory= 4;
}
if(memory == 4 && credno >= 596) {
    memory= 7;
    alarm[5]= 100;
}
if(memory == 7 && credno >= 716) {
    memory= 6;
    alarm[5]= 160;
}
if(memory == 6 && credno >= 881) {
    memory= -2;
    st_y= 500;
    st_t= 0;
    st_f= 1;
    alarm[5]= -1;
}
if(drawbar == 1) {
    draw_set_font(2);
    draw_set_color(65280);
    draw_set_halign(1);
    draw_set_alpha(specialfade);
    draw_text_transformed(320, 20, string_hash_to_newline("SPECIAL THANKS"), 2, 2, 0);
    draw_set_halign(0);
    specialfade-= 0.05;
    draw_set_alpha(1);
    draw_sprite(spr_hpname , 0, 260, 450);
    draw_sprite_ext(spr_infinitysign , 0, 296, 452, 2, 2, 0, 65535, 1);
}
if(memory == -2 && !instance_exists(obj_creditbullet )) {
    drawbar= 0;
    st_t++;
    if(st_t < 150 && st_y > 50) {
        st_f+= 0.25;
        st_y-= st_f;
        st_f2= 1;
    }
    if(st_t > 240 && st_y < 500) {
        vol= 0.8;
        l_alpha= 0;
        st_y+= st_f2;
        st_f2+= 0.25;
        st_f3= 0;
        st_y2= 500;
    }
    draw_set_halign(1);
    draw_set_font(2);
    draw_set_color(65535);
    if(hitno > 0) {
        draw_text_transformed(320, st_y, string_hash_to_newline("TOUCHED CREDITS"), 2, 2, 0);
        i= 0;
        while(i < hitno) {
            draw_text_transformed(320, st_y + 40 + i * 20, string_hash_to_newline(hitname[i]), 1, 1, 0);
            i++;
        }
    }
    if(hitno <= 0) {
        ini_open("undertale.ini");
        ini_write_real("reset", "s_key", 1);
        ini_close();
        draw_text_transformed(320, st_y, string_hash_to_newline("Incredible work.#Somewhere, felt a#door opening...!"), 4, 4, 0);
    }
    if(st_t >= 320) {
        draw_set_color(16777215);
        st_y2-= 2;
        draw_text_transformed(320, st_y2, string_hash_to_newline("Thanks to friends and#family for supporting us.#And UNDERTALE TEAM thanks#you, the player, from#the bottom of our hearts.#Without you, all of this#would be impossible.# #Good night."), 2, 2, 0);
        if(st_y2 <= -400) {
            if(st_y2 >= -410) l_alpha= 0;
            depth= -9000;
            draw_set_color(0);
            draw_set_alpha(l_alpha);
            l_alpha+= 0.00833333333333333;
            draw_rectangle(-10, -10, 999, 999, 0);
            if(st_y2 <= -830) {
                caster_free(lastsong);
                if(global.flag[512] == 0) room_goto(285);
                else  room_goto(286);
            }
        }
    }
    draw_set_halign(0);
}
if(ting == 1) {
    snd_stop(118);
    snd_play(snd_block2 );
    ting= 0;
}


/*  */
