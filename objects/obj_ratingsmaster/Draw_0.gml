draw_set_font(2);
draw_set_color(16777215);
siner++;
if(active == 1) {
    draw_text_transformed(x + 20 + sin(siner / 4), y + cos(siner / 4), string_hash_to_newline("RATINGS " + string(global.ratings)), 2 - sin(siner / 4) * 0.05, 2 - cos(siner / 4) * 0.05, 0);
    i= 0;
    while(i < 6) {
        if(rq_v[i] >= 0) {
            thisv= "+" + string(rq_v[i]);
            draw_set_color(65280);
        } else  {
            thisv= string(rq_v[i]);
            draw_set_color(255);
        }
        rq_s[i]+= 1 * (i + 2) / 2;
        if(rq_s[i] > 120) draw_set_alpha((170 - rq_s[i]) / 50);
        ww= 70 / (string_width(string_hash_to_newline(rq[i])) + 1);
        xx= 0;
        if(rq_s[i] < 10)
            xx= cos(rq_s[i]) * 21 / (rq_s[i] * 2 + 1);
        draw_text_transformed(x + 60 + xx, y + 140 + i * 12, string_hash_to_newline(rq[i]), 1 * ww, 1, 0);
        draw_text(x + 130 + xx, y + 140 + i * 12, string_hash_to_newline(thisv));
        draw_set_alpha(1);
        i++;
    }
    draw_set_color(16777215);
    draw_line_width(x + 10, y + 40, x + 10, y + 130, 3);
    draw_set_color(16777215);
    draw_line_width(x + 10, y + 130, x + 180, y + 130, 3);
    draw_set_color(65535);
    draw_line(x + 10, y + 55, x + 180, y + 55);
    ratingsy= global.ratings * 0.0075;
    draw_set_color(16776960);
    draw_line(x + 10, y + 130 - ratingsy, x + 180, y + 130 - ratingsy);
    i= 0;
    while(i < 9) {
        draw_set_color(16711935);
        rpy[i]= rp[i] * 0.0075;
        rpy[i + 1]= rp[i + 1] * 0.0075;
        draw_line_width(x + 10 + i * 20, y + 130 - rpy[i], x + 30 + i * 20, y + 130 - rpy[i + 1], 2);
        i++;
    }
}
if(checkhp > global.hp) {
    curtype= 1;
    if(boastmode == 1) {
        curtype= 2;
        boastmode= 0;
    }
    if(heel == 1) curtype= 3;
    event_user(0);
}
checkhp= global.hp;
if(boastmode == 1) {
    if(global.turntimer > 0 && global.mnfight == 2) {
        if(o_ob == 0) o_ob= 1;
        else  o_ob= 0;
        if(o_ob == 0) global.ratings++;
        if(o_ob == 1) global.ratings+= 2;
        if(instance_exists(obj_mettatonex ) && obj_mettatonex.turns >= 20)
            global.ratings+= 2;
    }
    if(global.myfight == 0 && global.mnfight == 0) boastmode= 0;
    if(instance_exists(obj_essaystuff )) boastmode= 0;
}
if(heel == 1 && global.myfight == 0 && global.mnfight == 0)
    heel= 0;
event_user(1);
if(novel_armor == 1) {
    curtype= 6;
    event_user(0);
    novel_armor= 0;
}
if(global.mnfight == 0 && global.myfight == 0) {
    timeloss++;
    o_o++;
    if(o_o > 3) o_o= 0;
    if(timeloss < 4000 && o_o == 0)
        global.ratings--;
}

/* */
/*  */
