if(type == 0) image_angle+= anger;
if(x > room_width - 60 && hspeed > 0)
    hspeed= -hspeed;
if(x < 60 && hspeed < 0) hspeed= -hspeed;
if(y < 60 && vspeed < 0) vspeed= -vspeed;
if(y > room_height - 60 && vspeed > 0)
    vspeed= -vspeed;
if(type == 1) {
    if(speed > 0) speed-= 0.03;
    if(speed < 0) speed= 0;
}

