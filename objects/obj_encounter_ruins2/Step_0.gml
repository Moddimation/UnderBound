if(global.encounter > steps && global.interact == 0) {
    script_execute(scr_steps , 250, 230, 20, 202);
    global.encounter= 0;
    battlegroup= random(20);
    if(battlegroup <= 5) global.battlegroup= 4;
    if(battlegroup > 5) global.battlegroup= 5;
    if(battlegroup > 10) global.battlegroup= 7;
    if(battlegroup > 15) global.battlegroup= 6;
    if(battlegroup > 18) global.battlegroup= 9;
    if(global.flag[6] == 1) {
        if(battlegroup <= 5) global.battlegroup= 125;
        if(battlegroup > 5) global.battlegroup= 126;
        if(battlegroup > 10) global.battlegroup= 123;
        if(battlegroup > 15) global.battlegroup= 122;
        if(battlegroup > 18) global.battlegroup= 124;
    }
    if(alldead == 2) global.battlegroup= 19;
    if(alldead == 1) {
        global.battlegroup= 19;
        alldead= 2;
    } else  instance_create(0, 0, obj_battleblcon );
}


/*  */
