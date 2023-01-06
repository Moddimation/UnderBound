angspeed= 1.1 + sin(siner / 6) * 0.5;
radius+= sin(siner / 12) * 3;
siner++;
i= 0;
while(i < maxnum) {
    if(instance_exists(glove[i])) {
        gloveang[i]+= angspeed;
        glove[i].x= x + lengthdir_x(radius, gloveang[i] + ourang);
        glove[i].y= y + lengthdir_y(radius, gloveang[i] + ourang);
        glove[i].image_angle= gloveang[i] + ourang;
    }
    i++;
}
if(x < 0) hspeed= -hspeed;
if(x > room_width) hspeed= -hspeed;
if(slower == 1) {
    if(speed > 0) speed-= 0.05;
    else  speed= 0;
}
if(y > 1000 && spec == 0) instance_destroy();
if(y > room_height && spec == 1 && vspeed > 0)
    obj_6glove_boss.vspeed= -abs(vspeed);
if(y < 0 && spec == 1 && vspeed < 0)
    obj_6glove_boss.vspeed= abs(vspeed);

