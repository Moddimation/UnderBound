if(skiptext == 1) scr_textskip();
if(con == 1) {
    global.faceemotion= 4;
    global.border= 4;
    SCR_BORDERSETUP();
    fallendown= caster_load("music/fallendown2.ogg");
    tor= instance_create(640, 96, obj_torielbody );
    tor.hspeed= -10;
    con= 2;
}
if(con == 2 && tor.x <= 256) {
    caster_loop(fallendown, 1, 1);
    tor.hspeed= 0;
    tor.x= 248;
    con= 3;
    alarm[4]= 15;
}
if(con == 4) {
    global.msc= 0;
    global.typer= 8;
    global.faceemotion= 4;
    global.msg[0]= "\\\\E4What a miserable&creature^1, torturing&such a poor^1,&innocent, youth.../";
    global.msg[1]= "\\\\E0Do not be afraid^1,&my child./";
    global.msg[2]= "\\\\E0It is I^1, TORIEL^1,&your friend and&guardian./";
    global.msg[3]= "\\\\E1At first^1, I thought&I would let you&make your journey&alone.../";
    global.msg[4]= "\\\\E4But I could not&stop worrying about&you./";
    global.msg[5]= "\\\\E4Your adventure must&have been so&treacherous./";
    global.msg[6]= "\\\\E2... and ultimately^1,&it would burden you&with a horrible&choice./";
    global.msg[7]= "To leave this place^1,&you would have to&take the life of&another person./";
    global.msg[8]= "\\\\E2You would have to&defeat ASGORE./";
    global.msg[9]= "\\\\E4However..^1.&I realized.../";
    global.msg[10]= "\\\\E1I cannot allow that./";
    global.msg[11]= "It is not right to&sacrifice someone&simply to let&someone leave here./";
    global.msg[12]= "\\\\E4Is that not what&I have been trying to&prevent this&whole time?/";
    global.msg[13]= "\\\\E1So^1, for now^1, let&us suspend this&battle./";
    global.msg[14]= "\\\\E4As terrible as&ASGORE is.../";
    global.msg[15]= "\\\\E0He deserves mercy^1,&too./%%";
    scr_blcon_x(tor.x + 135, tor.y - 30);
    con= 5;
}
if(con == 5 && !instance_exists(obj_blconwideslave )) {
    con= 6;
    asg= instance_create(-340, 60, obj_sadgore );
    asg.hspeed= 8;
    tor.hspeed= 8;
}
if(con == 6 && asg.x > -130) {
    asg.hspeed= 0;
    tor.hspeed= 0;
    con= 7;
    alarm[4]= 10;
}
if(con == 8) {
    global.faceemotion= 1;
    global.typer= 63;
    global.msg[0]= "Tori..^1.&You&came&back...!/%%";
    scr_blcon_x(asg.x + 300, asg.y);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 9;
}
if(con == 9 && !instance_exists(obj_blconwideslave )) {
    global.typer= 8;
    global.msg[0]= "\\\\E5Do not " + chr(ord("\"")) + "Tori" + chr(ord("\"")) + " me^1,&Dreemurr!/";
    global.msg[1]= "\\\\E2You pathetic whelp./";
    global.msg[2]= "If you really wanted&to free our kind.../";
    global.msg[3]= "You could have gone&through the barrier&after you got ONE&SOUL.../";
    global.msg[4]= "... taken six SOULs&from the humans^1, then&come back and freed&everyone peacefully./";
    global.msg[5]= "\\\\E5But instead^1, you made&everyone live in&despair.../";
    global.msg[6]= "Because you would&rather wait here^1,&meekly hoping another&human never comes./%%";
    scr_blcon_x(tor.x - 239, tor.y - 40);
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    con= 10;
}
if(con == 10 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 0) asg.face= 2;
    if(OBJ_WRITER.stringno == 1) asg.face= 3;
    if(OBJ_WRITER.stringno == 5) asg.face= 4;
}
if(con == 10 && !instance_exists(obj_blconwideslave )) {
    asg.face= 5;
    con= 11;
    alarm[4]= 60;
    alarm[4]= 1;
}
if(con == 12) {
    asg.face= 5;
    global.typer= 63;
    global.msg[0]= ".../";
    global.msg[1]= "... Tori.../";
    global.msg[2]= "You\\'re right.../";
    global.msg[3]= "I am a miserable&creature.../";
    global.msg[4]= "... but^1, do you think&we can at least be&friends again?/%%";
    scr_blcon_x(asg.x + 300, asg.y);
    con= 13;
}
if(con == 13 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 4)
    asg.face= 6;
if(con == 13 && !instance_exists(obj_blconwideslave )) {
    asg.face= 6;
    con= 14;
    alarm[4]= 60;
    alarm[4]= 1;
}
if(con == 15) {
    global.typer= 8;
    global.msg[0]= "(Sigh.)/";
    global.msg[1]= "NO^1,&Asgore./%%";
    scr_blcon_x(tor.x - 110, tor.y - 40);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    con= 16;
}
if(con == 16 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 0) global.faceemotion= 10;
    if(OBJ_WRITER.stringno == 1) {
        global.faceemotion= 11;
        asg.face= 7;
    }
}
if(con == 16 && !instance_exists(obj_blconwideslave )) {
    con= 16.1;
    alarm[4]= 10;
}
if(con == 17.1) {
    global.faceemotion= 3;
    und= instance_create(700, 340, obj_undyne_endingbody );
    und.hspeed= -12;
    con= 18;
}
if(con == 18) {
    // obj_btparent
    with(755) {
        depth= 300;
        image_alpha-= 0.08;
    }
    // obj_mercybutton_shatter
    with(480) {
        depth= 300;
        image_alpha-= 0.08;
    }
    if(und.x <= 510) {
        und.x= 500;
        und.hspeed= 0;
        con= 19;
        alarm[4]= 8;
    }
}
if(con == 20) {
    global.msc= 0;
    global.typer= 81;
    global.msg[0]= "Ngahhhhhh!!^1!&ASGORE^1! Human!!/";
    global.msg[1]= "Nobody fight each&other!!!/";
    global.msg[2]= "Everyone\\'s gonna&make friends^1, or&else I\\'ll...!!/";
    global.msg[3]= "I\\'ll.../";
    global.msg[4]= ".../%%";
    scr_blcon_x(und.x - 260, und.y);
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 21;
}
if(con == 21 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) global.faceemotion= 9;
    if(OBJ_WRITER.stringno == 3) und.face= 17;
}
if(con == 21 && !instance_exists(obj_blconwideslave )) {
    con= 22;
    global.typer= 8;
    global.msg[0]= "Hello^1.&I am&TORIEL./";
    global.msg[1]= "Are you&the&human\\'s&friend?/";
    global.msg[2]= "It is&nice to&meet&you./%%";
    scr_blcon_x(tor.x - 110, tor.y - 40);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
}
if(con == 22 && !instance_exists(obj_blconwideslave )) {
    con= 23;
    global.typer= 81;
    und.face= 10;
    global.msg[0]= "Uh^1,&yeah...?/";
    global.msg[1]= "Nice to&meet&you!/%%";
    scr_blcon_x(und.x - 130, und.y);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
}
if(con == 23 && !instance_exists(obj_blconwideslave )) {
    und.face= 10;
    global.faceemotion= 0;
    if(und.x > 170) und.x-= 15;
    else  und.x= 160;
    if(und.y > 78) und.y-= 13;
    else  und.y= 68;
    if(und.x == 160 && und.y == 68) con= 25;
}
if(con == 25) {
    und.face= 16;
    global.typer= 81;
    global.msg[0]= "Hey&ASGORE^1,&is that&your ex?/";
    global.msg[1]= "Jeez^1.&That\\'s&rough^1,&buddy./%%";
    scr_blcon_x(und.x + 80, und.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 26;
}
if(con == 26 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1) {
    und.face= 4;
    asg.face= 8;
}
if(con == 26 && !instance_exists(obj_blconwideslave )) {
    global.faceemotion= 9;
    con= 27;
    al= instance_create(660, 348, obj_alphys_friendscene );
    al.hspeed= -12;
    con= 28;
}
if(con == 28 && al.x <= 470) {
    al.hspeed= 0;
    al.x= 460;
    con= 29;
    alarm[4]= 10;
}
if(con == 30) {
    und.face= 18;
    global.typer= 74;
    global.msg[0]= "H-hey^1!/";
    global.msg[1]= "Nobody&hurt&each&other!!/";
    global.msg[2]= ".../";
    global.msg[3]= ".../%%";
    scr_blcon_x(al.x - 120, al.y);
    blcon.sprite_index= spr_blconsm2 ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 31;
}
if(con == 31 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) al.face= 4;
    if(OBJ_WRITER.stringno == 3) al.face= 16;
}
if(con == 31 && !instance_exists(obj_blconwideslave )) {
    con= 32;
    alarm[4]= 10;
}
if(con == 33) {
    global.typer= 8;
    global.msg[0]= "Oh^1!&Are you&another&friend?/";
    global.msg[1]= "I am&TORIEL^1.&Hello!/%%";
    scr_blcon_x(tor.x - 110, tor.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    con= 34;
}
if(con == 34 && !instance_exists(obj_blconwideslave )) {
    global.typer= 74;
    global.msg[0]= "Uh^1,&h-h-hi!/";
    global.msg[1]= ".../";
    global.msg[2]= "(THERE\\'S&TWO OF&THEM???)/%%";
    scr_blcon_x(al.x - 120, al.y);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 35;
}
if(con == 35 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) al.face= 17;
    if(OBJ_WRITER.stringno == 2) al.face= 4;
}
if(con == 35 && !instance_exists(obj_blconwideslave )) {
    al.face= 18;
    global.faceemotion= 0;
    if(al.x > 230) al.x-= 10;
    else  al.x= 220;
    if(al.y > 114) al.y-= 12;
    else  al.y= 104;
    if(al.x == 220 && al.y == 104) {
        al.face= 18;
        con= 36;
    }
}
if(con == 36) {
    global.faceemotion= 9;
    pap= instance_create(660, 300, obj_papyrus_friendscene );
    pap.hspeed= -16;
    con= 37;
}
if(con == 37 && pap.x <= 478) {
    pap.hspeed= 0;
    pap.x= 468;
    con= 38;
    alarm[4]= 10;
}
if(con == 39 && !instance_exists(obj_blconwideslave )) {
    global.msc= 0;
    global.typer= 22;
    global.msg[0]= "HEY^1!&NOBODY FIGHT&ANYONE!/";
    global.msg[1]= "IF ANYONE FIGHTS&ANYONE...!/";
    global.msg[2]= "THEN I\\'LL!!^1!&BE FORCED!!!/";
    global.msg[3]= "TO ASK UNDYNE&FOR HELP!!!/%%";
    scr_blcon_x(pap.x - 260, pap.y);
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 40;
}
if(con == 40 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) pap.face= 1;
    if(OBJ_WRITER.stringno == 3) pap.face= 0;
}
if(con == 40 && !instance_exists(obj_blconwideslave )) {
    pap.face= 2;
    global.typer= 8;
    global.msg[0]= "Hello!/%%";
    scr_blcon_x(tor.x - 110, tor.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    con= 41;
}
if(con == 41 && !instance_exists(obj_blconwideslave )) {
    pap.face= 2;
    global.typer= 22;
    global.msg[0]= "OH^1!&HELLO^1, YOUR&MAJESTY!/";
    global.msg[1]= "PSST^1!&HEY^1, HUMAN.../";
    global.msg[2]= "DID ASGORE&SHAVE...?/";
    global.msg[3]= "AND..^1.&CLONE HIMSELF????/%%";
    scr_blcon_x(pap.x - 260, pap.y);
    obj_blconwideslave.depth= -1000;
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    OBJ_WRITER.depth= -2000;
    con= 42;
}
if(con == 42 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) pap.face= 7;
    if(OBJ_WRITER.stringno == 2) pap.face= 5;
    if(OBJ_WRITER.stringno == 3) pap.face= 6;
}
if(con == 42 && !instance_exists(obj_blconwideslave )) {
    global.faceemotion= 0;
    sans= instance_create(-108, 408, obj_sans_friendscene );
    sans.hspeed= 5;
    con= 43;
}
if(con == 43 && sans.x >= 16) {
    sans.x= 20;
    sans.hspeed= 0;
    con= 44;
    alarm[4]= 10;
}
if(con == 45) {
    pap.face= 7;
    global.faceemotion= 3;
    global.typer= 80;
    global.msg[0]= "hey&guys..^1.&what\\'s&up?/%%";
    scr_blcon_x(sans.x + 108, sans.y - 50);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 46;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
}
if(con == 46 && !instance_exists(obj_blconwideslave )) {
    pap.face= 2;
    global.typer= 8;
    global.msg[0]= "That&voice&...!!/%%";
    scr_blcon_x(tor.x - 110, tor.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 47;
}
if(con == 47 && !instance_exists(obj_blconwideslave )) {
    pap.face= 7;
    global.faceemotion= 6;
    if(pap.x < 560) pap.x+= 3;
    if(tor.x > 365) tor.x-= 10;
    else  tor.x= 360;
    if(tor.y < 360) tor.y+= 12;
    else  tor.y= 352;
    if(tor.x == 360 && tor.y == 352) con= 48;
}
if(con == 48 && !instance_exists(obj_blconwideslave )) {
    und.face= 13;
    asg.face= 9;
    al.face= 3;
    sans.face= 7;
    global.typer= 8;
    global.faceemotion= 6;
    global.msg[0]= "Hello^1,&I think&we&may.../";
    global.msg[1]= "Know&each&other?/%%";
    scr_blcon_x(tor.x - 110, tor.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 49;
}
if(con == 49 && !instance_exists(obj_blconwideslave )) {
    global.typer= 80;
    sans.face= 8;
    global.msg[0]= "oh hey..^1.&i recognize your&voice^1, too./%%";
    scr_blcon_x(120, 360);
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 50;
}
if(con == 50 && !instance_exists(obj_blconwideslave )) {
    asg.face= 10;
    al.face= 4;
    und.face= 19;
    global.typer= 8;
    global.msg[0]= "I am&TORIEL./";
    global.msg[1]= "So nice&to meet&you./%%";
    scr_blcon_x(tor.x - 110, tor.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 51;
}
if(con == 51 && !instance_exists(obj_blconwideslave )) {
    global.msg[0]= "the&name\\'s&sans./";
    global.msg[1]= "and^1, uh^1,&same./%%";
    sans.face= 9;
    global.typer= 80;
    scr_blcon_x(120, 360);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 52;
}
if(con == 52 && !instance_exists(obj_blconwideslave )) {
    sans.face= 7;
    global.typer= 8;
    global.faceemotion= 3;
    global.msg[0]= "Oh^1!&Wait^1,&then...!/%%";
    scr_blcon_x(tor.x - 110, tor.y - 30);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 53;
}
if(con == 53 && !instance_exists(obj_blconwideslave )) {
    global.faceemotion= 14;
    if(pap.x > 500) pap.x-= 5;
    if(tor.x > 128) tor.x-= 20;
    else  tor.x= 108;
    if(tor.x == 108) con= 54;
}
if(con == 54) {
    pap.face= 0;
    global.msg[0]= "This must be your&brother^1, Papyrus!/";
    global.msg[1]= "Greetings^1, Papyrus^1!&It is so nice to&finally meet you!/";
    global.msg[2]= "Your brother has&told me so much&about you./%%";
    global.typer= 8;
    scr_blcon_x(tor.x + 135, tor.y - 30);
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 55;
}
if(con == 55 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    pap.face= 3;
if(con == 55 && !instance_exists(obj_blconwideslave )) {
    global.typer= 22;
    pap.face= 3;
    global.msg[0]= "WOWIE.../";
    global.msg[1]= "I CAN\\'T BELIEVE&ASGORE\\'S CLONE&KNOWS WHO I&AM!!!/";
    global.msg[2]= "THIS IS THE BEST&DAY OF MY&LIFE!!!!!!!/%%";
    scr_blcon_x(pap.x - 240, pap.y);
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 56;
}
if(con == 56 && !instance_exists(obj_blconwideslave )) {
    global.typer= 8;
    pap.face= 0;
    global.msg[0]= "Hey^1, Papyrus.../";
    global.msg[1]= "What does a skeleton&tile his roof&with?/%%";
    scr_blcon_x(tor.x + 135, tor.y - 30);
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 57;
}
if(con == 57 && !instance_exists(obj_blconwideslave )) {
    pap.face= 7;
    global.typer= 22;
    global.msg[0]= "HMMM..^1.&SNOW-PROOF ROOF&TILES???/%%";
    scr_blcon_x(pap.x - 240, pap.y);
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 58;
}
if(con == 58 && !instance_exists(obj_blconwideslave )) {
    global.msg[0]= "No^1, silly^1!&A skeleton tiles&his roof with.../";
    global.msg[1]= "SHIN-gles!!!/%%";
    global.typer= 8;
    scr_blcon_x(tor.x + 135, tor.y - 30);
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 59;
}
if(con == 59 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    pap.face= 8;
if(con == 59 && !instance_exists(OBJ_WRITER )) {
    con= 60;
    alarm[4]= 1;
    sans.face= 8;
    global.faceemotion= 12;
}
if(con == 61 && !instance_exists(obj_blconwideslave )) {
    pap.face= 4;
    global.typer= 22;
    global.msg[0]= "I CHANGED MY&MIND!!!/";
    global.msg[1]= "THIS IS THE WORST&DAY OF MY LIFE!!!/%%";
    scr_blcon_x(pap.x - 240, pap.y);
    obj_blconwideslave.sprite_index= spr_blconwdshrt_l ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 62;
}
if(con == 62 && !instance_exists(obj_blconwideslave )) {
    al.face= 18;
    und.face= 4;
    asg.face= 7;
    global.typer= 81;
    global.msg[0]= "Come on^1, ASGORE^1!&It\\'s gonna be OK!/";
    global.msg[1]= "There are plenty&of fish in the&sea.../%%";
    scr_blcon_x(und.x + 85, und.y - 50);
    con= 63;
}
if(con == 63 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    und.face= 11;
if(con == 63 && !instance_exists(obj_blconwideslave )) {
    global.typer= 74;
    und.face= 18;
    al.face= 9;
    asg.face= 8;
    global.msg[0]= "Y-yeah^1, ASGORE!!/";
    global.msg[1]= "Undyne\\'s totally&right about that&fish thing!/";
    global.msg[2]= "S-sometimes you\\'ve&just got to^1, uh.../";
    global.msg[3]= "S-stop going after&furry boss monsters&and^1, uh.../";
    global.msg[4]= "J-just get to know&a really cute&fish...?/";
    global.msg[5]= ".../";
    global.msg[6]= "It\\'s a metaphor./%%";
    scr_blcon_x(al.x + 145, al.y);
    con= 64;
}
if(con == 64 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) al.face= 10;
    if(OBJ_WRITER.stringno == 4) und.face= 12;
    if(OBJ_WRITER.stringno == 5) {
        al.face= 15;
        und.face= 13;
    }
    if(OBJ_WRITER.stringno == 6) {
        al.face= 18;
        und.face= 11;
    }
}
if(con == 64 && !instance_exists(obj_blconwideslave )) {
    global.typer= 81;
    und.face= 18;
    global.msg[0]= "Well./";
    global.msg[1]= "I think&it\\'s a&good&analogy./%%";
    scr_blcon_x(und.x + 85, und.y - 50);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 65;
}
if(con == 65 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    und.face= 11;
if(con == 65 && !instance_exists(obj_blconwideslave )) {
    leg= 1;
    leg_r= 0;
    legx= room_width + 200;
    al.face= 15;
    und.face= 13;
    pap.face= 2;
    global.faceemotion= 4;
    asg.face= 9;
    con= 66;
    alarm[4]= 15;
}
if(con == 67) {
    global.typer= 51;
    global.msg[0]= "OH MY GOD!/";
    global.msg[1]= "\\\\XWILL YOU TWO&JUST \\\\RSMOOCH\\\\X &ALREADY!?/";
    global.msg[2]= "THE AUDIENCE IS&DYING FOR SOME&ROMANTIC ACTION!!!/%%";
    scr_blcon_x(room_width - 255, 20);
    blcon.sprite_index= spr_blconwdshrt_l ;
    con= 68;
}
if(con == 68 && !instance_exists(obj_blconwideslave )) {
    leg= 2;
    global.faceemotion= 13;
    pap.face= 7;
    global.typer= 81;
    und.face= 6;
    global.msg[0]= "HEY^1, SHUT UP!!!/";
    global.msg[1]= "Man^1, the nerve of&that guy!/";
    global.msg[2]= "Right^1,&Alphys!??/";
    global.msg[3]= ".../";
    global.msg[4]= "Uh^1, Alphys?/%%";
    scr_blcon_x(und.x + 85, und.y - 50);
    con= 69;
}
if(con == 69 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) und.face= 10;
    if(OBJ_WRITER.stringno == 2) und.face= 18;
    if(OBJ_WRITER.stringno == 4) und.face= 3;
}
if(con == 69 && !instance_exists(obj_blconwideslave )) {
    global.typer= 74;
    al.face= 4;
    global.msg[0]= ".../";
    global.msg[1]= "No./";
    global.msg[2]= "He\\'s&right./";
    global.msg[3]= "LET\\'S&DO&IT./%%";
    scr_blcon_x(al.x + 145, al.y);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 70;
}
if(con == 70 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) {
        al.face= 3;
        und.face= 13;
    }
    if(OBJ_WRITER.stringno == 3) al.face= 11;
}
if(con == 70 && !instance_exists(obj_blconwideslave )) {
    al.face= 18;
    und.face= 19;
    global.typer= 81;
    global.msg[0]= "??????????????/";
    global.msg[1]= "Well??^1? Uh??^1?&I guess??^1?&If you want to??^1?&Then????/";
    global.msg[2]= "Don\\'t hold anything&back!!!/%%";
    scr_blcon_x(und.x + 85, und.y - 50);
    con= 71;
}
if(con == 71 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) und.face= 17;
    if(OBJ_WRITER.stringno == 2) und.face= 14;
}
if(con == 71 && !instance_exists(obj_blconwideslave )) {
    con= 72;
    alarm[4]= 90;
    und.smooch= 1;
    al.smooch= 1;
}
if(con == 73) {
    und.smooch= 2;
    al.smooch= 2;
    global.faceemotion= 3;
    asg.face= 9;
    al.x+= 21;
    tor.x+= 12;
    if(tor.x > 212) tor.x= 218;
    tor.y-= 26;
    if(tor.y < 108) tor.y= 96;
    if(tor.x == 218 && tor.y == 96) con= 74;
}
if(con == 74) {
    global.typer= 8;
    global.msg[0]= "W-wait!/";
    global.msg[1]= "Not in&front of&the&human!/%%";
    scr_blcon_x(tor.x + 125, tor.y - 80);
    obj_blconwideslave.sprite_index= spr_blconsm ;
    con= 75;
}
if(con == 75 && !instance_exists(obj_blconwideslave )) {
    und.smooch= 0;
    und.s_i= 0;
    al.smooch= 0;
    con= 76;
    global.typer= 74;
    al.face= 18;
    und.face= 14;
    global.faceemotion= 6;
    global.msg[0]= "Uhh^1, right^1!&S-sorry^1, I got a&little carried&away there./%%";
    scr_blcon_x(al.x - 40, tor.y - 90);
    obj_blconwideslave.sprite_index= spr_blconabove ;
}
if(con == 76 && !instance_exists(obj_blconwideslave )) {
    sans.face= 0;
    pap.face= 0;
    asg.face= 0;
    al.face= 0;
    und.face= 0;
    sidecon= 1;
    global.typer= 8;
    global.faceemotion= 0;
    global.msg[0]= "Hee hee hee./";
    global.msg[1]= "My child^1, it seems&as if you must&stay here&for a while./";
    global.msg[2]= "\\\\E6But looking at&all the great&friends you have&made.../";
    global.msg[3]= "\\\\E0I think.../";
    global.msg[4]= "\\\\E7I think you will&be happy here./%%";
    scr_blcon_x(tor.x - 35, tor.y + 170);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    obj_blconwideslave.depth= -1000;
    OBJ_WRITER.depth= -2000;
    con= 77;
}
if(con == 77 && !instance_exists(obj_blconwideslave ) && sidecon == 2) {
    con= 78;
    alarm[4]= 40;
}
if(con == 79) {
    global.typer= 74;
    global.faceemotion= 0;
    skiptext= 0;
    al.face= 15;
    global.msg[0]= "H-hey^1, that&reminds me./";
    global.msg[1]= "Papyrus..^1.&YOU called&everyone here^1,&right?/";
    global.msg[2]= "Well^1, besides^1,&uh^1, her./";
    global.msg[3]= "Uh^1, anyway..^1.&If I got here&before you.../";
    global.msg[4]= "How did you know&how to call&everybody?/%%";
    scr_blcon_x(al.x - 80, tor.y - 90);
    obj_blconwideslave.sprite_index= spr_blconabove ;
    con= 80;
}
if(con == 80 && !instance_exists(obj_blconwideslave )) {
    pap.face= 7;
    global.typer= 22;
    global.msg[0]= "LET\\'S&JUST&SAY.../%%";
    scr_blcon_x(pap.x - 100, 8);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    con= 81;
}
if(con == 81 && !instance_exists(obj_blconwideslave )) {
    pap.face= 0;
    global.typer= 83;
    global.msg[0]= "A TINY&FLOWER&HELPED&ME./%%";
    caster_free(fallendown);
    scr_blcon_x(pap.x - 100, 8);
    obj_blconwideslave.sprite_index= spr_blconsm2 ;
    con= 82;
}
if(con == 82 && !instance_exists(obj_blconwideslave )) {
    al.face= 9;
    global.typer= 82;
    global.msg[0]= "A tiny..^1.&flower?/%%";
    global.faceemotion= 1;
    scr_blcon_x(al.x - 80, tor.y - 90);
    obj_blconwideslave.sprite_index= spr_blconabove ;
    con= 83;
}
if(con == 83 && !instance_exists(obj_blconwideslave )) {
    con= 84;
    alarm[4]= 50;
}
if(con == 85) {
    i= 0;
    snd_play(snd_laz );
    gigavine[i]= instance_create(-100, 160, obj_friendscene_gigavine );
    con= 86;
    alarm[4]= 75;
}
if(con == 87) {
    global.border= 4;
    SCR_BORDERSETUP();
    gowhite= 1;
    con= 88;
    snd_play(snd_break2 );
    alarm[4]= 80;
}
if(con == 89) {
    global.faceemotion= 0;
    flowey= instance_create(276, 296, obj_flowey_friendscene );
    con= 90;
    alarm[4]= 60;
}
if(con == 91) {
    skiptext= 1;
    caster_loop(fmusic, 0.8, 0.9);
    global.typer= 6;
    global.msg[0]= "\\\\E0You IDIOTS./";
    global.msg[1]= "\\\\E2While you guys were&having your little&pow-wow.../";
    global.msg[2]= "\\\\E6I took the human&SOULS!/";
    global.msg[3]= "\\\\E5And now^1, not only&are THOSE under my&power.../";
    global.msg[4]= "\\\\E6But all of your&FRIENDS\\' SOULS are&gonna be mine^1, too!/";
    global.msg[5]= "\\\\E0Hee hee hee./";
    global.msg[6]= "\\\\E1And you know what&the best part is?/";
    global.msg[7]= "\\\\E5It\\'s all your&fault./";
    global.msg[8]= "\\\\E6It\\'s all because&you MADE THEM&love you./";
    global.msg[9]= "\\\\E7All the time you&spent listening to&them.../";
    global.msg[10]= "\\\\E2Encouraging them..^1.&Caring about them.../";
    global.msg[11]= "\\\\E0Without that^1, they&wouldn\\'t have come&here./";
    global.msg[12]= "\\\\E7And now^1, with their&souls and the humans\\'&together.../";
    global.msg[13]= "\\\\E5I will achieve my&REAL FORM./";
    global.msg[14]= "\\\\E0Hee hee.../";
    global.msg[15]= "\\\\E3Huh?/";
    global.msg[16]= "\\\\E1WHY am I still&doing this?/";
    global.msg[17]= "\\\\E7Don\\'t you get it?/";
    global.msg[18]= "\\\\E0This is all just&a GAME./";
    global.msg[19]= "\\\\E3If you leave the&underground satisfied^1,&you\\'ll " + chr(ord("\"")) + "win" + chr(ord("\"")) + " the&game./";
    global.msg[20]= "\\\\E4If you " + chr(ord("\"")) + "win^1," + chr(ord("\"")) + " you&won\\'t want to " + chr(ord("\"")) + "play" + chr(ord("\"")) + "&with me anymore./";
    global.msg[21]= "\\\\E0And what would I&do then?/";
    global.msg[22]= "\\\\E6But this game&between us will&NEVER end./";
    global.msg[23]= "\\\\E5I\\'ll hold victory&in front of you^1,&just within your&reach.../";
    global.msg[24]= "\\\\E6And then tear it&away just before&you grasp it./";
    global.msg[25]= "\\\\E8Over^1, and over^1,&and over.../";
    global.msg[26]= "\\\\E5Hee hee hee./";
    global.msg[27]= "\\\\E1Listen./";
    global.msg[28]= "\\\\E0If you DO defeat&me^1, I\\'ll give you&your " + chr(ord("\"")) + "happy ending." + chr(ord("\"")) + "/";
    global.msg[29]= "\\\\E7I\\'ll bring your&friends back./";
    global.msg[30]= "I\\'ll destroy the&barrier./";
    global.msg[31]= "\\\\E0Everyone will&finally be&satisfied./";
    global.msg[32]= "\\\\E6But that WON\\'T&happen./";
    global.msg[33]= "\\\\E8You...!/";
    global.msg[34]= "\\\\E0I\\'ll keep you here&no matter what!/%%";
    scr_blcon_x(flowey.x + 105, flowey.y - 20);
    con= 92;
}
if(con == 92 && !instance_exists(obj_blconwideslave )) {
    flowey.con= 6;
    alarm[4]= 60;
    con= 93;
}
if(con == 94) {
    caster_free(-3);
    snd_play(snd_impact );
    border_d= 1;
    tx= 320;
    ty= 300;
    con= 94.1;
    alarm[4]= 40;
}
if(con == 95.1) {
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    con= 95;
    alarm[4]= 60;
}
if(con == 96) {
    global.faceemotion= 0;
    global.typer= 7;
    global.msg[0]= "\\\\E0Even if it means&killing you&1.000.000 times!!!!/%%";
    scr_blcon_x(flowey.x - 65, flowey.y - 110);
    obj_blconwideslave.sprite_index= spr_blconabove ;
    con= 97;
}
if(con == 97 && !instance_exists(obj_blconwideslave )) {
    snd_play(snd_floweylaugh );
    with(gen) event_user(0);
    con= 98;
    alarm[4]= 35;
    done= 0;
    flowey.laugh= 1;
}
if(con == 99) {
    snd_stop(52);
    snd_play(snd_floweylaugh );
    done++;
    with(gen) event_user(0);
    with(gen) instance_destroy();
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    if(done == 1) {
        con= 98;
        alarm[4]= 35;
    } else  {
        con= 100;
        alarm[4]= 35;
    }
}
if(con == 101) {
    snd_stop(52);
    snd_play(snd_floweylaugh );
    with(gen) event_user(0);
    with(gen) instance_destroy();
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    gen.spec= 2;
    gen.radius= 130;
    con= 102;
    alarm[4]= 100;
}
if(con == 103) {
    with(gen) event_user(0);
    con= 104;
    alarm[4]= 105;
}
if(con == 105) {
    flowey.laugh= 2;
    con= 106;
    alarm[4]= 60;
}
if(con == 106) {
    // obj_wrapshock
    with(1680) {
        if(mf >= 0) mf-= 0.015;
    }
}
if(con == 107) {
    flowey.laugh= 0;
    global.faceemotion= 4;
    global.typer= 6;
    global.msg[0]= "What?/%%";
    scr_blcon_x(flowey.x - 65, flowey.y - 110);
    obj_blconwideslave.sprite_index= spr_blconabove ;
    con= 108;
}
if(con == 108 && !instance_exists(obj_blconwideslave )) {
    con= 109;
    alarm[4]= 40;
}
if(con == 110) {
    dontgiveup= caster_load("music/dontgiveup.ogg");
    caster_loop(dontgiveup, 0.9, 1);
    tor2.face= 1;
    global.typer= 84;
    global.msg[0]= "Do not be afraid^1,&my child.../";
    global.msg[1]= "No matter what&happens.../";
    global.msg[2]= "We will always&be there to&protect you!/%%";
    scr_blcon_x(tor2.x - 5, tor2.y + 170);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    blcon.depth= -2000;
    OBJ_WRITER.depth= -3000;
    con= 111;
}
if(con == 111 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    tor2.face= 2;
if(con == 111 && !instance_exists(obj_blconwideslave )) {
    snd_play(snd_heal_c );
    global.hp++;
    con= 112;
    alarm[4]= 45;
}
if(con == 113) {
    global.faceemotion= 12;
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    with(gen) {
        alarm[0]= -1;
        alarm[1]= -1;
        alarm[2]= 1;
        spec= 3;
    }
    con= 114;
    alarm[4]= 20;
}
if(con == 115) {
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    with(gen) {
        alarm[0]= -1;
        alarm[1]= -1;
        alarm[3]= 1;
        spec= 4;
    }
    con= 116;
    alarm[4]= 60;
}
if(con == 117) {
    global.faceemotion= 4;
    pap2.face= 1;
    global.typer= 22;
    global.msg[0]= "THAT\\'S RIGHT^1,&HUMAN^1!&YOU CAN&WIN!!/";
    global.msg[1]= "JUST DO&WHAT I^1,&WOULD&DO.../";
    global.msg[2]= "BELIEVE&IN YOU!!!/%%";
    scr_blcon_x(pap2.x - 45, pap2.y + 270);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    con= 118;
}
if(con == 118 && !instance_exists(obj_blconwideslave )) {
    snd_play(snd_heal_c );
    global.hp++;
    und2.face= 1;
    global.typer= 81;
    global.msg[0]= "Hey^1! Human^1! If&you got past&ME^1, you can&do ANYTHING!/";
    global.msg[1]= "So don\\'t worry^1!&We\\'re with you&all the way!/%%";
    scr_blcon_x(und2.x - 45, und2.y + 200);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    con= 119;
}
if(con == 119 && !instance_exists(obj_blconwideslave )) {
    snd_play(snd_heal_c );
    global.hp++;
    sans2.face= 1;
    global.typer= 80;
    global.msg[0]= "huh^1?&you haven\\'t&beaten&this guy yet?/";
    global.msg[1]= "come on^1, this&weirdo\\'s got&nothin\\' on you./%%";
    scr_blcon_x(sans2.x - 25, sans2.y + 130);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    blcon.depth= -10;
    con= 120;
}
if(con == 120 && !instance_exists(obj_blconwideslave )) {
    snd_play(snd_heal_c );
    global.hp++;
    con= 121;
    alarm[4]= 40;
}
if(con == 122) {
    global.faceemotion= 12;
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    with(gen) {
        alarm[0]= -1;
        alarm[1]= -1;
        alarm[2]= 1;
        spec= 5;
    }
    con= 123;
    alarm[4]= 20;
}
if(con == 124) {
    gen= instance_create(tx, ty, obj_spinbulletgen_friendscene );
    with(gen) {
        alarm[0]= -1;
        alarm[1]= -1;
        alarm[3]= 1;
        spec= 6;
    }
    con= 125;
    alarm[4]= 60;
}
if(con == 126 && !instance_exists(obj_blconwideslave )) {
    global.faceemotion= 14;
    al2.face= 1;
    global.typer= 74;
    global.msg[0]= "Technically^1, it\\'s&impossible for you&to beat him.../";
    global.msg[1]= "B-but..^1.&Somehow^1, I know&you can do it!!/%%";
    scr_blcon_x(al2.x - 75, al2.y + 190);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    obj_blconwideslave.depth= -10;
    con= 127;
}
if(con == 127 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1)
    al2.face= 2;
if(con == 127 && !instance_exists(obj_blconwideslave )) {
    snd_play(snd_heal_c );
    global.hp++;
    global.typer= 63;
    asg2.face= 2;
    global.msg[0]= "Human^1, for the&future of&humans and&monsters...!/";
    global.msg[1]= "You have to stay&determined...!/%%";
    scr_blcon_x(-10, asg2.y + 250);
    obj_blconwideslave.sprite_index= spr_blconbelow ;
    con= 128;
}
if(con == 128 && !instance_exists(obj_blconwideslave )) {
    global.faceemotion= 16;
    snd_play(snd_heal_c );
    global.hp++;
    con= 129;
    alarm[4]= 30;
}
if(con == 130) {
    with(flowey) {
        neut= 1;
        spec= 1;
        con= 6;
    }
    biig= instance_create(0, 0, obj_bringitinguys );
    con= 131;
    alarm[4]= 60;
}
if(con == 132) {
    global.faceemotion= 17;
    con= 133;
    alarm[4]= 30;
}
if(con == 134) {
    with(flowey) {
        spec= 2;
        con= 6;
    }
    con= 135;
    alarm[4]= 110;
}
if(con == 136 && !instance_exists(obj_blconwideslave )) {
    global.typer= 78;
    skiptext= 0;
    global.faceemotion= 18;
    global.msg[0]= "Urrrgh..^1. NO!/";
    global.msg[1]= "Unbelievable!!/";
    global.msg[2]= "This can\\'t be&happening...!/";
    global.msg[3]= "You..^1. YOU...!/%%";
    scr_blcon_x(flowey.x - 65, flowey.y - 110);
    obj_blconwideslave.sprite_index= spr_blconabove ;
    blcon.depth= -2000;
    OBJ_WRITER.depth= -3000;
    con= 137;
}
if(con == 127 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) global.faceemotion= 19;
    if(OBJ_WRITER.stringno == 3) global.faceemotion= 20;
}
if(con == 137 && !instance_exists(obj_blconwideslave )) {
    caster_free(dontgiveup);
    snd_play(snd_noise );
    flowey.laugh= 2;
    con= 138;
    alarm[4]= 70;
    // obj_wrapshock
    with(1680) {
        mf= 0;
        freeze= 1;
    }
    // obj_friendscene_gigavine
    with(1668) shimmy= 0;
    with(biig) event_user(0);
    trickblack= 1;
}
if(con == 139 && !instance_exists(obj_blconwideslave )) {
    global.typer= 77;
    hellsfx= caster_load("music/f_destroyed3.ogg");
    global.msg[0]= "I can\\'t believe&you\\'re all so&STUPID./%%";
    scr_blcon_x(flowey.x - 65, flowey.y - 110);
    obj_blconwideslave.sprite_index= spr_blconabove ;
    obj_blconwideslave.depth= depth - 10;
    OBJ_WRITER.depth= depth - 20;
    con= 140;
}
if(con == 140 && !instance_exists(obj_blconwideslave )) {
    caster_loop(hellsfx, 0.5, 0.6);
    pit= 0.8;
    vol= 0.6;
    flowey.laugh= 1;
    // obj_wrapshock
    with(1680) {
        freeze= 0;
        shock= 1;
        s_timer= -999;
    }
    // obj_friendscene_gigavine
    with(1668) shimmy= 1;
    wht= 0;
    trickblack= 0;
    lastwhite= 1;
    con= 141;
    white= 0;
    depth= -100000;
    global.typer= 7;
    global.msg[0]= "ALL OF YOUR SOULS&ARE MINE!!!/%%";
    scr_blcon_x(flowey.x - 65, flowey.y - 110);
    blcon.depth= depth + 2;
    OBJ_WRITER.depth= depth + 1;
    with(biig) event_user(1);
    blcon.sprite_index= spr_blconabove ;
}
if(con == 141) {
    pit+= 0.007;
    vol+= 0.005;
    caster_set_pitch(hellsfx, pit);
    caster_set_volume(hellsfx, vol);
    // obj_wrapshock
    with(1680) mf+= 0.02;
}
if(sidecon == 1) {
    if(sans.y < 140 || sans.y > 240) sans.y+= 12;
    else  {
        sidecon= 2;
        sans.y= 152;
    }
    if(sans.y > 680) {
        sans.x= tor.x + 120;
        sans.y= -200;
        sans.depth= tor.depth + 1;
    }
    if(pap.y > 50) {
        pap.depth= al.depth + 1;
        pap.y-= 18;
        pap.x++;
    } else  pap.y= 40;
}
if(border_d == 1) {
    cx= 310;
    cx2= 330;
    cy= 290;
    cy2= 310;
    obj_heart.visible= 1;
    obj_heart.x= cx + 2;
    obj_heart.y= cy + 2;
}
if(ting_s == 1) {
    snd_stop(28);
    snd_play(snd_bell );
    ting_s= 0;
}


/*  */
