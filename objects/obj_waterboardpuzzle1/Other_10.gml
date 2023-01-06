block= instance_position(xx + 10, yy + 10, 820);
if(block != -4) {
    block.x= 0;
    block.y= 0;
}
newvar= instance_create(xx, yy, obj_npc_marker );
newvar.depth= 850000;
newvar.sprite_index= spr_bridgeseed ;
newvar.image_speed= 0;
newvar.image_index= 6;
newvar.visible= 1;
newvar.image_speed= 0;

/* */
/*  */
