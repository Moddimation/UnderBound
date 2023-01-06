alarm[0]= 15;
falling= 0;
fell= 0;
rate= 0;
colliding= 0;
rate_time= 90;
if(room == 84) {
    x1= 220;
    y1= 180;
    x2= 380;
    y2= 260;
    triggery= 283;
}
if(room == 91) {
    x1= 80;
    x2= 240;
    y1= 180;
    y2= 200;
    triggery= 263;
}
if(scr_murderlv() >= 8 && global.flag[27] == 0) alarm[0]= -1;

