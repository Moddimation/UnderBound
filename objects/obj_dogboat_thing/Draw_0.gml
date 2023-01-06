if(myinteract == 1 && global.interact == 0) {
    global.interact= 1;
    rman.image_speed= 0.1;
    global.typer= 5;
    global.msc= 770;
    global.facechoice= 0;
    instance_create(0, 0, obj_dialoguer );
    myinteract= 2;
}
if(myinteract == 2 && !instance_exists(OBJ_WRITER )) {
    rman.image_speed= 0;
    rman.image_index= 0;
    if(con == 0) {
        myinteract= 0;
        global.interact= 0;
    } else  myinteract= 3;
}
if(reg == 1) {
    siner++;
    dogy= sin(siner / 10) * 1 + 1;
}
if(con == 0) {
    siner++;
    dogy= sin(siner / 10) * 1 + 1;
}
if(con == 0.1 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.image_speed= 0.25;
    con= 0.2;
}
if(con == 0.2) {
    global.phasing= 1;
    if(obj_mainchara.x < x + 54) {
        global.facing= 1;
        obj_mainchara.x+= 2;
    }
    if(obj_mainchara.x > x + 58) {
        global.facing= 3;
        obj_mainchara.x-= 2;
    }
    if(obj_mainchara.x >= x + 54 && obj_mainchara.x <= x + 58)
        con= 0.3;
}
if(con == 0.3) {
    global.phasing= 1;
    obj_mainchara.x= x + 56;
    depth= 960000;
    global.facing= 0;
    if(up == 0) {
        global.facing= 0;
        if(obj_mainchara.y < y + dogy - 8 + adjust)
            obj_mainchara.y+= 2;
        else  con= 0.4;
    }
    if(up == 1) {
        global.facing= 2;
        if(obj_mainchara.y > y + dogy - 8 + adjust)
            obj_mainchara.y-= 2;
        else  con= 0.4;
    }
}
if(con == 0.4) {
    global.facing= 3;
    con= 1.1;
    alarm[4]= 10;
    snapper= 1570;
}
if(con == 2.1) {
    con= 1;
    if(reg == 1) {
        con= 2;
        alarm[4]= 10;
    }
}
if(con == 1) {
    if(dogy > -10) dogy-= 0.5;
    else  {
        dogy= -10;
        con= 2;
        alarm[4]= 30;
    }
}
if(con == 3) {
    hspeed= -5;
    alarm[5]= 1;
    if(reg == 1) {
        hspeed= -2;
        alarm[5]= -1;
    }
    image_speed= 0.334;
    con= 4;
}
if(con == 4 && x < -80) {
    instance_create(0, 0, obj_unfader );
    con= 4.1;
    alarm[4]= 10;
}
if(con == 5.1) {
    instance_create(0, 0, obj_persistentfader );
    con= 99;
    global.entrance= 24;
    room_goto(316);
}
if(con == 6) {
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    __view_set( e__VW.XView, 0, 0 );
    x= 340;
    global.facing= 3;
    global.interact= 1;
    dogy= -10;
    alarm[5]= 1;
    if(reg == 1) {
        dogy= 0;
        hspeed= -2;
        alarm[5]= -1;
    }
    image_speed= 0.334;
    hspeed= -2;
    con= 7;
}
if(con == 7 && x < __view_get( e__VW.XView, 0 ) + 120) {
    con= 8;
    hspeed= 0;
}
if(con == 8) {
    con= 9;
    alarm[4]= 20;
}
if(con == 9) global.interact= 1;
if(con == 10) {
    global.msc= 0;
    global.typer= 5;
    rr= floor(random(31));
    if(global.flag[460] == 1) rr= 17;
    global.msg[0]= "* Tra la la^1.&* The waters are wild today^1.&* That\\'s good luck.../%%";
    global.msg[1]= "* Tra la la./%%";
    if(rr == 1)
        global.msg[0]= "* Tra la la^1.&* The waters are wild today^1.&* That\\'s bad luck.../%%";
    if(rr == 2) {
        global.msg[0]= "* Tra la la^1.&* Eat a mushroom everyday./";
        global.msg[1]= "* Why^1?&* Then I know you\\'re listening&  to me.../%%";
    }
    if(rr == 3)
        global.msg[0]= "* Tra la la^1.&* Remember to take a break&  every-so-often.../%%";
    if(rr == 4)
        global.msg[0]= "* Tra la la^1.&* Did you ever hear the old&  song coming from the sea?/%%";
    if(rr == 5)
        global.msg[0]= "* Tra la la^1.&* What\\'s inside an acorn^1?&* It\\'s really just a mystery./%%";
    if(rr == 6)
        global.msg[0]= "* Tra la la^1.&* Dancing on a boat is danger^1.&* But good exercise.../%%";
    if(rr == 7)
        global.msg[0]= "* Tra la la^1.&* I heard ASGORE has a favorite&  food./%%";
    if(rr == 8) {
        global.msg[0]= "* Tra la la^1.&* I heard spiders have a&  favorite food./";
        global.msg[1]= "* It\\'s spiders./%%";
    }
    if(rr == 9) {
        global.msg[0]= "* Tra la la^1.&* The piano plays the&  tinkling song./";
        global.msg[1]= "* Hmm..^1. tinkling./%%";
    }
    if(rr == 10) {
        global.msg[0]= "* Tra la la^1.&* You can never have too&  many hot-dogs./";
        global.msg[1]= "* ... sadly^1, that\\'s not true./%%";
    }
    if(rr == 11) {
        global.msg[0]= "* Tra la la^1.&* Don\\'t snoop behind people\\'s&  houses.../";
        global.msg[1]= "* You might be mistaken for&  a trash-can./%%";
    }
    if(rr == 12)
        global.msg[0]= "* Tra la la^1.&* The angel is coming..^1.&* Tra la la./%%";
    if(rr == 13)
        global.msg[0]= "* Hum hum hum^1. Hum hum hum^1.&* I\\'m having a little concert./%%";
    if(rr == 14) {
        global.msg[0]= "* Pet pet pet..^1.&* The neck stretches infinitely&  into the cosmos./";
        global.msg[1]= "* ... don\\'t worry about it./%%";
    }
    if(rr == 15) global.msg[0]= "* Ah,/%%";
    if(rr == 16) {
        global.msg[0]= "* Tra la la^1.&* What\\'s a game you can play&  with a dog?/";
        global.msg[1]= "* Asking for a friend.../%%";
    }
    if(rr == 17) {
        global.msg[0]= "* Tra la la^1.&* Temmie Village.../";
        global.msg[1]= "* ... the room before the&  darkening lantern room./%%";
    }
    if(rr == 18)
        global.msg[0]= "* Tra la la^1.&* Why don\\'t you sing with me^1.&* Tra la la./%%";
    if(rr == 19)
        global.msg[0]= "* Tra la la^1.&* Uh oh^1.&* Suddenly^1, feeling tropical.../%%";
    if(rr == 20) {
        global.msg[0]= "* Tra la la^1.&* Hmmm.../";
        global.msg[1]= "* I should have worn a few&  more pairs of pants today./%%";
    }
    if(rr == 21) {
        global.msg[0]= "* Tra la la^1.&* Hmmm.../";
        global.msg[1]= "* I should have worn a few&  million more pairs of pants&  today./%%";
    }
    if(rr == 22)
        global.msg[0]= "* Tra la la^1.&* Tri li li^1.&* Tre le le./%%";
    if(rr == 23) {
        weekday= current_weekday;
        day= "Error";
        if(weekday == 0) day= "Sunday";
        if(weekday == 1) day= "Monday";
        if(weekday == 2) day= "Tuesday";
        if(weekday == 3) day= "Wednesday";
        if(weekday == 4) day= "Thursday";
        if(weekday == 5) day= "Friday";
        if(weekday == 6) day= "Saturday";
        if(weekday == 7) day= "Sunday";
        global.msg[0]= "* Tra la la^1.&* Somewhere^1, it\\'s " + day + "^1.&* So be careful./%%";
    }
    if(rr == 24)
        global.msg[0]= "* Tra la la^1.&* If it\\'s hot or cold^1, you&  can count on me./%%";
    if(rr == 25)
        global.msg[0]= "* Tra la la^1.&* The water is very wet today./%%";
    if(rr == 26)
        global.msg[0]= "* Tra la la^1.&* The water is very dry today./%%";
    if(rr == 27)
        global.msg[0]= "* Tra la la^1.&* What\\'s my name^1?&* ... It doesn\\'t really matter./%%";
    if(rr == 28)
        global.msg[0]= "* Tra la la^1.&* Humans^1, monsters^1...&* Flowers./%%";
    if(rr == 29)
        global.msg[0]= "* Tra la la^1.&* Beware of the man who&  speaks in hands./%%";
    if(rr == 30)
        global.msg[0]= "* Tra la la^1.&* Beware of the man who came&  from the other world./%%";
    scr_regulartext();
    con= 11;
}
if(con == 11 && !instance_exists(OBJ_WRITER )) {
    con= 12;
    alarm[4]= 20;
}
if(con == 13) con= 15;
if(con == 15) {
    hspeed= -2;
    con= 16;
}
if(con == 16 && x < -80) {
    instance_create(0, 0, obj_unfader );
    con= 17;
    alarm[4]= 10;
}
if(con == 18) {
    instance_create(0, 0, obj_persistentfader );
    con= 19;
    global.entrance= 24;
    if(global.flag[459] == 1) room_goto(70);
    if(global.flag[459] == 2) room_goto(125);
    if(global.flag[459] == 3) room_goto(140);
    if(global.flag[459] == 0) room_goto(140);
}
if(con == 50) {
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    __view_set( e__VW.XView, 0, 0 );
    x= 340;
    global.facing= 3;
    global.interact= 1;
    dogy= -10;
    if(reg == 1) {
        dogy= 0;
        hspeed= -2;
    }
    image_speed= 0.2;
    hspeed= -2;
    con= 51;
}
if(con == 51 && x < xstart) {
    x= xstart;
    con= 52;
    hspeed= 0;
    image_speed= 0;
    image_index= 0;
    alarm[5]= -1;
}
if(con == 52) {
    global.phasing= 1;
    con= 54;
    alarm[4]= 20;
    if(sprite_index == 1527) con= 52.5;
}
if(con == 53.5) {
    if(dogy < 1) dogy+= 0.5;
    else  {
        con= 54;
        alarm[4]= 10;
    }
}
if(con == 55) {
    global.facing= 2;
    snapper= 9999999;
    if(up == 0) {
        obj_mainchara.y-= 2;
        obj_mainchara.image_speed= 0.25;
        if(obj_mainchara.y < y - 25) con= 56;
    }
    if(up == 1) {
        global.facing= 0;
        obj_mainchara.y+= 2;
        obj_mainchara.image_speed= 0.25;
        if(obj_mainchara.y > y + 25) con= 56;
    }
}
if(con == 56) {
    global.facing= 0;
    obj_mainchara.image_speed= 0;
    obj_mainchara.image_index= 0;
    con= 57;
    alarm[4]= 15;
}
if(con == 58) {
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.msg[0]= "* Come again some time^1.&* Tra la la./%%";
    scr_regulartext();
    con= 59;
    rman.image_speed= 0.1;
}
if(con == 59 && !instance_exists(OBJ_WRITER )) {
    depth= rman + 1;
    if(up == 1) depth= 960000;
    global.flag[460]++;
    global.phasing= 0;
    global.msc= 0;
    rman.image_speed= 0;
    rman.image_index= 0;
    con= 0;
    global.interact= 0;
    myinteract= 0;
}
adjust= 0;
if(sprite_index == 1527 && image_index < 1) adjust= 1;
draw_sprite(sprite_index, image_index, x, y + dogy);
cc+= 0.1;
draw_sprite(spr_dogboat_cover , cc, x, y);
rman.y= y + dogy - 17 + adjust;
rman.x= x + 20;
if(instance_exists(snapper)) {
    snapper.x= x + 56;
    snapper.y= y + dogy - 8 + adjust;
}
if(lapbg == 1) {
    tilex+= bgspeed;
    if(tilex > -20) {
        tile_layer_shift(1000000, -240, 0);
        tilex-= 240;
    }
    tile_layer_shift(1000000, bgspeed, 0);
}
__view_set( e__VW.YView, 0, 0 );


/*  */
