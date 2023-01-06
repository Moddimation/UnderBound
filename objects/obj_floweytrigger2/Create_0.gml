image_yscale= 1;
image_xscale= 100;
conversation= 0;
q= 0;
ini_open("undertale.ini");
a= ini_read_real("Flowey", "Alter", 0);
b= ini_read_real("Flowey", "K", 0);
c= ini_read_real("Flowey", "SPECIALK", 0);
d= ini_read_real("Flowey", "alter2", 0);
ini_close();
if(a > 0 || b > 0 || c > 0) q= 1;
if(scr_murderlv() >= 2) q= 0;
if(d > 0) q= 1;
if(q == 1) {
    // obj_floweytalker1
    with(875) instance_destroy();
    instance_destroy();
}
if(global.plot > 27) {
    // obj_floweytalker1
    with(875) instance_destroy();
    instance_destroy();
}
dingus= 0;

