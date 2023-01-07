direction= temdir[temno] - 180;
speed= 12;
if(direction == 0 && x >= temx1[temno] - 6) {
    temx1[temno]= 0;
    temno--;
    x= temx2[temno] - 22;
    y+= 4;
}
if(direction == 180 && x <= temx1[temno] + 6) {
    temx1[temno]= 0;
    temno--;
    x= temx2[temno] + 2;
}
if(direction == 270 && y >= temy1[temno] - 6) {
    temx1[temno]= 0;
    temno--;
    y= temy2[temno] - 22;
}
if(direction == 90 && y <= temy1[temno] + 6) {
    temx1[temno]= 0;
    temno--;
    x+= 4;
    y= temy2[temno] + 2;
}
alarm[1]= 1;
if(temno < 4 && global.turntimer < 2 && turned == 0) {
    turned= 1;
    global.turntimer= -1;
    global.mnfight= 3;
}
if(instance_number(object_index) > 1) instance_destroy();
if(temno == 0 && y < ystart + 25) {
    temno= 0;
    if(instance_exists(obj_tembody )) obj_tembody.atk= 0;
    instance_destroy();
}



