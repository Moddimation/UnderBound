btime--;
if(con == 1) {
    // obj_mainchara
    with(1570) scr_moveideal(3);
}
if(con == 2) {
    global.facing= myfacing;
    obj_mainchara.image_speed= 0;
    con= 3;
    alarm[4]= 10;
    if(room == 171 || room == 163) alarm[4]= 5;
}
if(con == 4) {
    fakegrav= 0.95;
    fakevspeed= 10;
    global.facing= myfacing;
    obj_mainchara.direction= mydirection;
    obj_mainchara.speed= 6;
    if(room == 163) obj_mainchara.speed= 4;
    con= 5;
    faceoff= -2;
    alarm[4]= 20;
    if(room == 171) {
        alarm[4]= 10;
        fakevspeed= 10;
        fakegrav= 1.8;
    }
    snd_play(snd_vaporized );
}
if(con == 5) {
    b= instance_create(x, y, obj_bouncersteam );
    b.speed= 7;
    b.direction= (90 + mydirection) / 2;
    if(mydirection < 300 && mydirection > 200) {
        b.direction= 180;
        b.speed= 2;
    }
    faceoff++;
    if(room == 171) faceoff++;
    if(floor(faceoff / 4) >= 1) {
        global.facing++;
        faceoff= 0;
    }
    if(global.facing > 3) global.facing= 0;
    fakevspeed-= fakegrav;
    obj_mainchara.y-= fakevspeed;
}
if(con == 6) {
    if(instance_exists(obj_rtile )) obj_rtile.faketime= 4;
    obj_mainchara.speed= 0;
    obj_mainchara.y= floor(obj_mainchara.y);
    con= 7;
    alarm[4]= 1;
}
if(con == 8) {
    if(mydirection == 180 || mydirection == 0)
        obj_mainchara.y= y - 15;
    obj_bouncetilecontoller.bounce= 2;
    alarm[1]= 20;
    global.phasing= 0;
    global.interact= 0;
    con= 0;
}
if(goldshift == 1 && gold == 1) event_user(2);


/*  */
