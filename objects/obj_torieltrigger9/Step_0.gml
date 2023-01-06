dingus++;
if(global.plot == 21 && dingus == 2) instance_create(370, 90, obj_toroverworld3 );
if(conversation == 2 && !instance_exists(obj_dialoguer )) {
    // obj_toroverworld3
    with(861) path_start(path_walkright , 4, 0, path_action_stop );
    global.plot= 22;
    global.interact= 0;
    instance_destroy();
}
if(instance_exists(obj_toroverworld3 ) && conversation == 1) {
    global.interact= 1;
    myinteract= 3;
    global.typer= 4;
    global.facechoice= 1;
    global.faceemotion= 2;
    global.msc= 0;
    global.msg[0]= "* You wish to know how&  to return " + chr(ord("\"")) + "home," + chr(ord("\"")) + "&  do you not?/";
    global.msg[1]= "* Ahead of us lies the&  end of the RUINS./";
    global.msg[2]= "* A one-way exit to the&  rest of the underground./";
    global.msg[3]= "* I am going to destroy&  it./";
    global.msg[4]= "* No one will ever&  be able to leave&  again./";
    global.msg[5]= "* Now be a good child&  and go upstairs./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}

/* */
/*  */
