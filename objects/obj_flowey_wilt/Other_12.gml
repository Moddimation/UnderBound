obj_borderparent.visible= 1;
instance_create(memx, memy, obj_fakeheart );
fightbt2= instance_create(global.idealborder[0] + 50, global.idealborder[2] + 50, obj_anybt );
fightbt2.type= 2;
fightbt2.sprite_index= spr_fightbt ;
sparebt2= instance_create(global.idealborder[1] - 150, global.idealborder[2] + 50, obj_anybt );
sparebt2.type= 3;
sparebt2.sprite_index= spr_sparebt ;


/*  */
