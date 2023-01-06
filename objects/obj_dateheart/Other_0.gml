if(instance_exists(obj_papdate ) && deleteafter == 0) {
    global.msg[0]= "\\\\E0I UNDERSTAND&WHY YOU\\'RE&RUNNING AWAY./";
    global.msg[1]= "\\\\E2YOU\\'RE OVERWHELMED&BY THE SIGHT OF&MY COOL VIBES./";
    global.msg[2]= "\\\\E0BUT YOU CAN\\'T&BACK DOWN NOW!!!/%%";
    deleteafter= 1;
    x= xstart;
    y= ystart;
    event_user(1);
}


/*  */
