draw_set_color(16777215);
draw_set_font(10);
minutes= 9999;
seconds= 99;
if(seconds == 60) seconds= 0;
if(seconds < 10) seconds= "0" + string(seconds);
draw_text(70, 60, string_hash_to_newline(name));
draw_text(140, 60, string_hash_to_newline("LV 9999"));
draw_text(210, 60, string_hash_to_newline(string(minutes) + ":" + string(seconds)));
draw_text(70, 80, string_hash_to_newline("My World"));
if(selected3 == 0) draw_set_color(65535);
else  draw_set_color(16777215);
draw_text(85, 110, string_hash_to_newline("Continue"));
if(selected3 == 1) draw_set_color(65535);
else  draw_set_color(16777215);
draw_text(175, 110, string_hash_to_newline("Restart"));
if(keyboard_check_pressed(39) && selected3 == 0)
    selected3= 1;
if(keyboard_check_pressed(37) && selected3 == 1)
    selected3= 0;
buffer++;
if(keyboard_multicheck_pressed(0) && selected3 == 0 && buffer > 20) {
    caster_stop(-3);
    room_goto_next();
}
if(keyboard_multicheck_pressed(0) && selected3 == 1 && buffer > 10)
    selected3= 0;


/*  */
