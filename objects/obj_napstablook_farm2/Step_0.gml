buffer--;
if(myinteract == 1 && buffer > 0) myinteract= 0;
if(myinteract == 1 && buffer <= 0) {
    global.interact= 1;
    alarm[0]= 1;
    myinteract= 2;
}
if(myinteract == 3 && !instance_exists(mydialoguer)) {
    if(con == 0) global.interact= 0;
    myinteract= 0;
}

