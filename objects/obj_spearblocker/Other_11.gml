if(instance_exists(obj_greenspeargen )) {
    // obj_greenspeargen
    with(264) instance_destroy();
}
gen= instance_create(0, 0, obj_greenspeargen );
if(instance_exists(gen)) gen.rating= rating;
i= 0;
if(lesson == -51) {
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 2, 0);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
    scr_sr(4, 0, 1, 1.4);
}
if(lesson == -50) {
    scr_sr(3, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
}
if(lesson == -40) {
    repeat(15)  scr_sr(4, 0, 0, 2);
    gen.dmg= 1;
    dmg= 1;
}
if(lesson == -39) {
    rating= 12;
    repeat(12)  scr_sr(4, 0, 0, 1.2);
    gen.dmg= 1;
    dmg= 1;
    gen.rating+= 2;
    global.turntimer= 300;
}
if(lesson == -38) {
    scr_sr(0, 0, 0, 0.8);
    scr_sr(1, 0, 0, 0.8);
    scr_sr(2, 0, 0, 0.8);
    scr_sr(3, 0, 0, 0.8);
    scr_sr(0, 0, 0, 0.8);
    scr_sr(1, 0, 0, 0.8);
    scr_sr(2, 0, 0, 0.8);
    scr_sr(3, 0, 0, 0.8);
    gen.rating= 16;
    global.turntimer= 300;
    gen.dmg= 1;
    dmg= 1;
}
if(lesson == -37) {
    global.turntimer= 300;
    scr_sr(0, 0, 0, 0.5);
    scr_sr(1, 0, 0, 0.5);
    scr_sr(0, 0, 0, 0.5);
    scr_sr(1, 0, 0, 0.5);
    scr_sr(1, 0, 0, 0.5);
    scr_sr(0, 0, 0, 0.5);
    scr_sr(0, 0, 0, 0.5);
    scr_sr(1, 0, 0, 0.5);
    gen.rating= 20;
    gen.dmg= 1;
    dmg= 1;
}
if(lesson >= -36 && lesson < -25) {
    global.turntimer= 300;
    gen.rating= 34;
    repeat(3)  scr_sr(3, 0, 1, 0.25);
    gen.dmg= 1;
    dmg= 1;
}
if(lesson == -5) {
    scr_sr(3, 0, 2, 0.5);
    scr_sr(3, 0, 2, 0.5);
    scr_sr(3, 0, 6.5, 0.5);
    scr_sr(1, 0, 0, 1.6);
    scr_sr(2, 0, 0, 1.6);
    scr_sr(0, 0, 0, 1.6);
    scr_sr(3, 0, 0, 1.6);
    scr_sr(0, 0, 0, 1.6);
    scr_sr(2, 0, 0, 1.6);
    scr_sr(1, 0, 0, 1.6);
    scr_sr(2, 0, 0, 1.6);
    scr_sr(0, 0, 0, 1.6);
    scr_sr(3, 0, 0, 1.6);
}
if(lesson == -6) {
    scr_sr(0, 0, 0, 1.8);
    scr_sr(1, 0, 0, 1.8);
    scr_sr(0, 0, 0.5, 1.8);
    scr_sr(0, 0, 0, 1.8);
    scr_sr(1, 0, 0, 1.8);
    scr_sr(1, 0, 0, 1.8);
    scr_sr(0, 0, 0, 1.8);
    scr_sr(1, 0, 0.5, 1.8);
    scr_sr(1, 0, 0, 1.8);
    scr_sr(0, 0, 0, 1.8);
    scr_sr(1, 0, 0, 2);
    scr_sr(0, 0, 0, 2);
    scr_sr(1, 0, 0, 2);
    scr_sr(0, 0, 0, 2);
}
if(lesson == -7) {
    repeat(18)  scr_sr(4, 0, 0, 0.4);
    refuse= 1;
}
if(lesson == -8) {
    scr_sr(3, 0, 0, 1);
    scr_sr(0, 0, 0, 1.8);
    scr_sr(2, 0, 0, 1);
    scr_sr(1, 0, 0, 1.8);
    scr_sr(0, 0, 0, 1);
    scr_sr(3, 0, 0, 0.5);
    scr_sr(2, 0, 0, 0.47);
    scr_sr(1, 0, 0, 1.8);
    scr_sr(0, 0, 0, 1);
}
if(lesson == -9) {
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0, 2);
    scr_sr(0, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0, 2);
    scr_sr(1, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 1, 2);
    scr_sr(0, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 1, 2);
    scr_sr(1, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
    scr_sr(3, 0, 0.5, 2);
}
if(lesson == -10) {
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(0, 1, 0, 0);
    scr_sr(3, 1, 0, 0);
    scr_sr(0, 1, 0, 0);
    scr_sr(3, 1, 0, 0);
    scr_sr(0, 1, 0, 0);
    scr_sr(3, 1, 0, 0);
    refuse= 1;
}
if(lesson == -11) {
    scr_sr(1, 1, 1.25, 2);
    scr_sr(3, 1, 1.25, 2);
    scr_sr(0, 1, 1.25, 2);
    scr_sr(2, 1, 2, 2);
    scr_sr(3, 0, 1.25, 2);
    scr_sr(0, 0, 1.25, 2);
    scr_sr(2, 0, 1.25, 2);
    scr_sr(1, 0, 2, 2);
    scr_sr(2, 1, 1.25, 2);
    scr_sr(0, 1, 1.25, 2);
    scr_sr(1, 1, 1.25, 2);
    scr_sr(3, 1, 1.25, 2);
}
if(lesson == -12) {
    repeat(2)  {
        scr_sr(0, 0, 0, 1.3);
        scr_sr(1, 0, 0, 1.3);
        scr_sr(3, 0, 0.1, 1.3);
        scr_sr(2, 1, 2.2, 1.3);
        scr_sr(0, 0, 0, 1.3);
        scr_sr(1, 0, 0, 1.3);
        scr_sr(2, 0, 0.1, 1.3);
        scr_sr(3, 1, 2.2, 1.3);
    }
}
if(lesson == -13) {
    scr_sr(0, 0, 0, 1.5);
    scr_sr(0, 1, 2, 1.5);
    scr_sr(2, 0, 0, 1.5);
    scr_sr(2, 1, 2, 1.5);
    scr_sr(1, 0, 0, 1.5);
    scr_sr(1, 1, 2.2, 1.5);
    scr_sr(3, 0, 0, 1.5);
    scr_sr(3, 1, 2, 1.5);
    scr_sr(0, 0, 0, 1.5);
    scr_sr(0, 1, 2, 1.5);
    scr_sr(2, 0, 0, 1.5);
    scr_sr(2, 1, 2, 1.5);
    scr_sr(1, 0, 0, 1.5);
    scr_sr(1, 1, 2.2, 1.5);
}
if(lesson == -14) {
    repeat(24)  scr_sr(4, 0, 0, 0.3);
    refuse= 1;
}
if(lesson == 0) {
    scr_sr(0, 0, 1, 0);
    scr_sr(0, 0, 1, 0);
    scr_sr(0, 0, 0.5, 0);
    scr_sr(0, 0, 0.5, 0);
    scr_sr(0, 0, 1, 0);
    scr_sr(0, 2, 1, 0);
    scr_sr(0, 2, 1, 0);
    scr_sr(1, 2, 0, 0);
    scr_sr(1, 2, 0, 0);
}
if(lesson == 1) {
    repeat(3)  scr_sr(3, 0, 1, 0.5);
}
if(lesson == 2) {
    scr_sr(3, 0, 1, 0.625);
    scr_sr(3, 0, 1, 0.625);
    scr_sr(0, 0, 1, 0.625);
    scr_sr(0, 0, 1, 0.625);
    scr_sr(1, 0, 1, 0.625);
    scr_sr(1, 0, 1, 0.625);
}
if(lesson == 3) {
    scr_sr(0, 0, 0, 0.75);
    scr_sr(1, 0, 0, 0.75);
    scr_sr(0, 0, 0, 0.75);
    scr_sr(1, 0, 0, 0.75);
    scr_sr(1, 0, 0, 0.75);
    scr_sr(0, 0, 0, 0.75);
    scr_sr(0, 0, 0, 0.75);
    scr_sr(2, 0, 0, 0.75);
}
if(lesson == 4) {
    scr_sr(3, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0.5, 0);
    scr_sr(3, 0, 0.5, 0);
    scr_sr(3, 0, 0.5, 0);
    scr_sr(3, 0, 0.5, 0);
}
if(lesson == 5) {
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0.5, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(3, 0, 0.5, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
}
if(lesson == 6) {
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    refuse= 1;
}
if(lesson == 7 || lesson == 8) {
    scr_sr(3, 0, 1.2, 0);
    scr_sr(2, 0, 1.2, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(2, 0, 0.8, 0);
    scr_sr(3, 0, 0.8, 0);
    scr_sr(2, 0, 0.8, 0);
    scr_sr(3, 0, 0.8, 0);
}
if(lesson == 9) {
    rr= rating;
    if(rating >= 11) rr--;
    scr_sr(0, 0, 2, 3 / rr);
    scr_sr(3, 0, 1, 1.5);
    scr_sr(1, 0, 1, 1.5);
    scr_sr(2, 0, 1, 1.5);
    scr_sr(3, 0, 1, 1.5);
    scr_sr(1, 0, 1, 1.5);
    scr_sr(2, 0, 1, 1.5);
}
if(lesson == 10) {
    rr= 0;
    if(rating <= 11) rr= 0.5;
    scr_sr(0, 0, 0.1, 1);
    scr_sr(0, 0, 0.1, 1.5);
    scr_sr(0, 0, 2 + rr, 2);
    scr_sr(1, 0, 0.1, 1);
    scr_sr(1, 0, 0.1, 1.5);
    scr_sr(1, 0, 2 + rr, 2);
    scr_sr(2, 0, 1, 2);
    scr_sr(3, 0, 1, 2);
    scr_sr(2, 0, 1, 2);
    scr_sr(3, 0, 1, 2);
}
if(lesson == 11) {
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 2.2, 0);
    scr_sr(4, 0, 1, 1.5);
    scr_sr(4, 0, 1, 1.5);
    scr_sr(4, 0, 1, 1.5);
    scr_sr(4, 0, 2.2, 1.5);
    scr_sr(4, 0, 1, 2);
    scr_sr(4, 0, 1, 2);
    scr_sr(4, 0, 1, 2);
    scr_sr(4, 0, 1, 2);
    refuse= 1;
}
if(lesson == 12 || lesson == 13) {
    scr_sr(1, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(1, 1, 0, 0);
}
if(lesson == 14) {
    scr_sr(0, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(2, 1, 2, 0);
    scr_sr(2, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(3, 0, 0, 0);
    scr_sr(2, 1, 1, 0);
}
if(lesson == 15) {
    scr_sr(0, 0, 1, 1.6);
    scr_sr(2, 0, 1, 1.6);
    scr_sr(1, 0, 1, 1.6);
    scr_sr(3, 0, 1.6, 1.6);
    scr_sr(1, 1, 1.2, 0);
    scr_sr(3, 1, 1.2, 0);
    scr_sr(0, 1, 1.2, 0);
    scr_sr(2, 1, 1.2, 0);
}
if(lesson == 16) {
    scr_sr(1, 0, 0, 0);
    scr_sr(1, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(0, 0, 0, 0);
    scr_sr(2, 2, 3, 0);
    scr_sr(3, 2, 2, 0);
    scr_sr(2, 0, 3, 0);
    scr_sr(1, 0, 1, 2);
    scr_sr(0, 0, 1, 2);
}
if(lesson == 17) {
    scr_sr(4, 0, 0, 1.6);
    scr_sr(4, 0, 0, 1.6);
    scr_sr(4, 0, 0, 1.6);
    scr_sr(4, 1, 1.6, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(0, 2, 1, 0);
    scr_sr(4, 0, 0, 0);
}
if(lesson == 18) {
    repeat(10)  scr_sr(4, 0, 0, 2);
}
if(lesson == 19) {
    scr_sr(0, 0, 1, 0);
    scr_sr(0, 0, 1, 0);
    scr_sr(0, 0, 0.5, 0);
    scr_sr(0, 0, 0.5, 0);
    scr_sr(0, 0, 1, 0);
    scr_sr(0, 2, 1, 0);
    scr_sr(0, 2, 1, 0);
    scr_sr(1, 2, 0, 0);
    scr_sr(1, 2, 0, 0);
}
if(lesson == 20) {
    repeat(3)  {
        scr_sr(1, 1, 1.25, 1.5);
        scr_sr(3, 1, 1.25, 1.5);
        scr_sr(0, 1, 1.25, 1.5);
        scr_sr(2, 1, 1.25, 1.5);
        refuse= 1;
    }
}
if(lesson > 20) {
    scr_sr(4, 0, 0, 1.6);
    scr_sr(4, 0, 0, 1.6);
    scr_sr(4, 0, 0, 1.6);
    scr_sr(4, 1, 2, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(4, 0, 0, 0);
    scr_sr(0, 2, 1, 0);
    scr_sr(4, 0, 0, 0);
}

/* */
/*  */
