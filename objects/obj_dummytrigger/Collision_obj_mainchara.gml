if(global.interact == 0 && con == 0) {
    global.interact= 1;
    con= 1;
    shock= caster_load("music/dununnn.ogg");
    predummy= caster_load("music/predummy.ogg");
    dummy= 1055;
    obj_mainchara.cutscene= 1;
    curview= __view_get( e__VW.YView, 0 );
}

