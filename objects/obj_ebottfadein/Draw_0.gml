draw_set_alpha(1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, 16777215, image_alpha);
draw_set_font(2);
draw_set_color(16777215);
draw_text_transformed(180, 450, string_hash_to_newline("THE END"), 6, 10, 0);
if(n_timer == 7) n_alpha= 0;
if(n_timer >= 8 && n_timer <= 16) {
    n_alpha+= 0.25;
    if(n_alpha > 0.75) n_alpha= 0.75;
    event_user(0);
}
if(n_timer == 19) n_alpha= 0;
if(n_timer >= 24 && n_timer <= 30) {
    n_alpha+= 0.25;
    if(n_alpha > 0.75) n_alpha= 0.75;
    event_user(0);
}
if(n_timer == 40) n_alpha= 0;
if(n_timer >= 60) {
    if(n_alpha < 1) n_alpha+= 0.25;
    event_user(0);
}
if(n_timer >= 140) {
    caster_free(-3);
    room_goto(284);
}
caster_set_volume(s8, 1 - n_alpha);
caster_set_volume(noise, n_alpha);
audio_sound_gain(351, 0.9, 1);
if(n_active == 1) n_timer++;

