if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 110;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    global.faceemotion= 6;
    caster_stop(global.batmusic);
    con= 15;
    global.hurtanim[myself]= 99;
}
if(global.hurtanim[myself] == 2 && con == 20) {
    with(dmgwriter) alarm[2]= 15;
    con= 20.1;
    global.myfight= 0;
    global.mnfight= 99;
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 48, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2) {
    if(attacked == 0 && mycommand >= 0)
        global.msg[0]= "* Undyne is letting you make&  the first attack.";
    attacked= 1;
    global.turntimer= -1;
    global.mnfight= 3;
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* UNDYNE - ATK 41 DEF 21&* This time^1, don\\'t hold&  anything back!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        con= 80;
        global.msc= 0;
        global.msg[0]= "* You pretend to swing at&  UNDYNE with all your might./%%";
        encourage= 0;
        criticize++;
        hug= 0;
        mercymod= -200;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(con == 0) {
    obj_heart.x= -200;
    con= 1;
    alarm[4]= 20;
}
if(con == 1) {
    global.myfight= 0;
    global.mnfight= 99;
    obj_heart.x= -200;
}
if(con == 2) con= 4.1;
if(con == 4.1) {
    global.typer= 39;
    global.msc= 0;
    global.msg[0]= "I\\'ve been&defeated..^1.&My house is in&shambles.../";
    global.msg[1]= "I even failed to&befriend you./";
    global.msg[2]= "That\\'s it./";
    global.msg[3]= "\\\\E8I don\\'t care if&you\\'re my guest&anymore./";
    global.msg[4]= "\\\\E6One final rematch^1!&All out on both&sides!!!/";
    global.msg[5]= "IT\\'S THE ONLY WAY&I CAN REGAIN MY&LOST PRIDE!!!/";
    global.msg[6]= "NOW COME ON^1!&HIT ME WITH&ALL YOU\\'VE GOT!&NGAHHHH!!!/%%";
    scr_blcon_x(blconx, blcony);
    obj_heart.x= -200;
    con= 4.2;
}
if(con == 4.2) scr_textskip();
if(con == 4.2 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 8;
    global.msg[0]= "* Undyne is letting you make&  the first attack.";
    global.mnfight= 3;
    global.myfight= 0;
    con= 5;
}
if(con == 15) {
    wht= scr_marker(-2, -2, 999);
    wht.depth= -99999;
    wht.image_speed= 0;
    wht.image_xscale= 400;
    wht.image_yscale= 400;
    wht.image_alpha= 0;
    con= 16;
}
if(con == 16) {
    wht.image_alpha+= 0.02;
    if(wht.image_alpha >= 1) {
        con= 17;
        alarm[4]= 45;
    }
}
if(con == 18) {
    with(wht) instance_destroy();
    con= 19;
    shudder= 8;
    alarm[3]= 1;
    global.hurtanim[myself]= 3;
}
if(con == 20.1) {
    con= 20.2;
    alarm[4]= 70;
}
if(con == 21.2) {
    global.msc= 0;
    global.typer= 39;
    global.msg[0]= "What./";
    global.msg[1]= "\\\\E2That\\'s the best&you can manage?/";
    global.msg[2]= "\\\\E3Even attacking at&full force.../";
    global.msg[3]= "You just can\\'t&muster any intent&to hurt me^1,&huh?/";
    global.msg[4]= "\\\\E4.../";
    global.msg[5]= "\\\\E7Heh^1, you know&what?/%%";
    scr_blcon_x(blconx, blcony);
    con= 23;
}
if(con == 23) scr_textskip();
if(con == 23 && !instance_exists(OBJ_WRITER )) {
    mypart1.off= 1;
    if(mypart1.noanim == 1) con= 24;
}
if(con == 24) {
    global.msc= 0;
    global.typer= 39;
    global.msg[0]= "I don\\'t actually&want to hurt you&either./";
    global.msg[1]= "At first^1, I hated&your stupid&saccharine&schtick^1, but.../";
    global.msg[2]= "\\\\E3The way you hit&me right now^1,&it.../";
    global.msg[3]= "\\\\E4Reminded me of&someone I used&to train with./";
    global.msg[4]= "\\\\E7Now I know you&aren\\'t just some&wimpy loser./";
    global.msg[5]= "\\\\E9You\\'re a wimpy&loser with a&big heart!/";
    global.msg[6]= "\\\\E4Just like him.../";
    global.msg[7]= "\\\\E7.../";
    global.msg[8]= "\\\\E3Listen^1, human./";
    global.msg[9]= "\\\\E2It seems that you&and ASGORE are&fated to fight./";
    global.msg[10]= "\\\\E3But knowing him.../";
    global.msg[11]= "\\\\E4He probably&doesn\\'t want to./";
    global.msg[12]= "\\\\E2Talk to him./";
    global.msg[13]= "\\\\E1I\\'m sure you can&persuade him to&let you go home./";
    global.msg[14]= "\\\\E3Eventually^1, some&mean human will&fall down here.../";
    global.msg[15]= "\\\\E3And I\\'ll take&THEIR soul instead./";
    global.msg[16]= "\\\\E1That makes sense^1,&right^1?&Fuhuhu./";
    global.msg[17]= "\\\\E2Oh^1, and if you&DO hurt ASGORE.../";
    global.msg[18]= "\\\\E7I\\'ll take the&human souls..^1.&Cross the barrier.../";
    global.msg[19]= "\\\\E6And beat the&hell out of you!/";
    global.msg[20]= "\\\\E9That\\'s what friends&are for^1, right?/";
    global.msg[21]= "\\\\E9Fuhuhu!/";
    global.msg[22]= "\\\\E9Now let\\'s get the&hell out of this&flaming house!/%%";
    scr_blcon_x(blconx - 70, blcony);
    con= 25;
}
if(con == 25) scr_textskip();
if(con == 25 && !instance_exists(OBJ_WRITER )) {
    con= 26;
    alarm[4]= 15;
}
if(con == 27) {
    instance_create(0, 0, obj_unfader );
    con= 28;
    alarm[4]= 12;
}
if(con == 29) {
    ini_open("undertale.ini");
    udhd= ini_read_real("Undyne", "UD", 0);
    ini_write_real("Undyne", "UD", udhd + 1);
    ini_close();
    global.phasing= 0;
    global.flag[17]= 0;
    global.mercy= 0;
    instance_create(0, 0, obj_persistentfader );
    global.flag[389]= 3;
    room_goto(117);
}
if(con == 80 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_laz );
    global.damage= 1;
    global.hurtanim[myself]= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
