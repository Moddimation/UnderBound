scr_depth(0, 0, 0, 0, 0);
myinteract= 0;
image_xscale= 1;
image_yscale= 1;
reeled= 0;
image_speed= 0;
orx= 0;
if(global.plot > 100 && global.flag[5] == 65 && global.flag[7] == 0) {
    orx= 0;
    if(file_exists("undertale.ini")) {
        ini_open("undertale.ini");
        srx= ini_read_real("General", "fun", 0);
        if(srx == 65) {
            orx= 1;
            global.flag[5]= 0;
            ini_write_real("General", "fun", 0);
        }
        ini_close();
    }
    if(orx == 1) orx= choose(0, 1);
}
if(orx == 1) room_goto(270);

