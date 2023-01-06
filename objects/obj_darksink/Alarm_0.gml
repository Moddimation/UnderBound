myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
dont= 0;
global.msg[0]= "* Error./%%";
if(how_bad_me_key == 0) {
    if(wcon == 0 && global.flag[486] != 2) {
        global.msg[0]= "* (You turned on the sink.)/%%";
        if(global.flag[486] == 13)
            global.msg[0]= "* (You really like to wash&  your hands.)/%%";
        caster_stop(water);
        caster_loop(water, 0.6, 2.2);
        global.flag[486]++;
        wcon= 1;
    } else  {
        if(wcon == 1) {
            global.msg[0]= "* (You turned off the sink.)/%%";
            caster_stop(water);
            wcon= 0;
        } else  {
            if(global.flag[486] == 2 && global.flag[481] == 0) {
                // obj_mainchara
                with(1570) uncan= 1;
                dont= 1;
                depth-= 3;
                global.msg[0]= "* (You turned on the sink.)/%%";
            }
        }
    }
} else  {
    how_bad_me_key= 0;
    global.msg[0]= "* (There\\'s a red key lying&  in the sink.)/";
    global.msg[1]= "* (You took it and put it&  on your keychain.)/%%";
    global.flag[487]= 0;
    global.flag[481]= 2;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
