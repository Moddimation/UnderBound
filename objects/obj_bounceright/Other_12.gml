if(mydirection == 270 && myfacing == 0 && goldshift == 1) {
    goldshift= 0;
    y-= 40;
    mydirection= 90;
    myfacing= 2;
    sprite_index= spr_venter_u ;
}
if(mydirection == 0 && myfacing == 1 && goldshift == 1) {
    goldshift= 0;
    x-= 40;
    mydirection= 180;
    myfacing= 3;
    sprite_index= spr_venter_l ;
}
if(mydirection == 180 && myfacing == 3 && goldshift == 1) {
    goldshift= 0;
    x+= 40;
    mydirection= 0;
    myfacing= 1;
    sprite_index= spr_venter_r ;
}
if(mydirection == 90 && myfacing == 2 && goldshift == 1) {
    goldshift= 0;
    y+= 40;
    mydirection= 270;
    myfacing= 0;
    sprite_index= spr_venter_d ;
}


/*  */
