if(canttalk == 0) {
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.msg[0]= "* (As per culinary standard^1,&  a death forcefield surrounds&  the kitchen.)/%%";
    if(room == 166)
        global.msg[0]= "* (As per journalistic standards^1,&  a death forcefield surrounds&  the area of intrigue.)/%%";
    if(room == 162)
        global.msg[0]= "* (It\\'s the kind of every-day&  death forcefield you see&  at home.)/%%";
    if(room == 192 || room == 202)
        global.msg[0]= "* (It\\'s a forcefield.)/%%";
    if(room == 195)
        global.msg[0]= "* (It\\'s a battery-powered&  forcefield.)/%%";
    if(room == 139 || room == 159 || room == 187 || room == 168 || room == 157)
        global.msg[0]= "* (It\\'s a forcefield.)/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    myinteract= 3;
} else  {
    global.interact= 0;
    myinteract= 0;
}


/*  */
