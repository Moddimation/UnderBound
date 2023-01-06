myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(room == 117) {
    global.msg[0]= "* (Doesn\\'t seem like&  anyone\\'s home.)/%%";
    if(global.flag[350] == 0 && instance_exists(obj_papyrus_room ))
        global.msg[0]= "* (If someone\\'s there^1,&  they aren\\'t answering&  the door.)/%%";
    if(global.flag[350] == 1)
        global.msg[0]= "* (No one is home.^1)&* (And you get the feeling&  no one ever will be.)/%%";
    if(global.flag[350] == 2)
        global.msg[0]= "* (You hear irritated groans&  from the inside.)/%%";
    if(global.flag[389] >= 2)
        global.msg[0]= "* (Sounds like only fire&  lives here now.)/%%";
}
if(room == 69 && x > 200) {
    global.msg[0]= "* Who\\'s there^1?&* I\\'m in the middle of&  my favorite TV program./";
    global.msg[1]= "* I know^1, I know..^1.&* Staring at a screen...&* Sounds like a boring hobby./";
    global.msg[2]= "* But TV offers an escape&  to another world^1.&* We really need that./%%";
    if(read > 0)
        global.msg[0]= "* You wanna watch too^1?&* Sorry^1, this is a one-player&  TV show./%%";
}
if(room == 69 && x < 200) {
    global.msg[0]= "* Ahh^1, what a beautiful knock..^1.!&* Maybe if I don\\'t answer^1,&  I\\'ll hear it again./%%";
    if(read == 1) global.msg[0]= "* Ahh^1, my patience rewards me./%%";
    if(read > 1) global.msg[0]= "* Ahh.../%%";
    if(scr_murderlv() >= 7) global.msg[0]= "* (No answer.)/%%";
}
if(room == 185) {
    if(x < 166) global.msc= 860;
    if(x > 240) global.msc= 862;
    if(x > 300) global.msc= 864;
    if(scr_murderlv() >= 12) {
        global.msc= 0;
        global.msg[0]= "* (No answer.)/%%";
    }
}
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
