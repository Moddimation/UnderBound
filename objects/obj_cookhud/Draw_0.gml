y= __view_get( e__VW.YView, 0 ) + 40;
if(con == 0 && x >= __view_get( e__VW.XView, 0 )) {
    x= __view_get( e__VW.XView, 0 );
    hspeed= 0;
    friction= 0;
    con= 1;
}
if(instance_exists(obj_jetpackchara )) {
    time= obj_jetpackchara.timertime;
    dist= obj_jetpackchara.dist;
} else  {
    dist++;
    time--;
}
draw_sprite(spr_goalhud , 0, x, y);
ballx= (maxdist - dist) / maxdist * 27;
draw_sprite(spr_goalhud_ball , 0, x + 62 + ballx, y + 5);
pizzax= (inittime - time) / inittime * 9;
draw_sprite(spr_timehud , 0, x, y + 30);
draw_sprite(spr_pizzaclock , pizzax, x + 62, y + 33);
thisnum= ceil(time / 30);
if(thisnum >= 0) {
    place= 0;
    numadd= 10;
    if(thisnum >= numadd) {
        while(thisnum >= numadd) {
            place++;
            numadd*= 10;
        }
    }
} else  {
    thisnum= 0;
    place= 0;
}
thisnum2= thisnum;
i= place;
while(i >= 0) {
    numnum[i]= floor(thisnum2 / power(10, i));
    thisnum2-= numnum[i] * power(10, i);
    i--;
}
i= place;
while(i >= 0) {
    draw_set_color(255);
    draw_sprite(spr_digitalnumber , numnum[i], x + 92 - i * 9, y + 34);
    i--;
}
if(finished == 1) {
    hspeed-= 0.5;
    if(x < -110) instance_destroy();
}


/*  */
