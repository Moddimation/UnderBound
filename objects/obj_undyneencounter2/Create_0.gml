cn= 0;
active= 0;
if(global.plot < 110) {
    undyne= instance_create(-40, 90, obj_undynea_actor );
    mkid= instance_create(360, 100, obj_mkid_actor );
    undyne.dsprite= 1436;
    undyne.sprite_index= spr_undyne_starkd ;
    active= 1;
}

/* */
/*  */
