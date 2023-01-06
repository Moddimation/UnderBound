tx= 0;
if(instance_exists(obj_doomtimer ))
    dmx= 120 - obj_doomtimer.dx;
else  dmx= 0;
stringer= string(dmx) + " SECONDS LEFT!";
if(doomx == 0) stringer+= " HURRY UP!";
if(doomx == 1)
    stringer+= " " + string(6 - global.flag[395]) + " BOMBS LEFT!";
if(doomx == 2)
    stringer+= " TIME\\'S RUNNING OUT!";
if(doomx == 3)
    stringer+= " " + string(6 - global.flag[395]) + " BOMBS LEFT!";
if(doomx == 4) stringer+= " DO YOUR BEST!";
if(doomx == 5)
    stringer+= " " + string(6 - global.flag[395]) + " BOMBS LEFT!";
if(doomx == 6) stringer+= " SPEED UP!";
if(doomx == 7)
    stringer+= " " + string(6 - global.flag[395]) + " BOMBS LEFT!";
if(doomx == 8) stringer+= " RUN! RUN! RUN!";
if(doomx == 9) stringer+= " GIVE IT YOUR ALL!";
if(doomx == 10) stringer+= " DON\\'T WAIT UP!";
doomx++;
doomtimer= 0;

/* */
/*  */
