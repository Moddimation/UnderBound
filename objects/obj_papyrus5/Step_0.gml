if(conversation == 1 && global.interact == 0) {
    myinteract= 3;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    p2= instance_create(papyrus.x, papyrus.y, obj_papyrus_actor );
    with(papyrus) instance_destroy();
    papyrus= p2;
    papyrus.hspeed= 3;
    papyrus.sprite_index= papyrus.rsprite;
    conversation= 2;
    global.plot= xplot - 1;
}
if(conversation == 2 && instance_exists(obj_papyrus_actor ) && papyrus.x >= x - 56) {
    papyrus.hspeed= 0;
    papyrus.sprite_index= papyrus.rtsprite;
    papyrus.image_index= 0;
    conversation= 3;
    alarm[4]= 20;
}
if(conversation == 4) {
    global.msc= 0;
    global.msg[0]= "HUMAN!/";
    global.msg[1]= "\\\\E3HMMM..^1.&HOW DO I SAY&THIS.../";
    global.msg[2]= "\\\\E0YOU WERE TAKING A&LONG TIME TO&ARRIVE^1, SO.../";
    global.msg[3]= "I DECIDED TO&IMPROVE THIS&PUZZLE.../";
    global.msg[4]= "BY ARRANGING THE&SNOW TO LOOK MORE&LIKE MY FACE./";
    global.msg[5]= "\\\\E3UNFORTUNATELY^1,&THE SNOW FROZE&TO THE GROUND./";
    global.msg[6]= "\\\\E1NOW THE SOLUTION&IS DIFFERENT!/";
    global.msg[7]= "AND^1,AS USUAL^1, MY&LAZY BROTHER IS&NOWHERE AROUND./";
    global.msg[8]= "\\\\E3I SUPPOSE WHAT&I AM SAYING&IS.../";
    global.msg[9]= "\\\\E0WORRY NOT^1, HUMAN!/";
    global.msg[10]= "I^1, THE GREAT&PAPYRUS^1, WILL SOLVE&THIS CONUNDRUM!/";
    global.msg[11]= "THEN WE CAN BOTH&PROCEED!/";
    global.msg[12]= "MEANWHILE^1, FEEL&FREE TO TRY THE&PUZZLE YOURSELF!/";
    global.msg[13]= "I\\'LL TRY NOT TO&GIVE AWAY THE&ANSWER!!!/%%";
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 5;
}
if(conversation == 5 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno >= 9) {
    papyrus.fun= 1;
    papyrus.image_speed= 0.5;
    papyrus.sprite_index= spr_papyrus_cape ;
    conversation= 5.1;
}
if(conversation == 5.1 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno >= 12) {
    papyrus.fun= 0;
    papyrus.sprite_index= papyrus.dtsprite;
    conversation= 6;
}
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    p3= instance_create(papyrus.x, papyrus.y, obj_papyrus_room );
    with(papyrus) instance_destroy();
    papyrus= p3;
    global.interact= 0;
    conversation= 7;
}
if(conversation == 7 && obj_mainchara.x > 400 && papyrus.x < 300)
    papyrus.x+= 4;
if(conversation == 9) {
    global.interact= 1;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    conversation= 10;
    alarm[4]= 20;
}
if(conversation == 11) {
    global.msc= 0;
    instance_create(20, 100, obj_stalkerflowey );
    global.msg[0]= "WOW!!^1!&YOU SOLVED IT!!/";
    if(papyrus.talkedto == 0)
        global.msg[1]= "AND YOU DID IT&ALL WITHOUT MY&HELP.../";
    else  global.msg[1]= "MY ADVICE HELPED^1!&IT REALLY HELPED&YOU!!/";
    p4= instance_create(papyrus.x, papyrus.y, obj_papyrus_actor );
    with(papyrus) instance_destroy();
    papyrus= p4;
    papyrus.sprite_index= papyrus.dtsprite;
    global.msg[2]= "INCREDIBLE^1!&I\\'M IMPRESSED!!/";
    global.msg[3]= "YOU MUST CARE&ABOUT PUZZLES&LIKE I DO!/";
    global.msg[4]= "WELL^1, I\\'M SURE&YOU\\'LL LOVE THE&NEXT PUZZLE THEN!/";
    global.msg[5]= "IT MIGHT EVEN&BE TOO EASY FOR&YOU!!/";
    global.msg[6]= "NYEH^1!&HEH HEH^1!&HEHEHEH!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 12;
}
if(conversation == 12 && !instance_exists(OBJ_WRITER )) {
    papyrus.npcdir= 1;
    with(papyrus) path_start(path_papyrus2 , 5, 0, path_action_stop );
    alarm[4]= 60;
    conversation= 13;
}
if(conversation == 14) {
    instance_destroy();
    global.interact= 0;
}

/* */
/*  */
