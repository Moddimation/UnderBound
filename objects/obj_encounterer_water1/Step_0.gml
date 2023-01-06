if(global.encounter > steps) {
    if(global.phasing == 0) {
        if(global.interact == 0) {
            script_execute(scr_steps , 340, 380, 18, 204);
            if(room == 90) script_execute(scr_steps , 1040, 380, 18, 204);
            global.encounter= 0;
            battlegroup= floor(random(15));
            if(battlegroup < 15) global.battlegroup= 43;
            if(battlegroup < 11) global.battlegroup= 53;
            if(battlegroup < 7) global.battlegroup= 40;
            if(battlegroup < 4) global.battlegroup= 54;
            if(global.flag[357] == 0) global.battlegroup= 40;
            if(global.flag[357] == 1) global.battlegroup= 43;
            if(global.flag[357] == 2) global.battlegroup= 53;
            global.flag[357]++;
            if(alldead == 2) global.battlegroup= 19;
            if(alldead == 1) {
                global.flag[223]= 1;
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
