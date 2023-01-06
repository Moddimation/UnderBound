if(blacker == 1) {
    draw_set_color(0);
    draw_rectangle(0, 240, 640, 480, 0);
}
if(con == 8 && (flasher == 1 || flasher == 2)) {
    if(flasher == 1) flashamt+= 0.2;
    if(flashamt > 2) {
        caster_stop(presong);
        caster_play(flashsound, 1, 1);
        flasher= 2;
        with(n) instance_destroy();
        with(n2) instance_destroy();
        cloud= 0;
        // obj_stagecloud
        with(404) instance_destroy();
        mb= 408;
        mb.sineron= 1;
        mb.myblend= 16777215;
        mb.myalpha= 1;
        blacker= 0;
    }
    if(flasher == 2) flashamt-= 0.4;
    if(flashamt < 0) {
        flasher= 0;
        con= 9;
    }
    draw_set_color(16777215);
    draw_set_alpha(flashamt);
    draw_rectangle(-1, -1, 700, 700, 0);
    draw_set_alpha(1);
}

