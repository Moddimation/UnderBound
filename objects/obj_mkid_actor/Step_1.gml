if(d == 0) scr_depth();
if(follow == 0) scr_npc_anim();
if(follow == 1) {
    tmp_idealy= obj_mainchara.y + 8;
    if(room == 106 && obj_mainchara.y >= 142)
        tmp_idealy= obj_mainchara.y - 2;
    if(room == 107 && obj_mainchara.y >= 906)
        tmp_idealy= obj_mainchara.y - 2;
    move_towards_point(obj_mainchara.x - 6, tmp_idealy, 2);
    image_speed= 0.25;
    follow= 2;
}
if(follow == 2 && collision_point(obj_mainchara.x - 6, obj_mainchara.y + 28, object_index, 0, 0)) {
    speed= 0;
    follow= 3;
}
if(follow == 2.1) {
    image_speed= 0.25;
    x-= 4;
    done= 0;
    if(sprite_index == rsprite || sprite_index == usprite)
        move_towards_point(obj_mainchara.x - 2, obj_mainchara.y + 8, 4);
    if(sprite_index == lsprite)
        move_towards_point(obj_mainchara.x + 6, obj_mainchara.y + 8, 4);
    if(sprite_index == dsprite)
        move_towards_point(obj_mainchara.x, obj_mainchara.y - 12, 4);
    move_towards_point(obj_mainchara.x, obj_mainchara.y, 4);
    if(collision_rectangle(obj_mainchara.bbox_left - 6, obj_mainchara.bbox_top - 4, obj_mainchara.bbox_right + 4, obj_mainchara.bbox_bottom + 4, object_index, 0, 0)) {
        speed= 0;
        follow= 3;
    }
    x+= 4;
}
alcovecheck= 0;
if(room == 106 && obj_mainchara.y < 100) {
    alcovecheck= 1;
    image_speed= 0;
    image_index= 0;
    sprite_index= usprite;
}
if(room == 106 && y > 156 && obj_mainchara.x > 1518 && x < 1520)
    x+= 3;
if(follow == 3 && alcovecheck == 0) {
    if(obj_mainchara.moving == 1) {
        if(distance_to_object(1570) > 12) {
            alarm[3]= 3;
            follow= 4;
        }
        if((distance_to_object(1570) > 4 || distance_to_object(1570) < 0) && distance_to_object(1570) < 10)
            closemove= 1;
    } else  {
        image_speed= 0;
        image_index= 0;
    }
    facing2= global.facing;
}
if(follow == 5) {
    scr_npc_watch(1);
    follow= 6;
    alarm[3]= 3;
}
if(follow == 7) follow= 2.1;
if(follow == 8) sprite_index= rtsprite;
if(follow == 9 && global.interact == 0) {
    global.interact= 1;
    scr_npc_watch(0);
    alarm[3]= 3;
    follow= 9.1;
}
if(follow == 10.1) {
    global.facechoice= 0;
    global.msg[0]= "* So^1, one time./";
    global.msg[1]= "* We had a school project where&  we had to take care of&  a flower./";
    global.msg[2]= "* The king ^1- we had to call him&  " + chr(ord("\"")) + "Mr. Dreemurr" + chr(ord("\"")) + " ^1- volunteered&  to donate his own flowers./";
    global.msg[3]= "* He ended up coming to school&  and teaching the class about&  responsibility and stuff./";
    global.msg[4]= "* That got me thinking.../";
    global.msg[5]= "* YO^1!&* How COOL would it be if&  UNDYNE came to school!?/";
    global.msg[6]= "* She could beat up ALL&  the teachers!!/%%";
    global.typer= 5;
    global.msc= 0;
    instance_create(x, y, obj_dialoguer );
    follow= 10;
}
if(follow == 10 && !instance_exists(OBJ_WRITER )) {
    sprite_index= dsprite;
    global.interact= 0;
    follow= 2.1;
}
if(follow == 99) {
    if(obj_mainchara.moving == 1) {
        x+= obj_mainchara.x - obj_mainchara.xprevious;
        y+= obj_mainchara.y - obj_mainchara.yprevious;
        facing= global.facing;
        image_speed= obj_mainchara.image_speed;
        if(facing == 0) sprite_index= dsprite;
        if(facing == 1) sprite_index= rsprite;
        if(facing == 2) sprite_index= usprite;
        if(facing == 3) sprite_index= lsprite;
    } else  {
        image_speed= 0;
        image_index= 0;
    }
}
if(instance_exists(obj_mainchara )) {
    xfer= obj_mainchara.x;
    yfer= obj_mainchara.y;
}

/* */
/*  */
