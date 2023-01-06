dsprite= 1313;
usprite= 1325;
lsprite= 1330;
rsprite= 1328;
dtsprite= 1316;
utsprite= 1327;
ltsprite= 1334;
rtsprite= 1335;
myinteract= 0;
facing= 0;
direction= 270;
talkedto= 0;
image_speed= 0;
fun= 0;
dir= 0;
rid= 0;
if(global.flag[67] == 1) {
    instance_destroy();
    exit;
} else  {
    if(room == 68) {
        dir= 1;
        if(global.flag[88] >= 4 && global.plot <= 105) {
            instance_destroy();
            exit;
        } else  {
            if(global.flag[354] == 2 && global.flag[389] == 0) {
                instance_destroy();
                exit;
            } else  {
                if(global.flag[7] == 1) {
                    instance_destroy();
                    exit;
                } else  {
                    if(global.flag[389] >= 3) instance_create(x - 34, y - 14, obj_undyne_friendc );
                }
            }
        }
    }
    if(room == 117) {
        d= 0;
        if(global.flag[354] < 2) d= 1;
        if(global.flag[88] < 4) d= 1;
        if(global.flag[389] > 0) d= 1;
        if(d == 1) {
            instance_destroy();
            exit;
        }
    }
    exit;
}

/* */
/*  */
