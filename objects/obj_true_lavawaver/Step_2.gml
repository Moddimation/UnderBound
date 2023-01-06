if(instance_exists(obj_mainchara ) && init_band == 0) {
    if(room == 147 && obj_mainchara.x > 800) x= 800;
    if(room == 145 && obj_mainchara.y > 280) y= 160;
    if(room == 145 && obj_mainchara.x > 560) x= 500;
    init_band= 1;
}
if(__view_get( e__VW.XView, 0 ) > x + 60) x+= 20;
if(__view_get( e__VW.XView, 0 ) < x + 20) x-= 20;
if(__view_get( e__VW.YView, 0 ) > y + 70) y+= 40;
if(__view_get( e__VW.YView, 0 ) < y + 10) y-= 40;
if(x < -40) x= -40;
if(x > room_width - 360) x= room_width - 360;
if(y > room_height - 280) y= room_height - 280;
if(y < -40) y= -40;

/* */
/*  */
