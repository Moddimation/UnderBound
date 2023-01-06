dsprite= 1129;
usprite= 1131;
lsprite= 1126;
rsprite= 1127;
dtsprite= 1129;
utsprite= 1131;
ltsprite= 1126;
rtsprite= 1127;
myinteract= 0;
facing= 0;
direction= 270;
talkedto= 0;
image_speed= 0;
fun= 0;
con= 0;
bringback= 0;
buffer= 0;
if(scr_murderlv() < 10) {
    snail[0]= instance_create(690, 70, obj_npc_marker );
    snail[0].sprite_index= spr_snailyellow ;
    snail[1]= instance_create(690, 100, obj_npc_marker );
    snail[1].sprite_index= spr_snailred ;
    snail[2]= instance_create(690, 130, obj_npc_marker );
    snail[2].sprite_index= spr_snailblue ;
    i= 0;
    while(i < 3) {
        snail[i].depth= 4000;
        snail[i].image_speed= 0;
        snail[i].visible= 1;
        i++;
    }
}
blcontimer= 0;
encouragement= 0;
blconyes= 0;
snailtimer= 0;
snailsad= 0;
won= 0;
fun= 0;
con= 0;
bringback= 0;
if(global.flag[7] == 1) instance_destroy();
if(scr_murderlv() >= 10) instance_destroy();

/* */
/*  */
