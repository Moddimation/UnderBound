myinteract= 0;
siner= 0;
scr_depth();
if(scr_murderlv() >= 12 && room == 139) {
    ff= instance_create(180, 60, obj_kitchenforcefield );
    with(ff) image_xscale= 3;
    with(ff) image_yscale= 1;
    instance_destroy();
    exit;
} else  {
    d= 0;
    if(global.plot >= 136 && room == 139) {
        instance_destroy();
        exit;
    } else  {
        if(global.flag[402] == 1) {
            instance_destroy();
            exit;
        } else  {
            dbud= instance_create(x + 23, y, obj_npc_room );
            dbud.sprite_index= spr_royalguard_dragon_d ;
            instance_create(x - 17, y + 25, obj_solidexwide );
            tt= 0;
            exit;
        }
    }
}

/* */
/*  */
