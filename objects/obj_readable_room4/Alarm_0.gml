myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(room == 34) {
    global.msg[0]= "* It\\'s you!/%%";
    if(global.flag[7] == 1) global.msg[0]= "* Still just you^1, Frisk./%%";
}
if(room == 34 && murdererlv1() == 1)
    global.msg[0]= "* It\\'s me^1, " + global.charname + "./%%";
if(room == 221) global.msg[0]= "* It\\'s a golden flower./%%";
if(room == 222) {
    global.msg[0]= "* Despite everything^1, it\\'s&  still you./%%";
    if(scr_murderlv() >= 16)
        global.msg[0]= "* It\\'s me^1, " + global.charname + "./%%";
}
if(room == 37 && x < 130)
    global.msg[0]= "* Inside the cupboard are&  cookie cutters for&  gingerbread monsters./%%";
if(room == 37 && murdererlv1() == 1 && x < 130)
    global.msg[0]= "\\\\R* Where are the knives./%%";
if(room == 37 && x > 130)
    global.msg[0]= "* The stovetop is very clean^1.&* Toriel must use fire&  magic instead./%%";
if(room == 37 && x > 130 && global.flag[45] == 4)
    global.msg[0]= "* No one will use this&  anymore.../%%";
if(room == 225 && x < 130) {
    global.msg[0]= "* (It\\'s a note.^1)&* Howdy^1! Help yourself to&  anything you want!/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "* I\\'ve read this already./%%";
}
if(room == 225 && x > 130) {
    global.msg[0]= "* (The stovetop is very clean.^1)&* (Someone must use fire&  magic instead.)/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "* Stovetop./%%";
}
if(room == 224) {
    if(x < 160) {
        global.msg[0]= "* (What a comfortable bed.^1)&* (If you laid down here^1,&  you might not ever get up.)/%%";
        if(scr_murderlv() >= 16) global.msg[0]= "* My bed./%%";
    }
    if(x > 160) {
        global.msg[0]= "* (It\\'s a twin-sized bed.)/%%";
        if(scr_murderlv() >= 16) global.msg[0]= "* His bed./%%";
    }
}
if(room == 223) global.msg[0]= "* (It\\'s a king-sized bed.)/%%";
if(room == 74) {
    global.msg[0]= "* " + chr(ord("\"")) + "MONSTER HISTORY PART 4" + chr(ord("\"")) + "/";
    global.msg[1]= "* Fearing the humans no longer^1,&  we moved out of our old&  city^1, HOME./";
    global.msg[2]= "* We braved harsh cold^1, damp&  swampland^1, and searing heat.../";
    global.msg[3]= "* Until we reached what we now&  call our capital./";
    global.msg[4]= "* " + chr(ord("\"")) + "NEW HOME." + chr(ord("\"")) + "/";
    global.msg[5]= "* Again^1, our King is really&  bad at names...?/%%";
}
if(room == 123) {
    global.msg[0]= "* Excuse me..^1.&* Yes^1, you^1, with the striped&  shirt./";
    global.msg[1]= "* Can you do something about&  your friend...?/";
    global.msg[2]= "* Yes^1, your friend..^1.&* The one behind you^1, with the&  creepy smile./%%";
    if(global.flag[97] == 1)
        global.msg[0]= "* Hmmm^1?&* Where\\'d your friend go?/%%";
    global.flag[97]= 1;
}
if(room == 91) {
    global.msg[0]= "* If a monster defeats a human^1,&  they can take its SOUL./";
    global.msg[1]= "* A monster with a human SOUL..^1.&* A horrible beast with&  unfathomable power./%%";
}
if(room == 141) {
    global.msg[0]= "* (It\\'s a video feed of your&  location.)/%%";
    if(global.plot < 126) global.msg[0]= "* It\\'s you...?/%%";
    if(scr_murderlv() >= 12)
        global.msg[0]= "* It\\'s me^1, " + global.charname + "./%%";
}
read++;
if(room == 142) global.msc= 645;
if(room == 154) {
    global.msg[0]= "* (It\\'s a microwave.^1)&* (That\\'s great if you\\'re a&  microwave fan.)/%%";
    if(global.plot < 134 && scr_murderlv() < 12)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
    if(instance_exists(obj_mettaton_npc )) {
        global.typer= 27;
        global.msg[0]= "* MTT-BRAND MICROWAVE^1!&* ORIGIN OF THE MTT CHALLENGE!/";
        global.msg[1]= "* PUT YOUR FOOD IN AND SET&  THE MICROWAVE ON HIGH FOR&  FIVE MINUTES.../";
        global.msg[2]= "* IF YOU CAN STILL RECOGNIZE&  YOUR MEAL^1, WE\\'LL DOUBLE YOUR&  MONEY BACK!!!/%%";
        if(global.plot == 134) {
            global.msg[0]= "* STILL FIDDLING WITH THAT&  MICROWAVE, EH, DARLING?/";
            global.msg[1]= "* CAN\\'T BLAME YOU FOR BEING&  TOTALLY ENAMORED WITH AN&  ELECTRONIC BOX./%%";
        }
    }
}
if(room == 118) {
    global.msg[0]= "* (In the sink is a teacup&  in the shape of a fish.)/%%";
    if(x > 200) {
        global.facechoice= 5;
        global.typer= 37;
        global.msc= 714;
    }
}
if(room == 245) {
    global.msg[0]= "* ENTRY NUMBER 5/";
    global.msg[1]= "* I\\'ve done it./";
    global.msg[2]= "* Using the blueprints^1, I\\'ve&  extracted it from the&  human SOULs./";
    global.msg[3]= "* I believe this is what&  gives their SOULs the strength&  to persist after death./";
    global.msg[4]= "* The will to keep living..^1.&* The resolve to change fate./";
    global.msg[5]= "* Let\\'s call this power.../";
    global.msg[6]= "\\\\Y* " + chr(ord("\"")) + "Determination." + chr(ord("\"")) + "/%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
}
if(room == 252) global.msg[0]= "* (Golden flowers.)/%%";
if(room == 78) {
    if(y < 128) global.msc= 845;
    global.msg[0]= "* (It\\'s Sans\\'s dirty sock pile.^1)&* (Sc..^1. scandalous...?)/%%";
}
if(room == 80)
    global.msg[0]= "* (There\\'s a strange machine&  behind the curtain.^1)&* (It seems to be broken.)/%%";
if(room == 68) {
    if(global.flag[497] < 3) global.msg[0]= "* (It\\'s locked.)/%%";
    if(global.flag[497] >= 3) {
        global.msg[0]= "* (You unlocked the door and&  entered.)/%%";
        instance_create(0, 0, obj_sansbasemententer );
        snd_play(snd_item );
    }
}
if(room == 266)
    global.msg[0]= "* (Finally^1, the pieces of the&  puzzle are coming together.^1)&* (The jigsaw puzzle.)/%%";
if(room == 84)
    global.msg[0]= "* Huh!^1?&* There\\'s a camera behind&  the waterfall./%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
