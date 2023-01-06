image_speed= 0.5;
ex= 0;
active= 1;
siner= 0;
blue= 1;
rememberhspeed= 0;
event_user(1);
if(room == 166) {
    if(global.flag[372] == 1) active= 2;
    if(global.plot > 160) active= 2;
}
if(global.plot > 184) active= 2;
if(global.flag[7] == 1) active= 2;
activebuffer= 0;

