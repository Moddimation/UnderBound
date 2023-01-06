scr_depth(0, 0, 0, 0, 0);
STOPPER= 0;
image_speed= 0.334;
dsprite= 1427;
usprite= 1432;
lsprite= 1426;
rsprite= 1425;
dtsprite= 1427;
utsprite= 1432;
ltsprite= 1426;
rtsprite= 1425;
myinteract= 0;
facing= 0;
fun= 0;
npcdir= 0;
d= 0;
con= 0;
active= 1;
newvar= 1;
sans= 0;
if(global.flag[67] == 1) sans= 1;
if(room == 134) newvar= 0;
i= 0;
while(i < 60) {
    rememberx[i]= x;
    remembery[i]= y;
    i++;
}
global.flag[17]= 1;
if(global.plot > 121) instance_destroy();
if(room == 135) {
    if(global.entrance == 1) y= obj_mainchara.y + 100;
    if(global.entrance == 2) y= obj_mainchara.y - 100;
}
if(room == 136) {
    if(global.entrance == 1) x= obj_mainchara.x - 100;
    if(global.entrance == 2) x= obj_mainchara.x + 100;
}
if(room == 137) {
    if(global.entrance == 1) x= obj_mainchara.x - 60;
    if(global.entrance == 2) x= obj_mainchara.x + 60;
}

