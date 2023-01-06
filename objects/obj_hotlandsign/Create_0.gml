sizefactor= 4;
xaround= 20;
alarm[0]= 5;
sinercolor= 0;
greenbright= 0;
alarm[1]= 15;
inactive= 0;
if(global.flag[350] == 1) inactive= 1;
if(inactive == 1) {
    xaround= 20;
    alarm[0]= -1;
}

