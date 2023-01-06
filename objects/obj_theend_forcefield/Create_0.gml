con= 0;
ended= 0;
if(global.flag[418] == 1) ended= 1;
if(global.flag[419] == 1) ended= 1;
if(global.flag[420] == 1) ended= 1;
if(ended == 0) {
    ff= instance_create(x, y, obj_kitchenforcefield );
    ff.image_yscale= 4;
    ff.basic= 0;
}
timer= 0;

/* */
/*  */
