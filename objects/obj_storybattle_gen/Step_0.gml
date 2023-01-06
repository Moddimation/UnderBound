if(skipper == 1 && instance_exists(OBJ_WRITER )) {
    if(keyboard_multicheck_pressed(1) && alarm[4] > 10)
        alarm[4]= 10;
    scr_textskip();
}
if(global.turntimer < 2) {
    instance_create(0, 0, obj_persistentfader );
    room_goto(global.currentroom);
    global.invc= 0;
}
if(global.turntimer < 14 && !instance_exists(obj_unfader )) {
    yyy= instance_create(0, 0, obj_unfader );
    yyy.tspeed= 0.08;
}
if(off == 1) global.turntimer--;
activetimer++;
if(con == 5 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "A long time ago,&a human fell&into the RUINS./*";
    blcon= instance_create(50, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(80, 30, OBJ_WRITER );
    con= 6;
    alarm[4]= 110;
}
if(con == 7 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "Injured by its&fall, the human&called out for&help./%%";
    blcon2= instance_create(400, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(430, 30, OBJ_WRITER );
    con= 8;
}
if(con == 8 && !instance_exists(blconwd2)) {
    off= 1;
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
}
if(con == 10 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "ASRIEL^1, the king\\'s&son^1, heard the&human\\'s call./*";
    blcon= instance_create(50, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(80, 30, OBJ_WRITER );
    con= 11;
    alarm[4]= 140;
}
if(con == 12 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "He brought the&human back to&the castle./%%";
    blcon2= instance_create(400, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(430, 30, OBJ_WRITER );
    con= 13;
}
if(con == 13 && !instance_exists(blconwd2)) {
    off= 1;
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
}
if(con == 15 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "Over time^1, ASRIEL&and the human&became like&siblings./*";
    blcon= instance_create(30, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 30, OBJ_WRITER );
    con= 16;
    alarm[4]= 140;
}
if(con == 17) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The King and&Queen treated the&human child as&their own./*";
    blcon2= instance_create(220, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 30, OBJ_WRITER );
    con= 18;
    alarm[4]= 140;
}
if(con == 19 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "The underground&was full of&hope./%%";
    blcon3= instance_create(420, 20, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 30, OBJ_WRITER );
    con= 20;
}
if(con == 20 && !instance_exists(blconwd3)) {
    off= 1;
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
}
if(con == 25 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "Then..^1.&One day.../*";
    blcon= instance_create(50, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(80, 30, OBJ_WRITER );
    con= 26;
    alarm[4]= 70;
}
if(con == 27 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "The human became&very ill./%%";
    blcon2= instance_create(400, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(430, 30, OBJ_WRITER );
    con= 28;
}
if(con == 28 && !instance_exists(blconwd2)) {
    off= 1;
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
}
if(con == 30 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The sick human&had only one&request./*";
    blcon= instance_create(30, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 30, OBJ_WRITER );
    con= 31;
    alarm[4]= 80;
}
if(con == 32) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "To see the&flowers from&their village./*";
    blcon2= instance_create(220, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 30, OBJ_WRITER );
    con= 33;
    alarm[4]= 90;
}
if(con == 34 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "But there was&nothing we could&do./%%";
    blcon3= instance_create(420, 20, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 30, OBJ_WRITER );
    con= 35;
}
if(con == 35 && !instance_exists(blconwd3)) {
    off= 1;
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
}
if(con == 40 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The next day./*";
    blcon= instance_create(50, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(80, 30, OBJ_WRITER );
    con= 41;
    alarm[4]= 50;
}
if(con == 42 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "The next day./%%";
    blcon2= instance_create(400, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(430, 30, OBJ_WRITER );
    con= 43;
}
if(con == 43 && !instance_exists(blconwd2)) {
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
    con= 44;
}
if(con == 44) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= ".../*";
    blcon= instance_create(50, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(80, 30, OBJ_WRITER );
    con= 45;
    alarm[4]= 50;
}
if(con == 46 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "The human died./%%";
    blcon2= instance_create(400, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(430, 30, OBJ_WRITER );
    con= 47;
}
if(con == 47 && !instance_exists(blconwd2)) {
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconsm
    with(186) instance_destroy();
    // obj_blconwdflowey
    with(187) instance_destroy();
    off= 1;
}
if(con == 50 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "ASRIEL^1, wracked&with grief^1,&absorbed the&human\\'s SOUL./*";
    blcon= instance_create(190, 20, obj_blconwdflowey );
    blconwd1= instance_create(230, 30, OBJ_WRITER );
    con= 51;
    alarm[4]= 140;
}
if(con == 52 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "He transformed&into a being&with incredible&power./%%";
    blcon2= instance_create(220, 130, obj_blconsm );
    blcon2.sprite_index= spr_blconwdshrt_l ;
    blconwd2= instance_create(260, 140, OBJ_WRITER );
    con= 47;
}
if(con == 60 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "With the human&SOUL^1, ASRIEL&crossed through&the barrier./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 61;
    alarm[4]= 140;
}
if(con == 62) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "He carried the&human\\'s body&into the sunset./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 63;
    alarm[4]= 110;
}
if(con == 64 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "Back to the&village of the&humans./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 70 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "ASRIEL reached&the center of&the village./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 71;
    alarm[4]= 110;
}
if(con == 72) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "There^1, he&found a bed of&golden flowers./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 73;
    alarm[4]= 110;
}
if(con == 74 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "He carried&the human&onto it./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 80 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "Suddenly^1, screams&rang out./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 81;
    alarm[4]= 90;
}
if(con == 82) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The villagers&saw ASRIEL&holding the&human\\'s body./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 83;
    alarm[4]= 120;
}
if(con == 84 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "They thought&that he had&killed the&child./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 90 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The humans&attacked him&with everything&they had./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 91;
    alarm[4]= 120;
}
if(con == 92) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "He was struck&with blow after&blow./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 93;
    alarm[4]= 100;
}
if(con == 94 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "ASRIEL had the&power to destroy&them all./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 100 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "But.../*";
    blcon= instance_create(190, 20, obj_blconwdflowey );
    blconwd1= instance_create(230, 30, OBJ_WRITER );
    con= 101;
    alarm[4]= 40;
}
if(con == 102 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "ASRIEL did not&fight back./%%";
    blcon2= instance_create(220, 130, obj_blconsm );
    blcon2.sprite_index= spr_blconwdshrt_l ;
    blconwd2= instance_create(260, 140, OBJ_WRITER );
    con= 103;
}
if(con == 103 && !instance_exists(blconwd2)) {
    with(blcon2) instance_destroy();
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_blconwdflowey
    with(187) instance_destroy();
    con= 104;
    alarm[4]= 20;
}
if(con == 105) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "Clutching the&human.../*";
    blcon= instance_create(190, 20, obj_blconwdflowey );
    blconwd1= instance_create(230, 30, OBJ_WRITER );
    con= 106;
    alarm[4]= 50;
}
if(con == 107 && instance_exists(OBJ_WRITER ) && blconwd1.halt != 0) {
    global.msg[0]= "ASRIEL smiled^1,&and walked away./%%";
    blcon2= instance_create(220, 130, obj_blconsm );
    blcon2.sprite_index= spr_blconwdshrt_l ;
    blconwd2= instance_create(260, 140, OBJ_WRITER );
    con= 47;
}
if(con == 110 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "Wounded^1, ASRIEL&stumbled home./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 111;
    alarm[4]= 90;
}
if(con == 112) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "He entered the&castle and&collapsed./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 113;
    alarm[4]= 100;
}
if(con == 114 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "His dust spread&across the&garden./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 120 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The kingdom fell&into despair./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 121;
    alarm[4]= 80;
}
if(con == 122) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The king and&queen had lost&two children&in one night./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 123;
    alarm[4]= 120;
}
if(con == 124 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "The humans had&once again taken&everything&from us./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 130 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "The king decided&it was time to&end our&suffering./*";
    blcon= instance_create(30, 10, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 20, OBJ_WRITER );
    con= 131;
    alarm[4]= 110;
}
if(con == 132) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "Every human who&falls down here&must die./*";
    blcon2= instance_create(220, 10, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 20, OBJ_WRITER );
    con= 133;
    alarm[4]= 100;
}
if(con == 134 && instance_exists(OBJ_WRITER ) && blconwd2.halt != 0) {
    global.msg[0]= "With enough souls^1,&we can shatter&the barrier&forever./%%";
    blcon3= instance_create(420, 10, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 20, OBJ_WRITER );
    con= 20;
}
if(con == 140 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "It\\'s not long&now./%%";
    blcon2= instance_create(220, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 30, OBJ_WRITER );
    con= 141;
}
if(con == 141 && !instance_exists(blconwd2)) {
    // OBJ_WRITER
    with(782) instance_destroy();
    with(blcon2) instance_destroy();
    global.msg[0]= "King ASGORE&will let us&go.   /*";
    blcon= instance_create(30, 20, obj_blconsm );
    blcon.sprite_index= spr_blconabove ;
    blconwd1= instance_create(60, 30, OBJ_WRITER );
    global.msg[0]= "King ASGORE&will give us&hope./*";
    blcon2= instance_create(220, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 30, OBJ_WRITER );
    global.msg[0]= "King ASGORE&will save us&all. /%%";
    blcon3= instance_create(420, 20, obj_blconsm );
    blcon3.sprite_index= spr_blconabove ;
    blconwd3= instance_create(450, 30, OBJ_WRITER );
    con= 142;
}
if(con == 142 && !instance_exists(blconwd3)) {
    // obj_blconsm
    with(186) instance_destroy();
    // OBJ_WRITER
    with(782) instance_destroy();
    off= 1;
    con= 143;
}
if(con == 150 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    global.msg[0]= "You should be&smiling^1, too./*";
    blcon= instance_create(170, 15, obj_blconwdflowey );
    blconwd1= instance_create(210, 25, OBJ_WRITER );
    con= 151;
    alarm[4]= 85;
}
if(con == 152) {
    con= 153;
    global.msg[0]= "Aren\\'t&you&excited?/*";
    blcon2= instance_create(300, 120, obj_blconsm );
    blconwd2= instance_create(325, 130, OBJ_WRITER );
    alarm[4]= 60;
}
if(con == 154) {
    con= 155;
    global.msg[0]= "Aren\\'t&you&happy?/%%";
    blcon3= instance_create(530, 120, obj_blconsm );
    blconwd3= instance_create(555, 130, OBJ_WRITER );
}
if(con == 155 && !instance_exists(blconwd3)) {
    // obj_blconsm
    with(186) instance_destroy();
    // OBJ_WRITER
    with(782) instance_destroy();
    off= 1;
    con= 156;
}
if(con == 160 && activetimer == 15) {
    global.msc= 0;
    global.typer= 55;
    con= 161;
    global.msg[0]= "You\\'re going&to be free./%%";
    blcon2= instance_create(220, 20, obj_blconsm );
    blcon2.sprite_index= spr_blconabove ;
    blconwd2= instance_create(250, 30, OBJ_WRITER );
}
if(con == 161 && !instance_exists(blconwd2)) {
    ini_open("undertale.ini");
    ini_write_real("General", "Tale", 1);
    ini_close();
    con= 162;
    with(blcon2) instance_destroy();
    off= 1;
}
if(con == 300) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E0Howdy^1, " + global.charname + "!/";
    global.msg[1]= "You finally made&it home./";
    global.msg[2]= "\\\\E0Remember when we&used to play here?/";
    global.msg[3]= "\\\\E0Hee hee hee.../";
    global.msg[4]= "Boy!/";
    global.msg[5]= "\\\\E9Today\\'s gonna be&just as fun./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 301 && !instance_exists(OBJ_WRITER )) {
    off= 1;
    con= 302;
}
if(con == 305) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1I remember when I&first woke up here^1,&in the garden./";
    global.msg[1]= "I was so scared./";
    global.msg[2]= "\\\\E2I couldn\\'t feel my&arms or my legs.../";
    global.msg[3]= "\\\\E1My entire body had&turned into a&flower!/";
    global.msg[4]= "\\\\E5" + chr(ord("\"")) + "Mom^1! Dad^1!&Somebody help me^1!" + chr(ord("\"")) + "&I called out./";
    global.msg[5]= "\\\\E9But nobody came./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 310) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1Eventually^1, the king&found me^1, crying in&the garden./";
    global.msg[1]= "I explained what had&happened to him./";
    global.msg[2]= "Then he held me^1,&" + global.charname + "./";
    global.msg[3]= "He held me with&tears in his eyes^1,&saying.../";
    global.msg[4]= "" + chr(ord("\"")) + "There^1, there^1.&Everything is going&to be alright." + chr(ord("\"")) + "/";
    global.msg[5]= "He was so..^1.&Emotional./";
    global.msg[6]= "\\\\E1But..^1.&For some reason.../";
    global.msg[7]= "\\\\E1I didn\\'t feel&anything at all./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 315) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1I soon realized I&didn\\'t feel ANYTHING&about ANYONE./";
    global.msg[1]= "My compassion had&disappeared!/";
    global.msg[2]= "\\\\E7And believe me^1,&it\\'s not like I&wasn\\'t trying./";
    global.msg[3]= "\\\\E3I wasted weeks with&that stupid king^1,&vainly hoping I would&feel something./";
    global.msg[4]= "\\\\E1But it became too&much for me./";
    global.msg[5]= "I ran away from&home./";
    global.msg[6]= "Eventually^1, I reached&the RUINS./";
    global.msg[7]= "\\\\E0Inside I found HER^1,&" + global.charname + "./";
    global.msg[8]= "I thought of all&people^1, SHE could&make me feel whole&again./";
    global.msg[9]= "\\\\E1.../";
    global.msg[10]= "\\\\E7She failed./";
    global.msg[11]= "\\\\E6Ha ha.../%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 320) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1I realized those two&were useless./";
    global.msg[1]= "I became despondent./";
    global.msg[2]= "I just wanted to&love someone./";
    global.msg[3]= "I just wanted to&care about someone./";
    global.msg[4]= global.charname + "^1, you might&not believe this.../";
    global.msg[5]= "\\\\E2But I decided..^1.&It wasn\\'t worth&living anymore./";
    global.msg[6]= "\\\\E7Not in a world&without love./";
    global.msg[7]= "\\\\E6Not in a world&without you./";
    global.msg[8]= "\\\\E1So.../";
    global.msg[9]= "\\\\E0I decided to follow&in your footsteps./";
    global.msg[10]= "\\\\E1I would erase myself&from existence./";
    global.msg[11]= "\\\\E1And you know what?/";
    global.msg[12]= "\\\\E0I succeeded./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 325) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1But as I left this&mortal coil.../";
    global.msg[1]= "I started to feel&apprehensive./";
    global.msg[2]= "\\\\E9If you don\\'t have&a SOUL^1, what happens&when you...?/";
    global.msg[3]= "\\\\E1Something primal&started to burn&inside me./";
    global.msg[4]= "" + chr(ord("\"")) + "No^1," + chr(ord("\"")) + " I thought^1.&" + chr(ord("\"")) + "I don\\'t want to&die!" + chr(ord("\"")) + "/";
    global.msg[5]= ".../";
    global.msg[6]= "Then I woke up./";
    global.msg[7]= "Like it was all&just a bad dream./";
    global.msg[8]= "I was back at the&garden./";
    global.msg[9]= "\\\\E0Back at my&" + chr(ord("\"")) + "save point." + chr(ord("\"")) + "/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 330) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "Interested^1, I decided&to experiment./";
    global.msg[1]= "Again and again^1, I&brought myself to&the edge of death./";
    global.msg[2]= "At any point^1, I&could have let this&world continue on&without me./";
    global.msg[3]= "But as long as I&was determined to&live.../";
    global.msg[4]= "\\\\E0I could go back./";
    global.msg[5]= "\\\\E6Amazing^1, isn\\'t it^1,&" + global.charname + "?/";
    global.msg[6]= "\\\\E0I was amazed^1, too./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 335) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1At first^1, I used my&powers for good./";
    global.msg[1]= "\\\\E0I became " + chr(ord("\"")) + "friends" + chr(ord("\"")) + "&with everyone./";
    global.msg[2]= "I solved all their&problems flawlessly./";
    global.msg[3]= "Their companionship&was amusing.../";
    global.msg[4]= "\\\\E1For a while. /";
    global.msg[5]= "\\\\E1As time repeated^1,&people proved&themselves&predictable./";
    global.msg[6]= "What would this&person say if I&gave them this?/";
    global.msg[7]= "What would they do&if I said this to&them?/";
    global.msg[8]= "Once you know the&answer^1, that\\'s it./";
    global.msg[9]= "That\\'s all they are./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 340) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1It all started&because I was&curious./";
    global.msg[1]= "\\\\E0Curious what would&happen if I killed&them./";
    global.msg[2]= "\\\\E2" + chr(ord("\"")) + "I don\\'t like this^1," + chr(ord("\"")) + "&I told my/";
    global.msg[3]= "\\\\E1" + chr(ord("\"")) + "I\\'m just doing this&because I HAVE to&know what happens./";
    global.msg[4]= "\\\\E8Ha ha ha..^1.&What an excuse!/";
    global.msg[5]= "\\\\E9You of all people&must know how&liberating it is to&act this way./";
    global.msg[6]= "\\\\E8At least we\\'re better&than those sickos&that stand around and&WATCH it happen.../";
    global.msg[7]= "\\\\E9Those pathetic people&that want to see it^1,&but are too weak to&do it themselves./";
    global.msg[8]= "\\\\E0I bet someone like&that\\'s watching right&now^1, aren\\'t they...?/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 345) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1Nowadays^1, even that\\'s&grown tiring./";
    global.msg[1]= "\\\\E7You understand^1,&" + global.charname + "./";
    global.msg[2]= "\\\\E6I\\'ve done everything&this world has to&offer./";
    global.msg[3]= "\\\\E1I\\'ve read every book^1.&I\\'ve burned every&book./";
    global.msg[4]= "I\\'ve won every game^1.&I\\'ve lost every game./";
    global.msg[5]= "I\\'ve appeased&everyone^1.&I\\'ve killed everyone./";
    global.msg[6]= "Sets of numbers..^1.&Lines of dialogue..^1.&I\\'ve seen them all./";
    global.msg[7]= "\\\\E1But you..^1.&YOU\\'RE different./";
    global.msg[8]= "\\\\E0I never could&predict YOU^1, " + global.charname + "./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 350) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1When I saw you in&the RUINS^1, I didn\\'t&recognize you./";
    global.msg[1]= "\\\\E8I thought I could&frighten you^1, then&steal your SOUL./";
    global.msg[2]= "\\\\E1I failed./";
    global.msg[3]= "\\\\E0And when I tried&to load my save&file.../";
    global.msg[4]= "\\\\E1It didn\\'t work./";
    global.msg[5]= "\\\\E9" + global.charname + "..^1.&Your DETERMINATION!/";
    global.msg[6]= "\\\\E8Somehow^1, it\\'s even&greater than mine!/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 355) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1I just have one&question for you^1,&" + global.charname + "./";
    global.msg[1]= "How did you get&back to the RUINS&from here...?/";
    global.msg[2]= "\\\\E0... wait^1, I know./";
    global.msg[3]= "She must have taken&you when she left./";
    global.msg[4]= "\\\\E1And decided to give&you a proper burial^1,&rather than.../";
    global.msg[5]= "\\\\E0Hanging out in the&basement forever./";
    global.msg[6]= "\\\\E1... but^1, why then...?/";
    global.msg[7]= "What made you wake&up?/";
    global.msg[8]= "\\\\E6Did you hear me&calling you...?/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 360) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1It doesn\\'t matter&now./";
    global.msg[1]= "\\\\E1I\\'m so tired of&this^1, " + global.charname + "./";
    global.msg[2]= "I\\'m tired of all&these people./";
    global.msg[3]= "I\\'m tired of all&these places./";
    global.msg[4]= "I\\'m tired of being&a flower./";
    global.msg[5]= global.charname + "./";
    global.msg[6]= "\\\\E0There\\'s just one&thing left I want&to do./";
    global.msg[7]= "Let\\'s finish what we&started./";
    global.msg[8]= "Let\\'s free everyone./";
    global.msg[9]= "\\\\E8Then..^1. let\\'s let&them see what&humanity is&REALLY like!/";
    global.msg[10]= "\\\\E6That despite it all.../";
    global.msg[11]= "\\\\E9This world is still&" + chr(ord("\"")) + "kill or be killed!!" + chr(ord("\"")) + "/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 365) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E1Then...?/";
    global.msg[1]= "\\\\E7Well^1.&I had.../";
    global.msg[2]= "\\\\E9Been entertaining a&few ways to use&that power./";
    global.msg[3]= "\\\\E8Hee hee hee.../";
    global.msg[4]= "\\\\E1.../";
    global.msg[5]= "\\\\E1But seeing you here&changed my mind./";
    global.msg[6]= "\\\\E6" + global.charname + "..^1.&I think if you\\'re&around.../";
    global.msg[7]= "\\\\E7Just living in the&surface world&doesn\\'t seem so bad./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 370) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E0We don\\'t even need&to leave to get&them this time./";
    global.msg[1]= "The king has six of&them locked away./";
    global.msg[2]= "\\\\E1I\\'ve tried hundreds&of ways to get him&to show me them.../";
    global.msg[3]= "\\\\E3But he just won\\'t./";
    global.msg[4]= "\\\\E1" + global.charname + ".../";
    global.msg[5]= "\\\\E0I know he\\'ll do it&for YOU./%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 375) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E0Why am I telling&you all of this?/";
    global.msg[1]= "\\\\E6" + global.charname + "^1, I said it&before./";
    global.msg[2]= "\\\\E1Even after all this&time.../";
    global.msg[3]= "\\\\E0You\\'re still the&only one that&understands me./";
    global.msg[4]= "\\\\E8You won\\'t give me&any worthless pity!/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}
if(con == 380) {
    global.typer= 98;
    global.msc= 0;
    global.msg[0]= "\\\\E9Creatures like us.../";
    global.msg[1]= "\\\\E0Wouldn\\'t hesitate to&KILL each other if&we got in each&other\\'s way./";
    global.msg[2]= "\\\\E0So that\\'s.../";
    global.msg[3]= "\\\\E1So..^1. that\\'s..^1.&Why.../%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 381;
}
if(con == 381 && instance_exists(OBJ_WRITER ) && con == 381 && OBJ_WRITER.stringno == 1)
    caster_free(global.currentsong);
if(con == 381 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    con= 382;
    alarm[4]= 45;
}
if(con == 383) {
    global.currentsong= caster_load("music/prebattle1.ogg");
    caster_loop(global.currentsong, 0.9, 0.22);
    shake= 1;
    global.typer= 99;
    global.msg[0]= "\\\\E2.../";
    global.msg[1]= "\\\\E2... ha..^1.&Ha.../";
    global.msg[2]= "\\\\E6... what\\'s this..^1.&... feeling?/";
    global.msg[3]= "Why am I..^1.&Shaking?/";
    global.msg[4]= ".../";
    global.msg[5]= "Hey..^1. " + global.charname + "..^1.&No hard feelings about&back then^1, right?/";
    global.msg[6]= ".../";
    global.msg[7]= "\\\\E4H-Hey^1, what are you&doing!?/";
    global.msg[8]= "B..^1. back off!!/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 384;
}
if(con == 384 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 5)
    global.faceemotion= 10;
if(con == 384 && !instance_exists(OBJ_WRITER )) off= 1;
if(con == 390) {
    shake= 0.75;
    global.typer= 99;
    global.msc= 0;
    global.msg[0]= "I..^1. I\\'ve changed&my mind about all&this./";
    global.msg[1]= "This isn\\'t a good&idea anymore./";
    global.msg[2]= "Y-you should go back^1,&" + global.charname + "./";
    global.msg[3]= "\\\\E0This place is fine&the way it is!/";
    global.msg[4]= ".../";
    global.msg[5]= "\\\\E4S-s-stop making that&creepy face!/";
    global.msg[6]= "This isn\\'t funny!/";
    global.msg[7]= "You\\'ve got a SICK&sense of humor!/%%";
    scr_blcon_x(floweyx + 90, floweyy - 10);
    con= 301;
}

/* */
/*  */
