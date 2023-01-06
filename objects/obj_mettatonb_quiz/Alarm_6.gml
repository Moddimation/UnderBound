gg= floor(random(3));
mycommand= round(random(100));
qno= obj_questionasker.q;
global.msc= 0;
if(qno == 0) global.msg[0]= "LET\\'S START WITH&AN EASY ONE!!/%%";
if(qno == 1) global.msg[0]= "HERE\\'S YOUR TERRIFIC&PRIZE!/%%";
if(qno == 2)
    global.msg[0]= "ENOUGH ABOUT YOU.&LET\\'S TALK ABOUT ME!/%%";
if(qno == 3) global.msg[0]= "HERE\\'S ANOTHER EASY&ONE FOR YOU!/%%";
if(qno == 4)
    global.msg[0]= "DON\\'T \\'COUNT\\'&ON YOUR VICTORY.../%%";
if(qno == 5) global.msg[0]= "LET\\'S PLAY MEMORY&GAME./%%";
if(qno == 6) global.msg[0]= "BUT CAN YOU GET&THIS ONE???/%%";
if(qno == 7) global.msg[0]= "HERE\\'S A SIMPLE&ONE./%%";
if(qno == 8) global.msg[0]= "TIME TO BREAK OUT&THE BIG GUNS!!/%%";
global.msg[1]= "%%%";
global.typer= 51;
sxx= obj_mettatonb_body.x - 320;
if(sxx < 0) sxx= 0;
scr_blcon(sxx, obj_mettatonb_body.y - 120, 1);
global.border= 0;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

