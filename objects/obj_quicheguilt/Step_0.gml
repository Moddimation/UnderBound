if(global.inbattle == 0) {
    if(guilt == 1 && global.interact == 0 && global.flag[17] == 0 && instance_exists(obj_mainchara ))
        check++;
    else  check= 0;
    if(check >= 80 && guilt == 1) {
        global.msg[0]= "* Somewhere^1, a quiche\\'s worst&  fear becomes reality./%%";
        scr_regulartext();
        guilt= 2;
        global.interact= 1;
    }
    if(guilt == 2 && !instance_exists(OBJ_WRITER )) {
        global.interact= 0;
        instance_destroy();
    }
    if(guilt == 6 && global.interact == 0) {
        global.msg[0]= "* A quiche in another timeline./%%";
        scr_regulartext();
        guilt= 2;
        global.interact= 1;
    }
}

/* */
/*  */
