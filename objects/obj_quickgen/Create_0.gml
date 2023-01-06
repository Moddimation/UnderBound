siner= 0;
if(global.flag[370] == 1) {
    firingspeed= 3;
    alarm[0]= 1;
    dmg= 9;
    siner= 0;
    global.turntimer= 45;
}
if(global.flag[370] == 2 || global.flag[370] == 3) {
    global.turntimer= 55;
    i= 0;
    while(i < 3) {
        obj_fakeheart.x= global.idealborder[0] + 50;
        b= choose(1, 2);
        bb= instance_create(550 + i * 100, global.idealborder[2], obj_bluelaser_b );
        bb.blue= b;
        bb.hspeed= -12;
        i++;
    }
}

/* */
/*  */
