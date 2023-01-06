waterboard= 0;
won= 0;
if(scr_murderlv() >= 8 && global.flag[27] == 0) {
    if(global.plot < 107) global.plot= 107;
    if(global.flag[386] == 0) global.flag[386]= 1;
}
if(room == 88 && global.entrance == 2) {
    xx= 420;
    yy= 400;
    i= 0;
    repeat(4)  {
        event_user(0);
        xx+= 20;
    }
}
if(room == 88 && global.plot > 106) {
    xx= 220;
    yy= 180;
    i= 0;
    repeat(4)  {
        event_user(0);
        yy+= 20;
    }
}
if(room == 273 && (global.plot > 110 || global.entrance == 2)) {
    xx= 180;
    yy= 440;
    i= 0;
    repeat(4)  {
        event_user(0);
        xx+= 20;
    }
}
if(room == 87 && global.flag[386] == 1) {
    xx= 280;
    yy= 140;
    i= 0;
    repeat(4)  {
        event_user(0);
        xx+= 20;
    }
}

