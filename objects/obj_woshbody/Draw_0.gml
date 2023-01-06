anim+= 0.2;
draw_sprite_ext(spr_woshhanger , image_index, x, y, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_woshduck , image_index, x + 46, y + ducky, 2, 2, 0, 16777215, 1);
draw_sprite_part_ext(264, 0, 0, 0, 16, 28, 40 + x - sin(anim / 2) * 4, wy, 2, 2, 16777215, 1);
draw_sprite_part_ext(264, 0, 0, 0, 16, 28, 40 + x + sin(anim / 2) * 4, wy, 2, 2, 16777215, 1);
draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_woshtail , anim, x + 88, y + 50, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_woshhead , image_index, x, y + hy, 2, 2, 0, 16777215, 1);
if(bull == 0)
    draw_sprite_ext(spr_woshface , image_index, x, y + hy + fy, 2, 2, 0, 16777215, 1);
if(bull == 1)
    draw_sprite_ext(spr_woshface_bull , image_index, x, y + hy + fy, 2, 2, 0, 16777215, 1);
if(con > 0) {
    if(con == 1) {
        if(instance_exists(OBJ_WRITER )) {
            // OBJ_WRITER
            with(782) instance_destroy();
        }
        global.myfight= 2;
        global.mnfight= 9;
    }
    if(con == 2) {
        bull= 1;
        obj_aaronbody.bull= 1;
        obj_aaronbody.sprite_index= spr_aaronbody_bull ;
        aaron= 289;
        con= 3;
        alarm[4]= 45;
    }
    if(con == 4) {
        global.typer= 33;
        global.msc= 0;
        global.msg[0]= "... what the&HECK is that&music?/%%";
        scr_blcon(x + 80, y, 0);
        con= 5;
    }
    if(con == 5 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "I-I DUNNO^1, DUDE&BUT IT\\'S SPOOKIN&ME OUT ; )/%%";
        with(aaron) scr_blcon(x + 80, y, 0);
        obj_aaronbody.shake= 2;
        con= 6;
    }
    if(con == 6 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "... this is worse&than Shyren./%%";
        scr_blcon(x + 80, y, 0);
        con= 7;
    }
    if(con == 7 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "No way^1, Shyren is&way less scary&; )/%%";
        with(aaron) scr_blcon(x + 80, y, 0);
        obj_aaronbody.shake= 2;
        con= 8;
    }
    if(con == 8 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "... if you\\'re so&scared^1, why do&you keep winking?/%%";
        scr_blcon(x + 80, y, 0);
        con= 9;
    }
    if(con == 9 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "THESE ARE WINKS&OF FEAR ; )/%%";
        with(aaron) scr_blcon(x + 100, y, 0);
        obj_aaronbody.shake= 3;
        con= 10;
    }
    if(con == 10 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "Forget it^1.&This beat is&too.../";
        global.msg[1]= "... filthy./%%";
        scr_blcon(x + 80, y, 0);
        con= 11;
    }
    if(con == 11 && !instance_exists(OBJ_WRITER )) {
        hspeed= 4;
        global.msg[0]= "Wosh^1! Wait^1!&Don\\'t leave me ; )/";
        global.msg[1]= "Is this creepy&music my punishment&for being creepy?&; )/";
        global.msg[2]= "Please..^1. stop..^1.&I\\'ll never creep&again ; )/%%";
        obj_aaronbody.shake= 3;
        with(aaron) scr_blcon(x + 80, y, 0);
        con= 13;
    }
    if(con == 13 && !instance_exists(OBJ_WRITER )) {
        obj_aaronbody.vspeed= -8;
        global.msg[0]= "Wahhhhh!!!!!&; )^3 %%";
        obj_aaronbody.shake= 0;
        with(aaron) scr_blcon(x + 80, y, 0);
        con= 14;
        alarm[4]= 90;
    }
    if(con == 15) {
        global.flag[95]= 1;
        instance_create(0, 0, obj_unfader );
        con= 16;
        alarm[4]= 8;
    }
    if(con == 17) room_goto(global.currentroom);
}

/* */
/*  */
