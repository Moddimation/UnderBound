con= 1;
if(global.plot > 193) {
    instance_destroy();
    exit;
} else  {
    if(global.plot >= 192) {
        sl= instance_create(140, 840, obj_solidwide );
        sl2= instance_create(145, 710, obj_solidwide );
        brokemett= scr_marker(140, 700, 1658);
        with(brokemett) scr_depth();
        if(global.flag[425] == 0) {
            brokemett.sprite_index= spr_mett_o_upperbody_light ;
            brokemett.x+= 6;
            brokemett.y-= 3;
        }
        ii= instance_create(140, 700, obj_readable_room1 );
        ii= instance_create(160, 700, obj_readable_room1 );
        al2= instance_create(150, 710, obj_alphys_npc );
        al2.sprite_index= al2.utsprite;
        al2.fun= 1;
        con= 587458478547;
    } else  {
        sl= instance_create(140, 840, obj_solidwide );
        brokemett= scr_marker(140, 700, 1658);
        with(brokemett) scr_depth();
        if(global.flag[425] == 0) {
            brokemett.sprite_index= spr_mett_o_upperbody_light ;
            brokemett.x+= 6;
            brokemett.y-= 3;
        }
        ii= instance_create(140, 700, obj_readable_room1 );
        ii= instance_create(160, 700, obj_readable_room1 );
        sl2= instance_create(145, 710, obj_solidwide );
        obj_mainchara.x= 150;
        obj_mainchara.y= 750;
        global.facing= 2;
        global.interact= 1;
        obj_mainchara.cutscene= 1;
        __view_set( e__VW.Object, 0, 1570 );
    }
    x_maroon= merge_color(0, 128, 0.35);
    exit;
}

/* */
/*  */
