draw_set_font(1);
draw_set_color(16777215);
if(obj_questionasker.phase > 2) {
    draw_set_color(65535);
    if(obj_questionasker.answer == -1) visible= 0;
}
if(answered == 1) {
    if(obj_questionasker.correct == ano) draw_set_color(32768);
    else  draw_set_color(255);
}
atext2= atext;
if(atext == "special1") {
    if(qno == 0) atext2= string(obj_questionasker.mettamt + 11);
    if(qno == 1) atext2= string(obj_questionasker.mettamt + 6);
    if(qno == 2) atext2= string(obj_questionasker.mettamt + 8);
    if(qno == 3) atext2= string(obj_questionasker.mettamt + 10);
}
sizefactor= 1;
txtsize= string_length(atext2);
if(txtsize > 11) sizefactor= 11 / txtsize;
if(qno == 0 || qno == 2) {
    draw_set_halign(2);
    draw_text_transformed(x - 20 + random(2), y + random(2), string_hash_to_newline(atext2), sizefactor, 1, 1);
}
if(qno == 1 || qno == 3)
    draw_text_transformed(x + 60 + random(2), y + random(2), string_hash_to_newline(atext2), sizefactor, 1, 1);
if(answered == 0 && obj_questionasker.phase == 2)
    draw_sprite(sprite_index, 0, x, y);
draw_set_halign(0);

