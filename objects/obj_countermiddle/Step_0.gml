if(myinteract == 1 && global.interact == 0 && con == 0) {
    if(instance_exists(obj_mettaton_npc ) && global.facing == 0 && obj_mettaton_npc.sugar == 1 && obj_mettaton_npc.eggs == 1 && obj_mettaton_npc.milk == 1)
        con= 1;
    myinteract= 0;
}
if(con == 1) {
    global.interact= 1;
    con= 2;
    alarm[4]= 30;
    snd_play(snd_item );
    newx= obj_mainchara.x - 15;
    gg= instance_create(newx - 7, 374, obj_npc_marker );
    gg.visible= 1;
    gg.sprite_index= spr_eggcarton ;
    gg.depth= 3020;
    gg= instance_create(newx - 2, 370, obj_npc_marker );
    gg.visible= 1;
    gg.sprite_index= spr_mettflour ;
    gg.depth= 3010;
    gg= instance_create(newx + 1, 360, obj_npc_marker );
    gg.visible= 1;
    gg.sprite_index= spr_milkcarton ;
    gg.depth= 3000;
}
if(con == 3) {
    obj_mettaton_npc.image_speed= 0.25;
    global.typer= 27;
    global.msc= 0;
    global.facechoice= 0;
    global.msg[0]= "* PERFECT^1!&* GREAT JOB^1, BEAUTIFUL!/";
    global.msg[1]= "* WE\\'VE GOT ALL OF THE&  INGREDIENTS WE NEED TO BAKE&  THE CAKE!/";
    global.msg[2]= "\\\\W* \\\\YMILK\\\\W... &* \\\\YSUGAR\\\\W...&* \\\\YEGGS\\\\W.../";
    global.msg[3]= "* ... OH MY^1!&* WAIT A MAGNIFICENT MOMENT^1!&* HOW COULD I FORGET!!!/";
    global.msg[4]= "\\\\W* WE\\'RE MISSING THE MOST&  \\\\YIMPORTANT INGREDIENT\\\\W!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 4;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    // obj_cookshowevent
    with(1195) caster_stop(bossa);
    obj_cookshowevent.con= 20;
    con= 5;
}


/*  */
