blcon= instance_create(x + sprite_width, y, obj_blconsm );
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 100)
    global.msg[0]= " Thanks!";
t++;
if(t == 1) global.msg[0]= "Thanks!";
if(t == 2) global.msg[0]= "Thank&you!";
if(t == 3) global.msg[0]= "Great&work!";
if(t == 4) global.msg[0]= "Bravo!";
if(t == 5) global.msg[0]= "OK!";
if(t >= 6) global.msg[0]= "...";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );


/*  */
