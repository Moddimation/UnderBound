if(global.encounter > steps && global.interact == 0) {
    script_execute(scr_steps , 190, 80, 20, 202);
    if(global.flag[6] == 1) script_execute(scr_steps , 100, 60, 20, 202);
    global.encounter= 0;
    if(global.flag[6] == 0) {
        battlegroup= random(2);
        if(battlegroup <= 1) global.battlegroup= 4;
        if(battlegroup > 1) global.battlegroup= 5;
    } else  {
        battlegroup= random(3);
        if(battlegroup <= 1) global.battlegroup= 126;
        if(battlegroup > 1) global.battlegroup= 125;
        if(battlegroup > 2) global.battlegroup= 120;
    }
    if(alldead == 2) global.battlegroup= 19;
    if(alldead == 1) {
        global.battlegroup= 19;
        alldead= 2;
    } else  instance_create(0, 0, obj_battleblcon );
}


/*  */
