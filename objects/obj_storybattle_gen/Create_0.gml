skipper= 0;
ini_open("undertale.ini");
tale= ini_read_real("General", "Tale", 0);
ini_close();
if(tale > 0) skipper= 1;
off= 0;
activetimer= -6;
global.turntimer= 15;
global.myfight= -1;
global.mnfight= -1;
flowey= 0;
shake= 0;
if(scr_murderlv() < 16) {
    global.turntimer= 15;
    global.myfight= -1;
    global.mnfight= -1;
    global.hurtanim[0]= 0;
    global.hurtanim[1]= 0;
    global.hurtanim[2]= 0;
    global.monstertype[0]= 2;
    global.monstertype[1]= 2;
    global.monstertype[2]= 2;
    if(global.flag[450] == 0) {
        con= 5;
        m1= instance_create(100, 140, obj_froggit );
        m2= instance_create(450, 140, obj_froggit );
    }
    if(global.flag[450] == 1) {
        con= 10;
        m1= instance_create(100, 140, obj_whimsun );
        m2= instance_create(450, 140, obj_whimsun );
    }
    if(global.flag[450] == 2) {
        con= 15;
        m1= instance_create(80, 140, obj_moldsmal );
        m2= instance_create(270, 140, obj_moldsmal );
        m3= instance_create(470, 140, obj_moldsmal );
    }
    if(global.flag[450] == 3) {
        con= 25;
        m1= instance_create(100, 140, obj_migosp );
        m2= instance_create(450, 140, obj_migosp );
    }
    if(global.flag[450] == 4) {
        con= 30;
        m1= instance_create(80, 140, obj_vegetoid );
        m2= instance_create(270, 140, obj_vegetoid );
        m3= instance_create(470, 140, obj_vegetoid );
    }
    if(global.flag[450] == 5) {
        con= 40;
        m1= instance_create(100, 140, obj_loox );
        m2= instance_create(450, 140, obj_loox );
    }
    if(global.flag[450] == 6) {
        con= 50;
        m1= instance_create(50, 20, obj_snowdrake );
        m2= instance_create(450, 20, obj_snowdrake );
    }
    if(global.flag[450] == 7) {
        con= 60;
        m1= instance_create(70, 110, obj_icecap );
        m2= instance_create(260, 110, obj_icecap );
        m3= instance_create(460, 110, obj_icecap );
    }
    if(global.flag[450] == 8) {
        con= 70;
        m1= instance_create(80, 140, obj_woshua );
        m2= instance_create(270, 140, obj_woshua );
        m3= instance_create(470, 140, obj_woshua );
    }
    if(global.flag[450] == 9) {
        con= 80;
        m1= instance_create(80, 130, obj_shyren );
        m2= instance_create(270, 130, obj_shyren );
        m3= instance_create(470, 130, obj_shyren );
    }
    if(global.flag[450] == 10) {
        con= 90;
        m1= instance_create(80, 140, obj_dummymonster );
        m2= instance_create(270, 140, obj_dummymonster );
        m3= instance_create(470, 140, obj_dummymonster );
    }
    if(global.flag[450] == 11) {
        con= 100;
        global.monsterinstance[0]= instance_create(0, 20, obj_finalknight );
        obj_finalknight.myself= 1;
        global.monsterinstance[1]= instance_create(470, 80, obj_wizard );
        obj_wizard.myself= 1;
    }
    if(global.flag[450] == 12) {
        con= 110;
        global.monsterinstance[0]= instance_create(80, 118, obj_finalfroggit );
        global.monsterinstance[1]= instance_create(270, 118, obj_finalfroggit );
        global.monsterinstance[2]= instance_create(470, 118, obj_finalfroggit );
    }
    if(global.flag[450] == 13) {
        con= 120;
        global.monsterinstance[0]= instance_create(80, 140, obj_whimsalot );
        global.monsterinstance[1]= instance_create(270, 140, obj_whimsalot );
        global.monsterinstance[2]= instance_create(470, 140, obj_whimsalot );
    }
    if(global.flag[450] == 14) {
        con= 130;
        global.monsterinstance[0]= instance_create(80, 130, obj_astigmatism );
        global.monsterinstance[1]= instance_create(270, 130, obj_astigmatism );
        global.monsterinstance[2]= instance_create(470, 130, obj_astigmatism );
    }
    if(global.flag[450] == 15) {
        con= 140;
        m1= instance_create(80, 160, obj_moldsmal );
        m2= instance_create(270, 120, obj_loox );
        m3= instance_create(470, 140, obj_migosp );
    }
    if(global.flag[450] == 16) {
        con= 150;
        global.monsterinstance[0]= instance_create(40, 10, obj_pyrope );
        global.monsterinstance[1]= instance_create(200, 120, obj_vulkin );
        global.monsterinstance[2]= instance_create(430, 120, obj_vulkin );
    }
    if(global.flag[450] == 17) {
        con= 160;
        activetimer= -45;
        m1= instance_create(270, 120, obj_froggit );
    }
} else  {
    flowey= 1;
    shake= 0;
    global.faceemotion= 1;
    floweyx= 281;
    floweyy= 134;
    alarm[4]= 15;
    if(global.flag[450] == 0) con= 299;
    if(global.flag[450] == 1) con= 304;
    if(global.flag[450] == 2) con= 309;
    if(global.flag[450] == 3) con= 314;
    if(global.flag[450] == 4) con= 319;
    if(global.flag[450] == 5) con= 324;
    if(global.flag[450] == 6) con= 329;
    if(global.flag[450] == 7) con= 334;
    if(global.flag[450] == 8) con= 339;
    if(global.flag[450] == 9) con= 344;
    if(global.flag[450] == 10) con= 349;
    if(global.flag[450] == 11) con= 354;
    if(global.flag[450] == 12) con= 359;
    if(global.flag[450] == 13) con= 364;
    if(global.flag[450] == 14) con= 369;
    if(global.flag[450] == 15) con= 374;
    if(global.flag[450] == 16) con= 379;
    if(global.flag[450] == 17) {
        con= 389;
        global.faceemotion= 10;
    }
}

/* */
/*  */
