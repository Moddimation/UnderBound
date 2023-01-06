draw_set_color(16777215);
if(global.testhp <= 0) draw_text_transformed(100, 20, string_hash_to_newline("Game Under"), 2, 2, 0);
else  draw_text_transformed(100, 20, string_hash_to_newline("Big Wienener Zone."), 2, 2, 0);
draw_text(100, 80, string_hash_to_newline("Hall of failure."));
i= 26;
while(i < 57) {
    draw_text(50, 100 + (i - 26) * 12, string_hash_to_newline("Attack " + string(i) + " : " + string(global.failure[i])));
    i++;
}
draw_text(300, 240, string_hash_to_newline("TAke a screenshot#of this every time#for balancing purposes."));
draw_text(300, 360, string_hash_to_newline("Hold SPACEBAR to restart from#Attack 30"));

