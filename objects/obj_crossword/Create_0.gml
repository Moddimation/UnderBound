myinteract= 0;
image_xscale= 1;
image_yscale= 1;
cross= 0;
cancel= 0;
nightmare= 0;
if(file_exists("undertale.ini") && (global.flag[5] == 56 || global.flag[5] == 57)) {
    ini_open("undertale.ini");
    fn= ini_read_real("General", "fun", 0);
    if(fn == 56 || fn == 57) nightmare= 1;
    ini_close();
}

