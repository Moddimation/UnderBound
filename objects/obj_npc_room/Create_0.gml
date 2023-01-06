myinteract= 0;
facing= 0;
direction= 270;
talkedto= 0;
image_speed= 0;
if(room == 225) sprite_index= spr_trashcan_tint ;
if(room == 90) sprite_index= spr_telescope ;
if(room == 89) sprite_index= spr_bench ;
if(room == 85) {
    sprite_index= spr_tutu ;
    if(global.flag[105] == 1) instance_destroy();
}
if(room == 94) sprite_index= spr_crystaltable ;
if(room == 98) {
    sprite_index= spr_balletshoes ;
    visible= 0;
    if(global.flag[106] == 1) instance_destroy();
}
if(room == 76) sprite_index= spr_signsock ;
if(room == 117) {
    sprite_index= spr_dummy ;
    if(global.flag[252] == 1) instance_destroy();
}
if(room == 122) {
    sprite_index= spr_snailr ;
    if(scr_murderlv() >= 9) instance_destroy();
}
if(room == 91 && global.plot < 110) instance_destroy();
if(room == 95) {
    sprite_index= spr_tonsildude ;
    if(scr_murderlv() >= 8) instance_destroy();
    y+= 10;
}
if(room == 149) {
    if(scr_murderlv() >= 12) instance_destroy();
    sprite_index= spr_skateboardgirl ;
    if(id == instance_find(object_index, 1))
        sprite_index= spr_fukufire ;
}
if(room == 151) {
    if(scr_murderlv() >= 12) instance_destroy();
    sprite_index= spr_businessdude ;
    if(id == instance_find(object_index, 1))
        sprite_index= spr_firecoffee ;
}
if(room == 146) {
    sprite_index= spr_frypan ;
    if(global.flag[110] == 1) instance_destroy();
}
if(room == 161) {
    sprite_index= spr_apron ;
    if(global.flag[111] == 1) instance_destroy();
}
if(room == 96) {
    sprite_index= spr_chestbox ;
    x+= 10;
    y+= 20;
}
if(room == 206 || room == 207) sprite_index= spr_trashcan ;
if(room == 238) {
    q= 0;
    ini_open("undertale.ini");
    fcheck1= ini_read_real("Flowey", "K", 0);
    fcheck2= ini_read_real("FFFFF", "E", 0);
    ini_close();
    if(global.flag[475] == 1) q= 1;
    if(fcheck1 == 1 && fcheck2 == 2) q= 1;
    if(q == 1) sprite_index= spr_flowey_empty ;
    else  instance_destroy();
}
if(room == 139 && y < 70) {
    if(scr_murderlv() >= 12) instance_destroy();
    sprite_index= spr_royalguard_dragon_d ;
    if(global.plot >= 136) instance_destroy();
}
if(room == 223) sprite_index= spr_trophy ;
if(room == 224) sprite_index= spr_presentbox ;
if(room == 251) {
    image_blend= 8421504;
    sprite_index= spr_dogbowl_empty ;
}
if(room == 164) sprite_index= spr_microwave ;
if(room == 170) {
    sprite_index= spr_donutscaredguy ;
    if(scr_murderlv() >= 12) instance_destroy();
}
if(room == 78) {
    sprite_index= spr_treadmill ;
    tread= scr_marker(x, y, 1623);
    with(tread) {
        scr_depth();
        image_speed= 0.2;
    }
    visible= 0;
}
if(room == 83) {
    sprite_index= spr_fishnpc_echo ;
    if(scr_murderlv() >= 8) instance_destroy();
}
if(room == 48) sprite_index= spr_amalgam_fridgenpc ;
if(room == 119) sprite_index= spr_mettex_npc ;
if(room == 266) sprite_index= spr_videogame ;
if(room == 184) {
    if(x > 500) sprite_index= spr_npc_oni ;
    if(x > 600) sprite_index= spr_npc_charles ;
    if(x > 780) sprite_index= spr_hotel_receptionist2 ;
    if(scr_murderlv() >= 12) instance_destroy();
}
if(room == 178) {
    sprite_index= spr_dresslion_a ;
    if(global.flag[7] == 1) sprite_index= spr_dresslion_b ;
    if(scr_murderlv() >= 12) instance_destroy();
    if(global.plot < 167) instance_destroy();
}
if(room == 183) {
    sprite_index= spr_diamond_recep ;
    if(scr_murderlv() >= 12) instance_destroy();
}
if(room == 158) {
    if(scr_murderlv() >= 12) instance_destroy();
    if(global.flag[67] == 1) instance_destroy();
    sprite_index= spr_vulkinnpc_hotdog ;
    if(x > 160) sprite_index= spr_hotdog_harpy ;
}
if(room == 128) {
    sprite_index= spr_temmie_egg ;
    if(scr_murderlv() >= 10) instance_destroy();
}

/* */
/*  */
