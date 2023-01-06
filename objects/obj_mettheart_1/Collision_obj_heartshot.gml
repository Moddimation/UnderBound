snd_play(snd_mtt_hit );
event_user(0);
// other
with(-2) instance_destroy();
life-= 40;
if(life < 1 && movetype != 1) {
    // obj_blackbox_pl
    with(442) instance_destroy();
    // obj_mettlightning_pl
    with(433) instance_destroy();
    // obj_npc_marker
    with(1363) instance_destroy();
    // obj_mettfodder
    with(431) {
        flash= 5;
        type= 2;
    }
    // obj_kissybullet_pl
    with(434) instance_destroy();
    event_user(1);
}
global.ratings+= 20;

/* */
/*  */
