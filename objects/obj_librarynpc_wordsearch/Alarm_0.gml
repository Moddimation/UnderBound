myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (cough, cough)/";
global.msg[1]= "* When I was younger^1, my teachers&  gave me word searches when&  they ran out of assignments./";
global.msg[2]= "* I thought they were a waste&  of time./";
global.msg[3]= "* But look at me now.../";
global.msg[4]= "* I\\'m the number-one word-search&  creator in the entire&  underground!/%%";
if(global.plot >= 122) {
    global.msg[0]= "* (cough^1, cough)/";
    global.msg[1]= "* There\\'s a day I just don\\'t&  want to work./";
    global.msg[2]= "* It\\'s called " + chr(ord("\"")) + "Today." + chr(ord("\"")) + "/%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* This will be our newspaper\\'s&  last issue.../";
    global.msg[1]= "* Why don\\'t we just put a&  big " + chr(ord("\"")) + "THE END" + chr(ord("\"")) + " on the front&  and call it a day?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
