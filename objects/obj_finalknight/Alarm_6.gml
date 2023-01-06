gg= floor(random(3));
mycommand= round(random(100));
if(mycommand < 20) global.msg[0]= "Good&knight.";
if(mycommand >= 20) global.msg[0]= "Fare&well.";
if(mycommand >= 40) global.msg[0]= "Adieu.";
if(mycommand >= 60) global.msg[0]= "Close&your&eyes...";
if(mycommand >= 80) global.msg[0]= "Goodbye.";
if(asleep > 0) global.msg[0]= "Zzzz...";
global.msg[1]= "%%%";
if(talk != 3) {
    global.typer= 1;
    global.msc= 0;
    blconwd= instance_create(x + 210, y - 20, OBJ_INSTAWRITER );
}
if(talk == 3) {
    global.msg[0]= " ......& ......& ......& ......& ......& ......& ......& ......& It\\'s OK.";
    global.msg[1]= "%%%";
    global.typer= 5;
    global.msc= 0;
    blconwd= instance_create(x + 210, y - 20, OBJ_INSTAWRITER );
    talk= 0;
}
attacked= 0;
if(asleep == 0) global.border= 17;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
