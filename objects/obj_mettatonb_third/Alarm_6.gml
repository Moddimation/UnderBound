gg= floor(random(3));
mycommand= round(random(100));
global.msc= 0;
global.msg[0]= "THIS IS IT, DARLING!&SAY GOODBYE!/%%";
turns++;
if(turns > 0) {
    if(turns == 1) {
        global.msg[0]= "YES, I WAS THE ONE&THAT RE-ARRANGED&THE CORE!/";
        global.msg[1]= "I WAS THE ONE THAT&HIRED EVERYONE TO&KILL YOU!/";
        global.msg[2]= "THAT, HOWEVER, WAS A&SHORT-SIGHTED PLAN./";
        global.msg[3]= "YOU KNOW WHAT WOULD&BE A HUNDRED TIMES&BETTER?/";
        global.msg[4]= "KILLING YOU MYSELF!!/%%";
    }
    if(turns == 2) {
        global.msg[0]= "LISTEN, DARLING.&I\\'VE SEEN YOU FIGHT./";
        global.msg[1]= "YOU\\'RE WEAK./";
        global.msg[2]= "IF YOU CONTINUE&FORWARD, ASGORE WILL&TAKE YOUR SOUL./";
        global.msg[3]= "AND WITH YOUR SOUL,&ASGORE WILL DESTROY&HUMANITY./%%";
    }
    if(turns == 3) {
        global.msg[0]= "BUT IF I GET YOUR&SOUL, I CAN STOP&ASGORE\\'S PLAN!/";
        global.msg[1]= "I CAN SAVE HUMANITY&FROM DESTRUCTION!/%%";
    }
    if(turns == 4) {
        global.msg[0]= "THEN, USING YOUR SOUL,&I\\'LL CROSS THROUGH&THE BARRIER.../";
        global.msg[1]= "AND BECOME THE STAR&I\\'VE ALWAYS DREAMED&OF BEING!/";
        global.msg[2]= "HUNDREDS, THOUSANDS.../";
        global.msg[3]= "NO!&MILLIONS OF HUMANS&WILL WATCH ME!/%%";
    }
    if(turns == 5) {
        global.msg[0]= "GLITZ! GLAMOUR!&I\\'LL FINALLY HAVE&IT ALL!/";
        global.msg[1]= "SO WHAT IF A FEW&PEOPLE HAVE TO DIE?/";
        global.msg[2]= "THAT\\'S SHOW BUSINESS,&BABY!/%%";
    }
}
global.typer= 51;
scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
global.border= 24;
if(turns == 0) global.border= 0;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

