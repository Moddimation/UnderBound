buffer= 0;
ammo= 0;
moved= 0;
gridl= 120;
gridr= 180;
gridu= 60;
gridd= 120;
active= 0;
myinteract= 0;
snd= 0;
win= 0;
wincon= 0;
wintimer= 0;
idealammo= 0;
restart= 0;
rstype= 0;
if(room == 152 && global.flag[375] == 1) win= 1;
if(room == 150 && global.flag[374] == 1) win= 1;
if(room == 173 && global.flag[399] == 1) win= 1;
if(room == 175 && global.flag[400] == 1) win= 1;
if(room == 205 && global.flag[418] == 1) win= 1;
if(room == 173) {
    gridu= 40;
    gridl= 120;
    gridr= 220;
    gridd= 120;
}
if(room == 175) {
    gridu= 20;
    gridl= 120;
    gridr= 220;
    gridd= 120;
}
alarm[1]= 1;

