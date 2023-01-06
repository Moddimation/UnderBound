gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "Default";
if(mycommand < 75) global.msg[0]= "No 2";
if(mycommand < 50) global.msg[0]= "No 3";
if(mycommand < 25) global.msg[0]= "No 4";
if(whatiheard == 1) global.msg[0]= "Action1";
if(whatiheard == 3) global.msg[0]= "Action2";
if(whatiheard == 4) global.msg[0]= "Action3";
global.msg[1]= "%%%";
global.typer= 2;

