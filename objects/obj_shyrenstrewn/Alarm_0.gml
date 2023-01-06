myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[81] == 2)
    global.msg[0]= "* It\\'s a mixture of socks^1,&  fanmail^1, and toilet paper./%%";
else 
    global.msg[0]= "* There\\'s a conspicuous&  lack of anything on the&  ground./%%";
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
