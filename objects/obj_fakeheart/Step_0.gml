global.invc--;
if(global.invc > 0) image_speed= 0.5;
else  {
    image_index= 0;
    image_speed= 0;
}
if(obj_time.left == 1 && movement == 1) {
    if(keyboard_multicheck(16) == 1)
        x-= global.sp / 2;
    else  x-= global.sp;
}
if(obj_time.right == 1 && movement == 1) {
    if(keyboard_multicheck(16) == 1)
        x+= global.sp / 2;
    else  x+= global.sp;
}
if(obj_time.up == 1 && movement == 1) {
    if(keyboard_multicheck(16) == 1)
        y-= global.sp / 2;
    else  y-= global.sp;
}
if(obj_time.down == 1 && movement == 1) {
    if(keyboard_multicheck(16) == 1)
        y+= global.sp / 2;
    else  y+= global.sp;
}
if(global.hp < 1) script_execute(scr_gameoverb );


/*  */
