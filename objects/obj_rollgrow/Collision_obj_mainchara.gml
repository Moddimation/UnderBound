if(bonk == 1) {
    hspeed= 0;
    vspeed= 0;
    bonk= 0;
} else  {
    if(obj_time.left == 1) hspeed-= 0.6 / size + 0.05;
    if(obj_time.up == 1) vspeed-= 0.6 / size + 0.05;
    if(obj_time.right == 1)
        hspeed+= 0.6 / size + 0.05;
    if(obj_time.down == 1) vspeed+= 0.6 / size + 0.05;
}
other.x= other.xprevious;
other.y= other.yprevious;

