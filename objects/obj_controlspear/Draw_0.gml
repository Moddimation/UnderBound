draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, 16777215, 1);
if(active == 1) {
    draw_set_color(16777215);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 180, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 235, 0);
    draw_set_color(0);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 183, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 232, 0);
    draw_set_color(16777215);
    draw_set_font(2);
    buffer= -1;
    if(everselect == 0)
        mytext= "* Aim with arrows and select with [Z].";
    if(everselect != 0) mytext= " ";
    if(everselect > 1) everselect--;
    if(active == 1) {
        if(keyboard_check(37) && image_angle < 170)
            image_angle+= 1.5;
        if(keyboard_check(39) && image_angle > 10)
            image_angle-= 1.5;
    }
    select= 0;
    draw_set_color(255);
    getdir= image_angle;
    xdir= lengthdir_x(300, getdir);
    ydir= lengthdir_y(300, getdir);
    col= -4;
    col2= collision_line(x, y, x + xdir, y + ydir, undyne, 0, 1);
    if(collision_line(x, y, x + xdir, y + ydir, teabox, 0, 1)) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        everselect= 3;
        select= teabox;
        mytext= "* Teabox - Blatantly correct choice.#* Select with [Z].";
    }
    if(collision_line(x, y, x + xdir, y + ydir, hotchocolate, 0, 1)) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        everselect= 3;
        select= hotchocolate;
        mytext= "* Hot Chocolate - Green cylinder.#* Select with [Z].";
    }
    if(collision_line(x, y, x + xdir, y + ydir, soda, 0, 1)) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        everselect= 3;
        select= soda;
        mytext= "* Soda - Sickly yellow liquid.#* Select with [Z].";
    }
    if(collision_line(x, y, x + xdir, y + ydir, sugar, 0, 1)) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        everselect= 3;
        select= sugar;
        mytext= "* Sugar - Goes in tea.#* Select with [Z].";
    }
    if(col2 == undyne) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        everselect= 3;
        select= undyne;
        mytext= "* Undyne.#* Select with [Z].";
    }
    if(image_angle >= 53 && image_angle <= 66) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        select= 9;
        everselect= 3;
        mytext= "* Fridge - Full of food.#* Select with [Z].";
    }
    if(image_angle >= 17 && image_angle <= 41) {
        if(everselect < 2 && !snd_isplaying(snd_squeak ))
            snd_play(snd_squeak );
        select= 10;
        everselect= 3;
        mytext= "* Sword - Acquired taste.#* Select with [Z].";
    }
    if(keyboard_multicheck_pressed(0) && active == 1 && buffer < 1 && select != 0) {
        global.facechoice= 5;
        global.msc= 0;
        global.faceemotion= 0;
        active= 2;
        if(select == undyne) {
            global.faceemotion= 1;
            global.msg[0]= "\\\\E1* ... are you.../";
            global.msg[1]= "\\\\E5* Hitting on me????/%%";
            if(sel_undyne > 0) {
                global.faceemotion= 5;
                global.msg[0]= "* ????????????????/%%";
            }
            sel_undyne++;
        }
        if(select == sugar) {
            global.faceemotion= 9;
            global.msc= 708;
            if(sel_sugar > 0) {
                global.msc= 0;
                global.msg[0]= "* The sugar is for&  tea^1, mmm\\'kay?/%%";
            }
            sel_sugar++;
        }
        if(select == soda) {
            global.faceemotion= 9;
            global.msg[0]= "* Oh^1, soda?/";
            global.msg[1]= "\\\\E4* Actually^1, even though&  you pointed to it^1,&  you don\\'t look happy./";
            global.msg[2]= "\\\\E0* Heh^1, that\\'s fine^1!&* I think soda\\'s gross^1,&  too!/";
            global.msg[3]= "\\\\E4* It rots your teeth..^1.&* It rots your mind.../";
            global.msg[4]= "\\\\E1* IT ROTS YOUR FIGHTING&  SPIRIT!/";
            global.msg[5]= "\\\\E9* ... huh^1?&* Why do I have it?/";
            global.msg[6]= "\\\\E8* .../%%";
            if(sel_soda > 0)
                global.msg[0]= "* What^1?&* You wanna throw the&  spear at it?/%%";
            sel_soda++;
        }
        if(select == hotchocolate) {
            global.faceemotion= 9;
            global.msg[0]= "* Oh^1, you want some&  hot chocolate?/";
            global.msg[1]= "\\\\E1* Wait^1, wait^1, I just&  remembered..^1.&* That container\\'s empty./";
            global.msg[2]= "\\\\E9* I stopped getting&  it because it was&  always a hassle.../";
            global.msg[3]= "\\\\E6* ASGORE kept getting&  marshmallows stuck in&  his beard./%%";
            if(sel_hotchocolate > 0)
                global.msg[0]= "* That container\\'s empty./%%";
            sel_hotchocolate++;
        }
        if(select == teabox) {
            global.faceemotion= 9;
            global.msg[0]= "\\\\E9* ... tea^1, huh^1?&* Coming right up!/%%";
            obj_undynedate_inside.con= 300;
            active= 3;
        }
        if(select == 9) {
            global.faceemotion= 2;
            global.msg[0]= "* The fridge!^1?&* You want to have&  the entire fridge!?/";
            global.msg[1]= "\\\\E1* No!/%%";
        }
        if(select == 10) {
            global.faceemotion= 3;
            global.msg[0]= "* Believe me^1, I would&  GLADLY give you your&  fill of swords./";
            global.msg[1]= "\\\\E9* If you weren\\'t my&  beloved houseguest!/%%";
        }
        gh= instance_create(0, 0, obj_dialoguer );
        if(select != sugar) gh.side= 1;
    }
    draw_set_color(16777215);
    draw_text(24, 186, string_hash_to_newline(mytext));
}
if(active == 2 && !instance_exists(OBJ_WRITER )) {
    active= 1;
    buffer= 12;
}


/*  */
