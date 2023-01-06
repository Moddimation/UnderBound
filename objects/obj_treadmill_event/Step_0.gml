if(con == 1) global.interact= 1;
if(con == 2) {
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 3;
    global.msc= 0;
    global.msg[0]= "HEY^1, SANS^1, HAVE&YOU SEEN MY.../";
    global.msg[1]= "\\\\E0OH, HELLO^1.&YOU AREN\\'T SANS./";
    global.msg[2]= "\\\\E3WAIT A SECOND./";
    global.msg[3]= "\\\\E0WHY WERE YOU USING&A TREADMILL IN&THE DARK?/";
    global.msg[4]= "\\\\E3IS SANS PRANKING&YOU ACROSS TIME&AND SPACE?/";
    global.msg[5]= "\\\\E1I HATE IT WHEN&HE DOES THAT!/";
    global.msg[6]= "\\\\E1HOW IMMATURE CAN&YOU GET?/";
    global.msg[7]= "\\\\E3ALSO^1, HAVE YOU&SEEN MY ACTION&FIGURES?/";
    global.msg[8]= "\\\\E0WAIT^1!&I KNOW WHERE TO&LOOK!!!/";
    global.msg[9]= "IN MY COLLECTION^1!&NYEH HEH HEH!!!/";
    global.msg[10]= "SOMETIMES^1, I\\'M A&GENIUS^1.&ALL THE TIME./%%";
    mc.sprite_index= spr_maincharad ;
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 0;
    con= 3;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    pap.vspeed= 5;
    pap.sprite_index= spr_papyrus_d ;
    pap.image_speed= 0.5;
    con= 4;
    alarm[4]= 30;
}
if(con == 5) {
    mc.image_speed= 0.25;
    mc.y+= 2;
    if(mc.y >= obj_mainchara.y) {
        obj_mainchara.visible= 1;
        with(mc) instance_destroy();
        con= 6;
        global.interact= 0;
        if(global.flag[7] == 0)
            global.currentsong= caster_load("music/muscle.ogg");
        else  global.currentsong= caster_load("music/reunited.ogg");
        caster_loop(global.currentsong, 1, 1);
    }
}

/* */
/*  */
