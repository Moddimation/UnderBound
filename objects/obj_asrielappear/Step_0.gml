if(con == 1) {
    counter++;
    if(counter == 30) image_index= 1;
    if(counter == 60) image_index= 2;
    if(counter == 90) image_index= 3;
    if(counter == 120) image_index= 2;
    if(counter == 180) image_index= 4;
    if(counter == 190) image_index= 5;
    if(counter == 200) image_index= 6;
    if(counter == 210) image_index= 7;
    if(counter == 250) image_index= 9;
    if(counter == 258) image_index= 8;
    if(counter == 266) image_index= 9;
    if(counter == 274) image_index= 8;
    if(counter == 282) image_index= 9;
    if(counter == 290) image_index= 8;
    if(counter == 298) image_index= 9;
    if(counter == 306) image_index= 8;
    if(counter == 380) {
        con= 1.1;
        global.typer= 85;
        global.msc= 0;
        global.msg[0]= "Finally./";
        global.msg[1]= "I was so&tired of&being a&flower./%%";
        scr_blcon_x(x + 90, y);
        obj_blconwideslave.sprite_index= spr_blconsm ;
    }
}
if(con == 1.1 && !instance_exists(obj_blconwideslave )) {
    con= 1.2;
    alarm[4]= 50;
}
if(con == 2.2 && !instance_exists(obj_blconwideslave )) {
    sprite_index= spr_kidasriel_front ;
    x+= 2;
    y-= 2;
    image_index= 0;
    con= 3;
    counter= 0;
    alarm[4]= 40;
}
if(con == 4) {
    counter++;
    if(counter == 15) image_index= 1;
    if(counter == 30) image_index= 2;
    if(counter == 45) image_index= 3;
    if(counter == 90) con= 5;
}
if(con == 5) {
    global.msg[0]= "Howdy!/";
    global.msg[1]= global.charname + "^1,&are you&there?/";
    global.msg[2]= "It\\'s me^1,&your&best&friend./%%";
    scr_blcon_x(x + 90, y);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 6;
}
if(con == 6 && !instance_exists(obj_blconwideslave )) {
    con= 7;
    alarm[4]= 10;
}
if(con == 8) {
    cr= caster_load("music/create.ogg");
    caster_play(cr, 1, 1);
    flasher= 1;
    con= 9;
    alarm[4]= 5;
}
if(con == 10) {
    sprite_index= spr_asriel_afterimager_full ;
    x= 320 - sprite_width / 2;
    y= 20;
    ss= 0;
    con= 11;
    alarm[4]= 30;
}
if(con == 12) {
    con= 13;
    instance_create(0, 0, obj_FinalWriter );
    alarm[4]= 200;
}
if(con >= 10) {
    ss++;
    y+= sin(ss / 6) * 0.5;
}
if(con == 14) {
    global.border= 0;
    SCR_BORDERSETUP();
    global.battlegroup= 255;
    global.mercy= 1;
    global.hp= global.maxhp;
    global.flag[15]= 0;
    global.seriousbattle= 1;
    room_goto(306);
}


/*  */
