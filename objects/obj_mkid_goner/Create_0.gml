dsprite= 1385;
usprite= 1386;
lsprite= 1388;
rsprite= 1387;
dtsprite= 1385;
utsprite= 1386;
ltsprite= 1388;
rtsprite= 1387;
myinteract= 0;
facing= 3;
direction= 180;
talkedto= 0;
image_speed= 0;
con= 0;
fun= 0;
if(room == 91 && global.plot < 110) instance_destroy();
type= 0;
gox= 0;
if(global.flag[5] >= 90 && file_exists("undertale.ini")) {
    ini_open("undertale.ini");
    fsx= ini_read_real("General", "fun", 0);
    if(fsx >= 90 && global.flag[5] >= 90) {
        gox= 1;
        type= 1;
    }
    ini_close();
}
if(global.debug == 1) gox= 1;
if(gox == 0) instance_destroy();
if(global.flag[7] == 1) instance_destroy();

