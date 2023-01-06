if(global.flag[499] == 0) {
    global.cast_type= 0;
    global.flag[499]= 1;
    splitter= 0;
    if(splitter == 1) {
        ts= instance_create(0, 0, obj_timersplits );
        with(ts) {
            i= 0;
            while(i < 99) {
                split[i]= 0;
                i++;
            }
            splitno= 0;
        }
    }
    global.endsong[0]= caster_load("music/end/cast_1.ogg");
    global.endsong[1]= caster_load("music/end/cast_2.ogg");
    global.endsong[2]= caster_load("music/end/cast_3.ogg");
    global.endsong[3]= caster_load("music/end/cast_4.ogg");
    global.endsong[5]= caster_load("music/end/cast_5.ogg");
    global.endsong[6]= caster_load("music/end/cast_5.ogg");
    global.endsong[7]= caster_load("music/end/cast_6.ogg");
    global.endsong[8]= caster_load("music/end/cast_7.ogg");
    caster_play(global.endsong[0], 1, 1);
}
timer= 0;
alarm[0]= 2;
active= 0;
vol= 0.9;


/*  */
