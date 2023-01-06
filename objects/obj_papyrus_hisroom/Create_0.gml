if(global.flag[67] == 1) {
    instance_destroy();
    exit;
} else  {
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
    intro= 0;
    if(global.flag[88] >= 4) {
        instance_destroy();
        exit;
    } else  exit;
}

