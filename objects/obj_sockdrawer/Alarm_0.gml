myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(room == 35) {
    global.msc= 524;
    if(x > 192) {
        global.msc= 0;
        global.msg[0]= "* You peek inside..^2.&* Scandalous!/";
        global.msg[1]= "* It\\'s TORIEL\\'s sock drawer./%%";
        if(read > 0)
            global.msg[0]= "* You can\\'t stop looking&  at the socks./%%";
    }
}
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
