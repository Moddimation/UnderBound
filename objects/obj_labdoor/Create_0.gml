type= 2;
s_buffer= 10;
o_sound= 0;
c_sound= 0;
s_sound= 0;
open= -1;
ox= 0;
anim= 0;
red= 0;
yel= 0;
gre= 0;
blu= 0;
if(global.flag[481] == 3) red= 1;
if(global.flag[482] == 3) blu= 1;
if(global.flag[483] == 3) gre= 1;
if(global.flag[484] == 3) yel= 1;
if(room == 244) {
    if(global.entrance == 1) alarm[0]= 1;
    shouldopen= 0;
    type= 0;
    global.flag[480]= 1;
    // obj_mainchara
    with(1570) image_blend= merge_color(8421504, 16777215, 0.3);
}
if(room == 246 && x < room_width * 2 / 3) {
    shouldopen= 0;
    type= 1;
    if(red == 1 && blu == 1 && gre == 1 && yel == 1)
        shouldopen= 1;
    global.flag[480]= 1;
    // obj_mainchara
    with(1570) image_blend= merge_color(8421504, 16777215, 0.3);
}
if(room == 246 && x > room_width * 2 / 3) {
    shouldopen= 0;
    type= 2;
    if(red == 1) shouldopen= 1;
    if(global.entrance == 20) open= 1;
}
s1= instance_create(x, y + 40, obj_solidsmall );
s2= instance_create(x + 20, y + 40, obj_solidsmall );
myinteract= 0;
if(global.entrance == 19) alarm[0]= 1;


/*  */
