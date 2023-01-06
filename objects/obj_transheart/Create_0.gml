xx= __view_get( e__VW.XView, view_current );
yy= __view_get( e__VW.YView, view_current );
mode= 0;
alarm[0]= 0;
mychoicex= xx + 20;
mychoicey= yy + 223;
if(room == 5 || room == 77) {
    mychoicex= xx + 154;
    mychoicey= yy + 156;
}
if(room == 134 || room == 135 || room == 136 || room == 137) {
    mychoicex= xx + 156;
    mychoicey= yy + 116;
}
spdr= distance_to_point(mychoicex, mychoicey) / 17;
move_towards_point(mychoicex, mychoicey, spdr);
snd_play(snd_battlefall );
if(global.flag[16] == 1) {
    x= xstart;
    y= ystart;
    mychoicex= xx + 154;
    mychoicey= yy + 156;
    spdr= distance_to_point(mychoicex, mychoicey) / 8;
    move_towards_point(mychoicex, mychoicey, spdr);
    snd_play(snd_battlefall );
}

/* */
/*  */
