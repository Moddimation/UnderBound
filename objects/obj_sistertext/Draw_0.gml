if(active == 1) {
    draw_set_color(16777215);
    draw_set_font(2);
    if(done == 2) hypefade-= 0.1;
    i= 0;
    while(i < amt) {
        draw_set_alpha(fade[i] * hypefade);
        draw_text(wherex[i] + sin(i + siner / 5) * 5, wherey[i] + cos(i + siner / 5) * 5, string_hash_to_newline(this_phrase));
        if(fade[i] < 1) fade[i]+= 0.2;
        i++;
    }
    draw_set_alpha(1);
}
siner++;
if(done == 1 && keyboard_multicheck_pressed(0))
    done= 2;
if(hypefade <= 0) instance_destroy();

/* */
/*  */
