if(myinteract == 1 && global.plot < 108 && room == 90) {
    event_user(1);
    global.plot= 108;
}
if(room == 102 && con == 1 && global.flag[356] == 0) {
    global.flag[356]= 1;
    global.interact= 1;
    con= 2;
    alarm[3]= 30;
}

