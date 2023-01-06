draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, 16777215, 1);
if(sprite_index == 737)
    draw_sprite_ext(spr_torweird , global.faceemotion, x + 48, y + 58, 2, 2, 0, 16777215, 1);
if(sprite_index == 722 || sprite_index == 735)
    draw_sprite_ext(spr_torweird , global.faceemotion, x + 48, y + 8, 2, 2, 0, 16777215, 1);
if(con == 0) {
    dogsong= caster_load("music/dogsong.ogg");
    caster_loop(dogsong, 0.6, 1);
    global.flag[20]= 0;
    tobdog= instance_create(640, 240, obj_hard_dog );
    tobdog.y-= tobdog.sprite_height;
    tobdog.image_speed= 0.2;
    tobdog.hspeed= -2;
    con= 1;
}
if(con == 1 && tobdog.x < 480) {
    tobdog.hspeed= 0;
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    tobdog.sprite_index= spr_tobdogl_talk ;
    con= 2;
    alarm[4]= 50;
}
if(con == 3) {
    global.faceemotion= 2;
    tobdog.image_speed= 0.2;
    global.msc= 0;
    global.typer= 33;
    global.msg[0]= "And that\\'s the&end of Hard&Mode!/%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
    con= 4;
}
if(con == 4 && !instance_exists(blcon)) {
    con= 5;
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    alarm[4]= 20;
}
if(con == 6) {
    global.typer= 8;
    global.msg[0]= "\\\\E1Eh??/";
    global.msg[1]= "\\\\E2You are ending&it NOW?/";
    global.msg[2]= "\\\\E1And on such a&dramatic moment...?/%%";
    global.faceemotion= 1;
    scr_blcon(x + 120, y + 30, 0);
    con= 7;
}
if(con == 7 && !instance_exists(blcon)) {
    con= 8;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.msg[0]= "That\\'s the&difficult part./";
    global.msg[1]= "Not the bullets./";
    global.msg[2]= "\\\\M2But^1, accepting&that it\\'s all&over.../%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 8 && !instance_exists(blcon)) {
    global.flag[20]= 1;
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    con= 9;
    global.faceemotion= 3;
    global.typer= 8;
    global.msg[0]= "But there WILL be&more^1, will there&not?/%%";
    scr_blcon(x + 120, y + 30, 0);
}
if(con == 9 && !instance_exists(blcon)) {
    con= 10;
    tobdog.image_speed= 0.2;
    global.faceemotion= 2;
    global.typer= 33;
    global.msg[0]= "\\\\M1Maybe./";
    global.msg[1]= "\\\\M2Knowing the&answer is.../";
    global.msg[2]= "\\\\M2... HARD./";
    global.msg[3]= "\\\\E4.../%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 10 && !instance_exists(blcon)) {
    global.faceemotion= 1;
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    con= 11;
    alarm[4]= 50;
}
if(con == 12) {
    global.faceemotion= 0;
    sprite_index= spr_torielside1 ;
    con= 13;
    alarm[4]= 50;
}
if(con == 14 && !instance_exists(blcon)) {
    con= 14.1;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.flag[20]= 0;
    global.msg[0]= "Hey!/";
    global.msg[1]= "Aren\\'t you&supposed&to be dying or&something?/%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 14.1 && !instance_exists(blcon)) {
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    con= 15;
    global.faceemotion= 0;
    global.typer= 8;
    global.msg[0]= "Well^1.&What is the point&of that now?/%%";
    scr_blcon(x + 120, y + 30, 0);
}
if(con == 15 && !instance_exists(blcon)) {
    con= 16;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.flag[20]= 0;
    global.msg[0]= "What will you do&instead...?/%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 16 && !instance_exists(blcon)) {
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    con= 17;
    global.faceemotion= 0;
    global.msg[0]= "Hmmm^1.&Perhaps I will&bake another pie./";
    global.msg[1]= "That last one ended&up a little burnt./%%";
    global.typer= 8;
    scr_blcon(x + 120, y + 30, 0);
}
if(con == 17 && !instance_exists(blcon)) {
    con= 18;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.msg[0]= "\\\\E2I thought it was&good./";
    global.msg[1]= "\\\\E1Theoretically./";
    global.msg[2]= "\\\\E4It\\'s not like I&ate it all while&you were&fighting./%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 18 && !instance_exists(blcon)) {
    tobdog.image_speed= 0;
    tobdog.image_index= 0;
    global.faceemotion= 1;
    con= 19;
    alarm[4]= 90;
}
if(con == 20) {
    hspeed= -3;
    con= 21;
    alarm[4]= 180;
}
if(con == 22 && !instance_exists(blcon)) {
    con= 23;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.msg[0]= "Hey^1! Hey^1!&Can I have some&pie!/%%";
    scr_blcon(400, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 23 && !instance_exists(blcon)) {
    tobdog.hspeed= -4;
    tobdog.sprite_index= spr_tobdogl ;
    con= 24;
    global.faceemotion= 0;
    global.typer= 8;
    global.msg[0]= "You are just going&to eat it all.../%%";
    scr_blcon(0, y + 30, 0);
}
if(con >= 24 && con < 28 && tobdog.x <= 320)
    tobdog.hspeed= 0;
if(con == 24 && !instance_exists(blcon)) {
    con= 25;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.msg[0]= "I can helllp!!!/%%";
    scr_blcon(230, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 25 && !instance_exists(blcon)) {
    con= 26;
    global.faceemotion= 0;
    global.typer= 8;
    global.msg[0]= "Snoring on the&floor is NOT help./%%";
    scr_blcon(0, y + 30, 0);
}
if(con == 26 && !instance_exists(blcon)) {
    con= 27;
    tobdog.image_speed= 0.2;
    global.typer= 33;
    global.msg[0]= "I\\'m not snoring^1,&I\\'m cheering you&on in my sleep!!/";
    global.msg[1]= ".../";
    global.msg[2]= "Oh^1, you\\'re still&here?/";
    global.msg[3]= "Don\\'t you have&anything better&to do?/%%";
    scr_blcon(230, tobdog.y - 120, 0);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 27 && !instance_exists(blcon)) {
    caster_stop(dogsong);
    in= caster_load("music/intronoise.ogg");
    mode= caster_load("music/mode.ogg");
    con= 28;
    tobdog.hspeed= -4;
    alarm[4]= 210;
}
if(con == 29) {
    caster_play(in, 1, 1);
    draw_u= 1;
    depth= -40000;
    con= 30;
    alarm[4]= 90;
}
if(con == 31) {
    caster_play(mode, 0.9, 1);
    draw_u= 2;
    con= 32;
    alarm[4]= 90;
}
if(con == 33) {
    caster_play(mode, 0.8, 1.2);
    draw_u= 3;
    con= 34;
    alarm[4]= 90;
}
if(con == 35) {
    caster_play(mode, 0.7, 1.6);
    draw_u= 4;
    con= 36;
    alarm[4]= 90;
}
if(con == 37) {
    caster_play(mode, 0.6, 2.2);
    draw_u= 5;
    con= 38;
    alarm[4]= 600;
    global.faceemotion= 0;
}
if(con == 39) {
    draw_f= 1;
    fx= 280;
    fy= 340;
    famt= 0;
    con= 40;
    alarm[4]= 90;
}
if(con == 41) {
    global.typer= 6;
    global.msg[0]= "\\\\E0Hey./";
    global.msg[1]= "\\\\E3What\\'s the hold&up!?/";
    global.msg[2]= "\\\\E9Shouldn\\'t she be&dead by now!?/";
    global.msg[3]= "\\\\E1I\\'ve been waiting&in that room for.../";
    global.msg[4]= "\\\\E6.../";
    global.msg[5]= "\\\\E7... Hard mode...?/";
    global.msg[6]= "\\\\E0Gee^1, you better&take a picture./";
    global.msg[7]= "People are gonna&think you\\'re REALLY&cool./";
    global.msg[8]= "\\\\E9... NOT!/";
    global.msg[9]= "\\\\E8Golly^1, talk about&a tryhard./";
    global.msg[10]= "PA^1. THE^1. TIC./%%";
    scr_blcon(fx + 90, fy, 0);
    // OBJ_WRITER
    with(782) depth= -42100;
    blcon.depth= -42000;
    con= 42;
}
if(con == 42 && !instance_exists(blcon)) {
    global.faceemotion= 0;
    con= 42.1;
    alarm[4]= 150;
}
if(con == 43.1) {
    global.msg[0]= "\\\\E0Uh^1, so^1, are you&gonna keep going^1,&or...?/%%";
    scr_blcon(fx + 90, fy, 0);
    // OBJ_WRITER
    with(782) depth= -42100;
    blcon.depth= -42000;
    con= 44;
}
if(con == 44 && !instance_exists(blcon)) {
    global.faceemotion= 1;
    con= 45;
    global.typer= 8;
    global.msg[0]= "It\\'s over./%%";
    scr_blcon(0, fy, 0);
    // OBJ_WRITER
    with(782) depth= -42100;
    blcon.depth= -42000;
}
if(con == 45 && !instance_exists(blcon)) {
    con= 46;
    alarm[4]= 30;
}
if(con == 47) {
    global.typer= 6;
    global.msg[0]= "\\\\E8Hahaha^1!&I KNEW that!/";
    global.msg[1]= "Why does everyone&have to be so&condescending!?/";
    global.msg[2]= "\\\\E1.../";
    global.msg[3]= "\\\\E8So what\\'s YOUR&excuse^1?&Sitting around&here...?/";
    global.msg[4]= "\\\\E0Don\\'t you have&anything better to%%";
    scr_blcon(fx + 90, fy, 0);
    // OBJ_WRITER
    with(782) depth= -42100;
    blcon.depth= -42000;
    con= 48;
}
if(con == 48 && !instance_exists(blcon)) {
    con= 50;
    global.typer= 33;
    global.msg[0]= "I already said&that./%%";
    scr_blcon(0, fy, 0);
    // OBJ_WRITER
    with(782) depth= -42100;
    blcon.depth= -42000;
}
if(con == 50 && !instance_exists(blcon)) {
    con= 51;
    alarm[4]= 120;
}
if(con == 52) {
    draw_f= 3;
    con= 53;
    alarm[4]= 180;
    blk= 0;
}
if(draw_u > 0) {
    draw_set_color(0);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_set_halign(1);
    if(draw_u >= 1) draw_sprite_ext(spr_undertaletitle , 0, 0, -60, 2, 2, 0, 16777215, 1);
    if(draw_u >= 2) {
        draw_set_color(255);
        draw_set_font(1);
        draw_text_transformed(320, 140, string_hash_to_newline("HARD MODE"), 3, 3, 20);
    }
    if(draw_u >= 3) {
        draw_set_color(65535);
        draw_set_font(1);
        draw_text_transformed(320, 230, string_hash_to_newline("Coming..."), 1.5, 1.5, 0);
    }
    if(draw_u >= 4) {
        draw_set_color(65535);
        draw_set_font(1);
        draw_text_transformed(320, 270, string_hash_to_newline("Maybe,"), 1, 1, 0);
    }
    if(draw_u >= 5) {
        draw_set_color(65535);
        draw_set_font(1);
        draw_text_transformed(320, 305, string_hash_to_newline("Eh. don\\'t count on it."), 0.5, 0.5, 0);
    }
    draw_set_halign(0);
}
if(draw_f == 1) {
    draw_sprite_ext(spr_flowey_riseanim , floor(famt), fx, fy, 2, 2, 0, 16777215, 1);
    famt+= 0.5;
    if(famt >= 8) draw_f= 2;
}
if(draw_f == 2) {
    draw_sprite_ext(spr_flowey_riseanim , 8, fx, fy, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_floweyface_l3 , global.faceemotion, fx, fy, 2, 2, 0, 16777215, 1);
}
if(draw_f == 3) {
    draw_sprite_ext(spr_flowey_riseanim , floor(famt), fx, fy, 2, 2, 0, 16777215, 1);
    famt-= 0.5;
    if(famt <= 0) draw_f= 4;
}
if(con == 54) {
    draw_set_alpha(blk);
    blk+= 0.01;
    draw_set_color(0);
    draw_rectangle(-10, -10, 999, 999, 0);
    if(blk > 1.8) room_goto(323);
    draw_set_alpha(1);
}

/* */
/*  */
