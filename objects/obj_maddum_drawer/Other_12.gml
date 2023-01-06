alarm[0]= 5;
global.faceemotion= 1;
event_user(0);
i= 0;
while(i < 4) {
    partx[i]+= -20 + random(40);
    party[i]+= -10 + random(20);
    partrot[i]+= -90 + random(180);
    i++;
}
mode= 5;
dingus= 0;

