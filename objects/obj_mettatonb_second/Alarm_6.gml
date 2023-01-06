gg= floor(random(3));
mycommand= round(random(100));
global.msc= 0;
global.msg[0]= "THIS IS IT, DARLING!&SAY GOODBYE!/%%";
turns++;
if(turns > 1 && global.flag[385] < 2) {
    if(turns == 2)
        global.msg[0]= "HA!&THAT BUTTON WON\\'T&SAVE YOU NOW, DARLING!/%%";
    if(turns == 3)
        global.msg[0]= "YOU WOULDN\\'T DARE&USE THE [ACT] COMMAND&AND PRESS THAT&BUTTON!/%%";
    if(turns == 4)
        global.msg[0]= "THAT\\'S RIGHT!&DON\\'T PRESS IT!&I\\'LL DESTROY YOU!/%%";
    if(turns == 5)
        global.msg[0]= "WITHOUT THAT BUTTON,&YOU ARE INCHING&CLOSER AND CLOSER&TO YOUR DEMISE!/%%";
    if(turns == 6) global.msg[0]= "ANY MINUTE NOW!&    /%%";
    if(turns == 7) global.msg[0]= "ANY... MINUTE...&....NOW!/%%";
    if(turns == 8) {
        global.msg[0]= ".............&............/%%";
        turns= 7;
    }
    if(turns > 8) {
        global.msg[0]= "..........&...(COUGH)/%%";
        turns= 7;
    }
}
if(con == 10 && global.msg[0] == "OH!!!&THAT YELLOW GLOW...!/%%" && turns > 6)
    global.msg[0]= "TOOK YOU LONG&ENOUGH!/%%";
global.msg[1]= "%%%";
global.typer= 51;
scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
if(global.hp > 1 && global.flag[385] == 1) global.border= 6;
if(turns == 0) global.border= 0;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

