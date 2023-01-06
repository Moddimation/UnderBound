if(guy.x > -32) {
    guy.x= -34;
    guy.hspeed= 0;
    talk[0]= 1;
}
if(talk[0] == 1 && shake == 0) {
    draw_sprite(spr_blconsm_shrt , 0, guy.x + 190, guy.y);
    draw_set_font(4);
    draw_set_color(0);
    draw_text(guy.x + 220, guy.y + 10, string_hash_to_newline("You can#do it!"));
}
if(guy2.x > -24) {
    guy2.x= -24;
    guy2.hspeed= 0;
    talk[1]= 1;
}
if(talk[1] == 1 && shake == 0) {
    draw_sprite(spr_blconsm_shrt , 0, guy2.x + 90, guy2.y);
    draw_set_font(4);
    draw_set_color(0);
    draw_text(guy2.x + 120, guy2.y + 10, string_hash_to_newline("Ribbit."));
}
if(guy3.x > -24) {
    guy3.x= -24;
    guy3.hspeed= 0;
    talk[2]= 1;
}
if(talk[2] == 1 && shake == 0) {
    draw_sprite(spr_blconsm_shrt , 0, guy3.x + 130, guy3.y);
    draw_set_font(4);
    draw_set_color(0);
    draw_text(guy3.x + 160, guy3.y + 10, string_hash_to_newline("You\\'ve#GOT to#win!"));
}
if(guy4.y < room_height - 60) {
    guy4.y= room_height - 60;
    guy4.vspeed= 0;
}
if(guy_r.x < room_width - 80) {
    guy_r.x= room_width - 80;
    guy_r.hspeed= 0;
    talk_r[0]= 1;
}
if(talk_r[0] == 1 && shake == 0) {
    draw_sprite(spr_blconsm2_shrt , 0, guy_r.x - 113, guy_r.y);
    draw_set_font(4);
    draw_set_color(0);
    draw_text(guy_r.x - 88, guy_r.y + 10, string_hash_to_newline("We\\'re#with you#too!"));
}
if(guy_r2.x < room_width - 90) {
    guy_r2.x= room_width - 90;
    guy_r2.hspeed= 0;
    talk_r[1]= 1;
}
if(talk_r[1] == 1 && shake == 0) {
    draw_sprite(spr_blconsm2_shrt , 0, guy_r2.x - 113, guy_r2.y);
    draw_set_font(4);
    draw_set_color(0);
    draw_text(guy_r2.x - 88, guy_r2.y + 10, string_hash_to_newline("C\\'mon,#you got#this!"));
}
if(guy_r3.x < room_width - 90) {
    guy_r3.x= room_width - 90;
    guy_r3.hspeed= 0;
    talk_r[2]= 1;
}
if(talk_r[2] == 1 && shake == 0) {
    draw_sprite(spr_blconsm2_shrt , 0, guy_r3.x - 113, guy_r3.y);
    draw_set_font(4);
    draw_set_color(0);
    draw_text(guy_r3.x - 88, guy_r3.y + 10, string_hash_to_newline("La la#la la!"));
}
if(guy_r4.x < room_width - 90) {
    guy_r4.x= room_width - 90;
    guy_r4.hspeed= 0;
}
if(shake > 0) {
    shake+= 0.02;
    i= 0;
    while(i < 8) {
        sh[i].x= shx[i] + random(shake) - random(shake);
        sh[i].y= shy[i] + random(shake) - random(shake);
        i++;
    }
}


/*  */
