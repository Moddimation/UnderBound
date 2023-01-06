dsprite= 1219;
usprite= 1219;
lsprite= 1219;
rsprite= 1219;
dtsprite= 1219;
utsprite= 1219;
ltsprite= 1219;
rtsprite= 1219;
myinteract= 0;
facing= 0;
direction= 0;
talkedto= 0;
image_speed= 0;
gox= 0;
if(global.flag[5] == 63 && file_exists("undertale.ini")) {
    ini_open("undertale.ini");
    fsx= ini_read_real("General", "fun", 0);
    if(fsx == 63 && global.flag[5] == 63) {
        gox= 1;
        type= 1;
        ini_write_real("General", "fun", 0);
        global.flag[5]= 0;
    }
    ini_close();
}
choos= choose(0, 1);
if(choos != 1) gox= 0;
if(global.debug == 1) gox= 2;
if(gox == 0) instance_destroy();
if(global.flag[7] == 1) instance_destroy();
if(scr_murderlv() >= 12) instance_destroy();

