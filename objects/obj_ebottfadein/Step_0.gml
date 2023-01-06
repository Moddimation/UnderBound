timer++;
if(timer < 150 && image_alpha < 1)
    image_alpha+= 0.02;
if(timer == 150) {
    sepiaebott= instance_create(x, y, obj_npc_marker );
    sepiaebott.image_xscale= 2;
    sepiaebott.image_yscale= 2;
    sepiaebott.image_speed= 0;
    sepiaebott.image_index= 1;
    sepiaebott.sprite_index= sprite_index;
    sepiaebott.depth= depth + 10;
    sepiaebott.visible= 1;
}
if(timer >= 150 && timer <= 250)
    image_alpha-= 0.01;
if(timer >= 300 && timer <= 700) {
    offer++;
    if(offer == 4) {
        __view_set_pp( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + 1 );
        offer= 0;
    }
}
if(timer == 560) n_active= 1;
n_index++;


/*  */
