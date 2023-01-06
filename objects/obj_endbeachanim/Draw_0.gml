if(crack > 0)
    draw_sprite(spr_crackedbeach , crack - 1, x + 18, y + 13);
draw_sprite(sprite_index, floor(image_index), floor(x), floor(y));
draw_sprite(headsprite, head_index, floor(x + headx), floor(y - 23 + heady));
if(active == 1) timer++;
if(__view_get( e__VW.XView, 0 ) >= 0 && timer < 20)
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (2) );
if(timer == 0) {
    t1= instance_create(168, 15, obj_creditsword );
    t1.text= "UNDYNE";
    t1.text2= "Design by Toby#Armor by Temmie#Fashion help:#JN Wiedle & Gigi DG";
    t2= instance_create(168, 150, obj_creditsword );
    t2.text= "ALPHYS";
    t2.text2= "Design by Toby";
}
if(timer == 5) shuffle= 1;
if(timer == 25) shuffle= 0;
if(timer == 65) shuffle= 1;
if(timer == 85) shuffle= 0;
if(timer == 125) shuffle= 1;
if(timer == 145) shuffle= 0;
if(shuffle == 1) {
    x-= 0.5;
    image_index+= 0.2;
}
if(timer == 170) head_index= 1;
if(timer == 191 || timer == 193) headx++;
if(timer == 210 || timer == 212) headx--;
if(timer == 214 || timer == 216) {
    head_index= 2;
    headx--;
    heady++;
}
if(timer == 216) {
    heart= instance_create(x - 5, y - 10, obj_npc_marker );
    heart.image_speed= 0.25;
    heart.visible= 1;
    heart.sprite_index= spr_tinygayheart ;
    heart.vspeed= -0.5;
    alphys.image_index= 0;
    alphys.image_speed= 0;
}
if(timer == 226) alphys.sprite_index= spr_alphys_turnred ;
if(timer > 226 && timer < 246)
    heart.image_alpha-= 0.05;
if(timer == 247) {
    with(heart) instance_destroy();
}
if(timer == 246 || timer == 248) {
    head_index= 1;
    heady--;
    headx++;
}
if(timer >= 268 && timer <= 300) {
    head_index= 3;
    if(alphys.image_index < 16)
        alphys.image_index+= 0.5;
}
if(timer == 320) {
    alphys.sprite_index= spr_alphys_shock_fall ;
    alphys.x-= 2;
}
if(timer == 321) alphys.x-= 2;
if(timer == 322) alphys.x-= 2;
if(timer == 323) alphys.x-= 2;
if(timer == 324) alphys.x--;
if(timer == 325) alphys.x--;
if(timer == 326) alphys.x--;
if(timer == 327) alphys.x--;
if(timer >= 320 && timer <= 370)
    draw_sprite(spr_alphys_maxdamage , 0, alphys.x - 20, alphys.y - 20);
if(timer == 370) {
    headsprite= 2440;
    sprite_index= spr_undyne_torso_tap ;
    siner= 0;
}
if(timer >= 370 && timer <= 440) {
    siner++;
    heady= sin(siner / 2) * 0.8;
    image_index+= 0.25;
    head_index+= 0.25;
}
if(timer == 440) {
    image_index= 0;
    headsprite= 2441;
    sprite_index= spr_undyne_torso_hit ;
    alarm[0]= 8;
}
if(timer >= 440) {
    with(t1) fader= 1;
    with(t2) fader= 1;
    siner++;
    heady= sin(siner / 2) * 1.2 + 0.6;
    image_index+= 0.25;
    head_index+= 0.25;
}
if(timer >= 500) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (4) );
    if(__view_get( e__VW.XView, 0 ) >= 160) {
        global.cast_type= 2;
        room_goto(278);
    }
}


/*  */
