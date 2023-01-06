if(lv == 1) {
    hspeed= 5;
    amount++;
    amt= 20;
    i= 0;
    while(i < amt) {
        fr= instance_create(x, y, obj_genericfire );
        fr.direction= i * 360 / amt + baseang;
        fr.speed= 3;
        fr.friction= -0.15;
        fr.image_xscale= 2;
        fr.image_yscale= 2;
        i++;
    }
    alarm[0]= 8;
    if(amount > maxamount) alarm[0]= -1;
}
if(lv == 2) {
    hspeed= 6;
    amount+= 1.2;
    amt= 22;
    baseang+= 1.5;
    i= 0;
    while(i < amt) {
        fr= instance_create(x, y, obj_genericfire );
        fr.direction= i * 360 / amt + baseang;
        fr.speed= 3.5;
        fr.friction= -0.17;
        fr.image_xscale= 2;
        fr.image_yscale= 2;
        i++;
    }
    alarm[0]= 7;
    if(amount > maxamount) alarm[0]= -1;
}
if(lv == 3) {
    hspeed= 8;
    amount+= 1.2;
    amt= 22;
    baseang+= 2;
    i= 0;
    while(i < amt) {
        fr= instance_create(x, y, obj_genericfire );
        fr.direction= i * 360 / amt + baseang;
        fr.speed= 12;
        fr.friction= 0.06;
        fr.image_xscale= 2;
        fr.image_yscale= 2;
        i++;
    }
    alarm[0]= 6;
    if(amount > maxamount) alarm[0]= -1;
}


/*  */
