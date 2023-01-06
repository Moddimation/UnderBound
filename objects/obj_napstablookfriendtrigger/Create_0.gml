global.flag[17]= 0;
if(global.flag[389] == 4) global.flag[389]= 5;
if(global.plot > 116) {
    instance_destroy();
    exit;
} else  {
    nap= instance_create(300, 60, obj_damndummy );
    nap.sprite_index= spr_napstablook_u ;
    nap.float= 1;
    image_xscale= 5;
    con= 0;
    tc= 0;
    exit;
}

/* */
/*  */
