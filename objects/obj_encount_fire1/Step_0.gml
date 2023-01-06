if(global.encounter > steps) {
    if(global.phasing == 0) {
        if(global.interact == 0) {
            script_execute(scr_steps , 340, 380, 40, 205);
            if(room == 144) script_execute(scr_steps , 1040, 680, 40, 205);
            global.encounter= 0;
            battlegroup= floor(random(15));
            if(battlegroup < 15) global.battlegroup= 50;
            if(battlegroup < 10) global.battlegroup= 78;
            if(battlegroup < 6) global.battlegroup= 77;
            if(global.flag[8] == 1 || global.flag[7] == 1) instance_destroy();
            if(global.flag[408] == 0) global.battlegroup= 51;
            if(global.flag[408] == 1) global.battlegroup= 50;
            if(global.flag[408] == 2) global.battlegroup= 52;
            if(global.flag[408] == 3) global.battlegroup= 77;
            if(global.flag[408] == 4) global.battlegroup= 78;
            global.flag[408]++;
            if(alldead == 2) global.battlegroup= 19;
            if(alldead == 1) {
                global.flag[224]= 1;
                global.battlegroup= 19;
                alldead= 2;
            } else  {
                instance_create(0, 0, obj_battleblcon );
                if(desto == 1) instance_destroy();
            }
        }
    } else  steps= 0;
}


/*  */
