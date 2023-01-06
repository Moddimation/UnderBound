if(conversation == 2 && !instance_exists(obj_dialoguer )) {
    global.interact= 3;
    obj_mainchara.y= 128;
    obj_mainchara.visible= 0;
    obj_toroverworld3.sprite_index= spr_toriel_handhold_l ;
    obj_toroverworld3.lsprite= 1115;
    // obj_mainchara
    with(1570) path_start(path_torielwalkbasement2 , 5, 0, path_action_stop );
    // obj_toroverworld3
    with(861) path_start(path_torielwalkbasement2 , 5, 0, path_action_stop );
    conversation= 3;
}
if(instance_exists(obj_toroverworld3 ) && conversation == 1 && obj_toroverworld3.path_position == 1) {
    global.interact= 1;
    myinteract= 3;
    global.typer= 4;
    global.facechoice= 1;
    global.faceemotion= 2;
    global.flag[44]++;
    global.flag[45]= 1;
    global.msc= 0;
    if(global.flag[44] == 1)
        global.msg[0]= "* I think you should&  play upstairs&  instead./%%";
    if(global.flag[44] == 2)
        global.msg[0]= "* It is dangerous&  to play here./%%";
    if(global.flag[44] == 3)
        global.msg[0]= "* It is drafty here.&* You will catch&  a cold./%%";
    if(global.flag[44] == 4)
        global.msg[0]= "* It is dusty here.&* You will catch&  a cough./%%";
    if(global.flag[44] == 5)
        global.msg[0]= "* There is nothing&  to see here./%%";
    if(global.flag[44] == 6)
        global.msg[0]= "* Do you want to&  read a book?/%%";
    if(global.flag[44] == 7)
        global.msg[0]= "\\\\E7* I do not like&  the game you&  are playing./%%";
    if(global.flag[44] == 8)
        global.msg[0]= "\\\\E0* Why not go for&  a walk in the&  yard?/%%";
    if(global.flag[44] == 9) global.msg[0]= "* Really now./%%";
    if(global.flag[44] > 9) global.msg[0]= "\\\\E4* .../%%";
    if(global.plot < 19) {
        global.flag[44]= 0;
        global.msg[0]= "* Hey^1, do not go down&  here./";
        global.msg[1]= "* I have something&  to show you&  upstairs./%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}

/* */
/*  */
