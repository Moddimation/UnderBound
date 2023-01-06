if(myinteract == 1) {
    if(obj_kitchenchecker.level == 0) {
        global.interact= 1;
        alarm[0]= 1;
        myinteract= 2;
    } else  myinteract= 0;
}
if(myinteract == 3 && !instance_exists(mydialoguer)) {
    global.interact= 0;
    myinteract= 0;
}
if(obj_kitchenchecker.level == 0) scr_depth();
if(obj_kitchenchecker.level > 0) depth= 100005;

