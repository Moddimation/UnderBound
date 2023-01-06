if(global.encounter > steps && global.phasing == 0) {
    if(global.interact == 0) {
        script_execute(scr_steps , 840, 680, 16, 203);
        global.encounter= 0;
        global.battlegroup= 135;
        if(alldead == 2) global.battlegroup= 19;
        if(alldead == 1) {
            global.flag[222]= 1;
            global.battlegroup= 19;
            alldead= 2;
        } else  {
            instance_create(0, 0, obj_battleblcon );
            instance_destroy();
        }
    } else  steps= 0;
}


/*  */
