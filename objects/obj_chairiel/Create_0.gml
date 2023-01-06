chair= 0;
if(global.plot > 20 || global.plot < 19) chair= 1;
if(chair == 0) {
    dsprite= 1118;
    usprite= 1118;
    lsprite= 1118;
    rsprite= 1118;
    dtsprite= 1118;
    utsprite= 1118;
    ltsprite= 1118;
    rtsprite= 1118;
} else  {
    dsprite= 1121;
    usprite= 1121;
    lsprite= 1121;
    rsprite= 1121;
    dtsprite= 1121;
    utsprite= 1121;
    ltsprite= 1121;
    rtsprite= 1121;
    sprite_index= spr_chairempty ;
}
myinteract= 0;
facing= 1;
direction= 180;
talkedto= 0;
if(room == 221) {
    dsprite= 1895;
    usprite= 1895;
    lsprite= 1895;
    rsprite= 1895;
    dtsprite= 1895;
    utsprite= 1895;
    ltsprite= 1895;
    rtsprite= 1895;
    sprite_index= spr_chairiel_grey ;
    chair= 9;
}


/*  */
