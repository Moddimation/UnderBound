if(t == 1) {
    obj_mainchara.image_speed= 0.25;
    if(vol > 0.06) {
        vol-= 0.04;
        caster_set_volume(global.currentsong, vol);
    } else  {
        vol= 0;
        caster_pause(global.currentsong);
    }
}
if(t == 4) {
    dogmeander= caster_load("music/dogmeander.ogg");
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "* What\\'s that smell^1?&* (Where\\'s that smell?)/";
    global.msg[1]= "* If you\\'re a smell^1...&* (... identify yoursmellf!)/%%";
    t= 5;
    instance_create(0, 0, obj_dialoguer );
}
if(t == 5 && !instance_exists(obj_dialoguer )) {
    caster_play(dogmeander, 1, 1.4);
    t= 6;
    with(dog1) path_start(path_mdog , 4, 0, path_action_stop );
    with(dog2) path_start(path_wdog , 4, 0, path_action_stop );
}
if(t == 6 && instance_exists(obj_mandog_actor ) && dog1.path_position == 1) {
    dog1.path_speed= 0;
    dog2.path_speed= 0;
    alarm[2]= 30;
    t= 7;
}
if(t == 8) {
    caster_free(dogmeander);
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Hmmm..^1.&* Here\\'s that weird smell.../";
    global.msg[1]= "* It makes me want to&  eliminate./";
    global.msg[2]= "* (... Eliminate YOU!)/%%";
    t= 9;
    instance_create(0, 0, obj_dialoguer );
}
if(t == 9 && !instance_exists(OBJ_WRITER )) {
    global.battlegroup= 25;
    global.flag[200]= 0;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    t= 10;
}
if(global.plot == 50 && t == 10) {
    global.interact= 1;
    if(global.flag[53] == 1) {
        global.plot= 51;
        global.interact= 0;
        with(dog1) instance_destroy();
        with(dog2) instance_destroy();
        instance_destroy();
        exit;
    } else  {
        alarm[2]= 11;
        t= 11;
    }
}
if(t == 11) global.interact= 1;
if(global.plot == 50 && t == 12) {
    global.mercy= 0;
    global.interact= 1;
    if(global.flag[53] == 0 || global.flag[53] == 2) {
        global.msg[0]= "* Dogs can pet other dogs??^1?&* (A new world has opened&  up for us...)/";
        global.msg[1]= "* Thanks^1, weird puppy!/%%";
        if(global.flag[53] == 2) {
            global.msg[0]= "* Weird smells can bring&  good things..^1.&* (Friendly fun fetch!)/";
            global.msg[1]= "* Thanks^1, weird smell^1!&* (It sure was fun to&  " + chr(ord("\"")) + "stick" + chr(ord("\"")) + " together!)/%%";
        }
        t= 14;
        scr_regulartext();
    }
}
if(t == 14 && !instance_exists(obj_dialoguer )) {
    vol= 99;
    dog1.vspeed= 4;
    dog2.vspeed= 4;
    alarm[2]= 40;
    t= 15;
}
if(t == 15 && vol < vol1) {
    vol+= 0.03;
    caster_set_volume(global.currentsong, vol);
}
if(t == 16) {
    global.interact= 0;
    global.plot= 51;
    instance_destroy();
}


/*  */
