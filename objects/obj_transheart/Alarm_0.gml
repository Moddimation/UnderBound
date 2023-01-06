xx= __view_get( e__VW.XView, view_current );
yy= __view_get( e__VW.YView, view_current );
mode= 0;
mychoicex= xx + 20;
mychoicey= yy + 223;
if(room == 5 || room == 77) {
    mychoicex= xx + 154;
    mychoicey= yy + 156;
}
if(room == 134) {
    mychoicex= xx + 154;
    mychoicey= yy + 110;
}
spdr= distance_to_point(mychoicex, mychoicey) / 17;
move_towards_point(mychoicex, mychoicey, spdr);
if(global.flag[16] == 1) {
    mychoicex= xx + 154;
    mychoicey= yy + 156;
    spdr= distance_to_point(mychoicex, mychoicey) / 8;
    move_towards_point(mychoicex, mychoicey, spdr);
}

