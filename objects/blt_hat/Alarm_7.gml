pop= scr_monstersum();
if(instance_exists(obj_jerry ) && obj_jerry.ditch == 0)
    pop--;
if(pop == 1) {
    n= 3;
    if(global.hardmode == 1) {
        blt[3]= instance_create(x - 20, y + 30, blt_icicle );
        blt[4]= instance_create(x + 20, y + 30, blt_icicle );
        n+= 2;
    } else  {
        blt[0]= instance_create(x - 2, y + 30, blt_icicle );
        blt[1]= instance_create(x + 12, y + 30, blt_icicle );
        blt[2]= instance_create(x + 5, y + 30, blt_icicle );
    }
    i= 0;
    while(i < n) {
        blt[i].dmg= dmg - 1;
        i++;
    }
}
if(pop > 1) {
    blt[0]= instance_create(x + 3, y + 14, blt_icicle );
    blt[1]= instance_create(x + 6, y + 14, blt_icicle );
    blt[2]= instance_create(x + 9, y + 14, blt_icicle );
    i= 0;
    while(i < 3) {
        blt[i].dmg= dmg;
        i++;
    }
}
alarm[8]= 20;
image_index= 1;
image_speed= 0;



