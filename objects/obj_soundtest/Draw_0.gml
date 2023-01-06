if(con == 0) {
    draw_set_color(16777215);
    draw_set_font(1);
    draw_text(120, 50, string_hash_to_newline("Welcome to the Sound Test!#Listen to all your favorites.#Press Left or Right to select.#Press Z to play a song.#"));
    buffer++;
    if(buffer >= 20 && keyboard_multicheck_pressed(0)) {
        buffer= -10;
        con= 1;
        songno= 0;
        audio_play_sound(143, 50, 1);
    }
}
if(con == 1) {
    draw_set_color(16777215);
    draw_text_transformed(200, 50, string_hash_to_newline("SOUND TEST"), 2, 2, 0);
    if(songno == 0) {
        if(audio_is_playing(143)) draw_set_color(65535);
        else  {
            if(keyboard_multicheck_pressed(0) && gaster == 0) {
                audio_stop_all();
                audio_play_sound(143, 50, 1);
            }
        }
        draw_text(220, 200, string_hash_to_newline("Happy Town"));
    }
    if(songno == 1) {
        if(audio_is_playing(145)) draw_set_color(65535);
        else  {
            if(keyboard_multicheck_pressed(0) && gaster == 0) {
                audio_stop_all();
                audio_play_sound(145, 50, 1);
            }
        }
        draw_text(220, 200, string_hash_to_newline("Meat Factory"));
    }
    if(songno == 2) {
        if(audio_is_playing(146)) draw_set_color(65535);
        else  {
            if(keyboard_multicheck_pressed(0) && gaster == 0) {
                audio_stop_all();
                audio_play_sound(146, 50, 1);
            }
        }
        draw_text(220, 200, string_hash_to_newline("Trouble Dingle"));
    }
    if(songno == 3) {
        if(audio_is_playing(144)) draw_set_color(65535);
        else  {
            if(keyboard_multicheck_pressed(0) && gaster == 0) {
                gaster= 1;
                audio_stop_all();
                audio_play_sound(144, 50, 1);
            }
        }
        draw_text(220, 200, string_hash_to_newline("Gaster\\'s Theme"));
    }
    buffer++;
    if(keyboard_check_pressed(37) && buffer > 0 && active_l < 0) {
        if(gaster == 0) {
            songno++;
            if(songno > 3) songno= 0;
            active_l= 10;
        } else  {
            active_l= 2;
            songno--;
            if(songno < 0) songno= 3;
        }
    }
    if(keyboard_check_pressed(39) && buffer > 0 && active_r < 0) {
        active_r= 10;
        songno++;
        if(songno > 3) songno= 0;
        if(gaster == 1) active_r= 2;
    }
    active_l--;
    active_r--;
    draw_set_color(16777215);
    if(active_l > 0) draw_set_color(65535);
    draw_text(50, 200, string_hash_to_newline("<<"));
    draw_set_color(16777215);
    if(active_r > 0) draw_set_color(65535);
    draw_text(580, 200, string_hash_to_newline(">>"));
    if(gaster == 1) g_timer++;
    if(g_timer >= 600) {
        audio_stop_all();
        con= 3;
    }
}
if(con == 3) {
    draw_text(150, 50, string_hash_to_newline("Thanks for your feedback!#Be seeing you soon!"));
    seeya_timer++;
    if(seeya_timer >= 180) room_goto(47);
}

/* */
/*  */
