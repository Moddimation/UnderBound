f_test= 1;
g_heart= 0;
rememberx= obj_mainchara.x;
rememberview= __view_get( e__VW.XView, 0 );
__view_set( e__VW.XView, 0, 300 );
obj_mainchara.x= 300;
size= 1;
alarm[0]= 1;
scrollspeed= size;
xhome= xstart;
if(global.entrance == 1) {
    if(x < 0) {
        x+= 350;
        xhome+= 350;
    }
    if(x > 320) {
        x-= 350;
        xhome-= 350;
    }
    if(x < 0) {
        x+= 350;
        xhome+= 350;
    }
    if(x > 320) {
        x-= 350;
        xhome-= 350;
    }
    if(x < 0) {
        x+= 350;
        xhome+= 350;
    }
    if(x > 320) {
        x-= 350;
        xhome-= 350;
    }
    if(x < 0) {
        x+= 350;
        xhome+= 350;
    }
    if(x > 320) {
        x-= 350;
        xhome-= 350;
    }
}
if(global.entrance == 2) {
    repeat(5)  {
        if(x < room_width - __view_get( e__VW.WView, 0 )) {
            x+= 350;
            xhome+= 350;
        }
        if(x > room_width - __view_get( e__VW.WView, 0 )) {
            x-= 350;
            xhome-= 350;
        }
    }
}
x= xhome;
obj_mainchara.x= rememberx;

