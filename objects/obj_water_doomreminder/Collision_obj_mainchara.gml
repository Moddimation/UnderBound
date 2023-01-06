if(global.interact == 0) {
    global.interact= 1;
    con= 1;
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    pop= 18 - global.flag[204];
    if(pop < 0) pop= 0;
    global.msg[0]= "\\\\R* Strongly felt " + string(pop) + " left^1.&* Shouldn\\'t proceed yet./%%";
    instance_create(0, 0, obj_dialoguer );
}

/* */
/*  */
