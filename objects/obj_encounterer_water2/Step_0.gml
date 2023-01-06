if(global.encounter > steps) {
    if(global.phasing == 0) {
        if(global.interact == 0) {
            script_execute(scr_steps , 640, 380, 18, 204);
            if(scr_murderlv() >= 10 && global.flag[27] == 0) script_execute(scr_steps , 120, 50, 18, 204);
            global.encounter= 0;
            battlegroup= floor(random(15));
            if(battlegroup < 15) global.battlegroup= 54;
            if(battlegroup < 10) global.battlegroup= 55;
            if(battlegroup < 4) global.battlegroup= 41;
            if(global.flag[358] == 0) global.battlegroup= 41;
            if(global.flag[358] == 1) global.battlegroup= 42;
            if(global.flag[358] == 2) global.battlegroup= 54;
            if(global.flag[358] == 3) global.battlegroup= 55;
            global.flag[358]++;
            if(alldead == 2) global.battlegroup= 19;
            if(alldead == 1) {
                global.flag[223]= 1;
                global.battlegroup= 19;
                alldead= 2;
            } else  instance_create(0, 0, obj_battleblcon );
        }
    } else  steps= 0;
}


/*  */
