dsprite= 1103;
usprite= 1112;
lsprite= 1108;
rsprite= 1107;
dtsprite= 1105;
utsprite= 1111;
ltsprite= 1110;
rtsprite= 1109;
myinteract= 0;
facing= 1;
direction= 180;
talkedto= 0;
image_speed= 0;
if(global.flag[7] == 1) {
    y+= 20;
    dsprite= 2417;
    usprite= 2419;
    lsprite= 2424;
    rsprite= 2421;
    dtsprite= 2418;
    utsprite= 2420;
    ltsprite= 2425;
    rtsprite= 2422;
    ini_open("undertale.ini");
    curf= ini_read_real("EndF", "EndF", 0);
    ini_close();
    if(curf > 0) instance_destroy();
}

