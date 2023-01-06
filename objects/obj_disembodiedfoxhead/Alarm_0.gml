myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* The door leading through&  the area is closed^1?&* So I tried the puzzle?/";
global.msg[1]= "* But I kept running out of&  ammo^1, and it kept restarting?/";
global.msg[2]= "* And my two co-workers won\\'t&  help^1? It\\'s like they don\\'t&  even wanna go to work?/%%";
if(tt > 0)
    global.msg[0]= "* Why don\\'t you try^1?&* Try using the console?/%%";
if(global.flag[375] == 1) {
    global.msg[0]= "* Wow^1?&* You solved it?/";
    global.msg[1]= "* I\\'m impressed^1?&* You must be a total nerd?/%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* So we\\'re all gonna go&  free...?/";
    global.msg[1]= "* Does that mean I don\\'t&  get to go to work?/%%";
}
if(global.flag[425] == 1)
    global.msg[0]= "* Maybe I don\\'t want to go&  to work anymore...?/%%";
tt++;
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
