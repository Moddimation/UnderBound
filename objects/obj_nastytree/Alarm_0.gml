myinteract= 3;
global.msc= 0;
global.msg[0]= "* Every time this old tree&  grows any leaves^1, they fall&  right off./%%";
if(room == 117) global.msg[0]= "* It\\'s a neat-looking tree./%%";
if(global.flag[7] == 1)
    global.msg[0]= "* (It\\'s natural for a tree to&  lose its leaves.)/%%";
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
