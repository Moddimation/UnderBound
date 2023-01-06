image_xscale= 50;
conversation= 0;
if(global.plot > 0) instance_destroy();
faketor= 0;
alter= 0;
ini_open("undertale.ini");
a= ini_read_real("Flowey", "Alter", 0);
b= ini_read_real("Flowey", "K", 0);
c= ini_read_real("Flowey", "SPECIALK", 0);
ini_close();
if(a > 0 || b > 0 || c > 0) alter= 1;
if(alter == 1) {
    // obj_floweytalker1
    with(875) visible= 0;
}

