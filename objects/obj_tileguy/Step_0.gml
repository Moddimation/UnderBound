if(moving == 1) {
    x+= 3;
    if(x >= prevx + 18) {
        x= prevx + 20;
        event_user(1);
    }
}
if(moving == 2) {
    y-= 3;
    if(y <= prevy - 18) {
        y= prevy - 20;
        event_user(1);
    }
}
if(moving == 3) {
    x-= 3;
    if(x <= prevx - 18) {
        x= prevx - 20;
        event_user(1);
    }
}
if(moving == 4) {
    y+= 3;
    if(y >= prevy + 18) {
        y= prevy + 20;
        event_user(1);
    }
}
if(moving == 0 && !keyboard_check(37) && !keyboard_check(39) && !keyboard_check(40) && !keyboard_check(38)) {
    image_index= 0;
    image_speed= 0;
}
if(moving == 1) {
    sprite_index= spr_maincharar ;
    image_speed= 0.334;
}
if(moving == 2) {
    sprite_index= spr_maincharau ;
    image_speed= 0.334;
}
if(moving == 3) {
    sprite_index= spr_maincharal ;
    image_speed= 0.334;
}
if(moving == 4) {
    sprite_index= spr_maincharad ;
    image_speed= 0.334;
}
if(keyboard_check(39) && moving == 0) {
    if(image_index == 0) image_index= 1;
    sprite_index= spr_maincharar ;
    checkx= x + 30;
    checky= y + 25;
    thistile= 0;
    event_user(0);
    nexttile= thistile;
    if(nexttile != 2) {
        moving= 1;
        prevx= x;
    }
}
if(keyboard_check(38) && moving == 0) {
    if(image_index == 0) image_index= 1;
    sprite_index= spr_maincharau ;
    checkx= x + 10;
    checky= y + 5;
    thistile= 0;
    event_user(0);
    nexttile= thistile;
    if(nexttile != 2 && nexttile != 0) {
        moving= 2;
        prevy= y;
    }
}
if(keyboard_check(37) && moving == 0) {
    if(image_index == 0) image_index= 1;
    sprite_index= spr_maincharal ;
    checkx= x - 10;
    checky= y + 25;
    thistile= 0;
    event_user(0);
    nexttile= thistile;
    if(nexttile != 2 && nexttile != 0) {
        moving= 3;
        prevx= x;
    }
}
if(keyboard_check(40) && moving == 0) {
    if(image_index == 0) image_index= 1;
    sprite_index= spr_maincharad ;
    checkx= x + 10;
    checky= y + 45;
    thistile= 0;
    event_user(0);
    nexttile= thistile;
    if(nexttile != 2 && nexttile != 0) {
        moving= 4;
        prevy= y;
    }
}
obj_mainchara.x= x;
obj_mainchara.y= y;

/* */
/*  */
