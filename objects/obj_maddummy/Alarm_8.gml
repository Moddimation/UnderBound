if(con == 3) con= 4;
if(con == 1) {
    global.typer= 33;
    global.msg[0]= "Foolish^1.&Foolish^1!&FOOLISH!/";
    global.msg[1]= "Even if you attack&my vessel^1, you\\'ll&NEVER hurt me!/";
    global.msg[2]= "I\\'m still&incorporeal^1, you&DUMMY!!!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    hurtsies= 0;
    con= 2;
}


/*  */
