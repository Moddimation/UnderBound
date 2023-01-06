myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I\\'ve heard there\\'s a local&  tradition based off of&  my own suffering./";
global.msg[1]= "* .../%%";
if(talkedto > 0) global.msg[0]= "* .../%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Everyone\\'s leaving^1, eh?/";
    global.msg[1]= "* Good riddance^1!&* Maybe I\\'ll finally get&  some peace and quiet!/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
