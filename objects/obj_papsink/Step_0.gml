if(myinteract == 1) {
    if(obj_kitchenchecker.level == 0) {
        global.interact= 1;
        alarm[0]= 1;
        myinteract= 2;
    } else  {
        x-= 400;
        myinteract= 0;
        // obj_mainchara
        with(1570) {
            if(global.facing == 2 && collision_rectangle(x + 4, y + sprite_height - 5, x + sprite_width - 4, y + 5, 1368, 0, 1)) {
                interactedobject= collision_rectangle(x + 4, y + sprite_height - 5, x + sprite_width - 4, y + 8, 1368, 0, 1);
                if(interactedobject != -4) {
                    with(interactedobject) facing= 0;
                    with(interactedobject) script_execute(scr_interact );
                }
            }
        }
        x+= 400;
    }
}
if(myinteract == 3 && conversation == 0 && !instance_exists(mydialoguer)) {
    global.interact= 0;
    myinteract= 0;
}
if(conversation == 1 && !instance_exists(OBJ_WRITER )) {
    pap= 1025;
    caster_pause(global.currentsong);
    alarm[2]= 10;
    conversation= 2;
}
if(conversation == 3) {
    caster_play(437, 1, 1);
    image_index= 1;
    thedog= instance_create(x + 4, obj_mainchara.y - 20, obj_npc_marker );
    thedog.visible= 1;
    thedog.sprite_index= spr_tobydogeat_small ;
    thedog.depth= depth + 1;
    thedog.image_speed= 0.25;
    conversation= 4;
    alarm[2]= 30;
}
if(conversation == 5) {
    dogvolume= 1;
    caster_loop(dogsong, 1, 1);
    conversation= 5.1;
    alarm[2]= 30;
}
if(conversation == 6.1) {
    snd_play(snd_b );
    blcon= instance_create(obj_papyrusparent.x + 5, obj_papyrusparent.y - 12, obj_cosmeticblcon );
    conversation= 6;
    alarm[2]= 30;
}
if(conversation == 7) {
    with(blcon) instance_destroy();
    global.faceemotion= 1;
    global.facechoice= 4;
    global.msc= 0;
    alarm[2]= 15;
    conversation= 8;
}
if(conversation == 9) {
    thedog.sprite_index= spr_tobydogsurprise_small ;
    global.msg[0]= "WHAT!?!?/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 10;
}
if(conversation == 10 && !instance_exists(OBJ_WRITER )) {
    thedog.sprite_index= spr_tobydogscoot_small ;
    thedog.depth= 10000;
    thedog.vspeed= 5;
    global.msg[0]= "CATCH THAT&MEDDLING CANINE!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 9.5;
    alarm[2]= 20;
}
if(conversation == 10.5) {
    thedog.vspeed= 0;
    thedog.image_speed= 0;
    conversation= 10.6;
    alarm[2]= 20;
}
if(conversation == 11.6 && !instance_exists(OBJ_WRITER )) {
    thedog.vspeed= 4;
    thedog.hspeed= 1;
    thedog.image_speed= 0.25;
    obj_mainchara.facing= 0;
    global.facing= 0;
    obj_mainchara.vspeed= 3;
    obj_mainchara.image_speed= 0.2;
    dogvolume-= 0.04;
    if(dogvolume < 0.04) dogvolume= 0;
    caster_set_volume(dogsong, dogvolume);
    if(dogvolume == 0) {
        conversation= 12;
        caster_free(dogsong);
    }
}
if(conversation == 12) {
    obj_mainchara.vspeed= 0;
    obj_mainchara.image_speed= 0;
    conversation= 12.1;
    alarm[2]= 15;
}
if(conversation == 13.1) {
    global.msg[0]= "CURSES!!!/%%";
    tt= instance_create(0, 0, obj_dialoguer );
    tt.side= 0;
    conversation= 14;
}
if(conversation == 14 && !instance_exists(OBJ_WRITER )) {
    obj_sansdoor.image_index= 1;
    caster_play(437, 1, 1);
    obj_sansdoor.sans= 1;
    alarm[2]= 80;
    conversation= 15;
}
if(conversation == 16) {
    obj_sansdoor.image_index= 0;
    caster_play(436, 1, 1);
    conversation= 17;
    alarm[2]= 30;
}
if(conversation == 18) {
    caster_resume(global.currentsong);
    global.faceemotion= 1;
    global.msg[0]= "SANS!/";
    global.msg[1]= "STOP PLAGUING MY&LIFE WITH INCIDENTAL&MUSIC!!!/%%";
    tt= instance_create(0, 0, obj_dialoguer );
    tt.side= 0;
    conversation= 19;
}
if(conversation == 19 && !instance_exists(OBJ_WRITER )) {
    conversation= 0;
    myinteract= 0;
    global.flag[82]= 1;
    global.interact= 0;
}

/* */
/*  */
