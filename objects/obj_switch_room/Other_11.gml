on= 0;
image_speed= 0.25;
sprite_index= spr_onoffswitch_off ;
if(room == 149) global.flag[374]= 0;
if(room == 151) global.flag[375]= 0;
if(room == 208) {
    global.flag[419]= 1;
    sprite_index= spr_onoffswitch_on ;
}

/* */
/*  */
