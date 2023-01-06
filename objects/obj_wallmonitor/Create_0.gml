image_speed= 0.1;
lit= 0;
active= 1;
if(room == 262) active= 0;
if(global.flag[485] == 1) {
    active= 0;
    if(room == 262) active= 2;
}

