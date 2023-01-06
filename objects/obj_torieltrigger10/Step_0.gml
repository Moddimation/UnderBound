dingus++;
if(global.plot == 22 && dingus == 2) instance_create(370, 90, obj_toroverworld3 );
if(conversation == 2 && !instance_exists(obj_dialoguer )) {
    // obj_toroverworld3
    with(861) path_start(path_walkright , 4, 0, path_action_stop );
    global.plot= 23;
    global.interact= 0;
    instance_destroy();
}
if(instance_exists(obj_toroverworld3 ) && conversation == 1) {
    global.interact= 1;
    myinteract= 3;
    global.typer= 4;
    global.facechoice= 1;
    global.faceemotion= 6;
    global.msc= 0;
    global.msg[0]= "* Every human that falls&  down here meets&  the same fate./";
    global.msg[1]= "* I have seen it&  again and again./";
    global.msg[2]= "* They come./";
    global.msg[3]= "* They leave./";
    global.msg[4]= "* They die./";
    global.msg[5]= "* You naive child..^1.&* If you leave the&  RUINS.../";
    global.msg[6]= "\\\\W* They..^1.&* \\\\RASGORE\\\\W..^1.&* Will kill you./";
    global.msg[7]= "* I am only protecting&  you^1, do you understand?/";
    global.msg[8]= "* ... go to your room./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}

/* */
/*  */
