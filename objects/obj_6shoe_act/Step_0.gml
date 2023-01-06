hspeed= -4;
siner++;
if(counter > 0 && counter < 14) vspeed= -6;
if(counter == 14) vspeed= 0;
if(counter > 20 && counter < 30) vspeed= 8;
if(counter == 30) vspeed= 0;
if(counter > 40) counter= 1;
counter++;
if(x < 0 && hspeed < 0) hspeed= -hspeed;
if(x > room_width && hspeed > 0)
    hspeed= -hspeed;

