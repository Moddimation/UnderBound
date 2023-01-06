myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Let\\'s play Monsters and Humans!/%%";
if(global.plot >= 122)
    global.msg[0]= "* Let\\'s continue to play&  Monsters and Humans!/%%";
if(global.flag[7] == 1)
    global.msg[0]= "* Now we can play Monsters&  and Humans with REAL humans!/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
