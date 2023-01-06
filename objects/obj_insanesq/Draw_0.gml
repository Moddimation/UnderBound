repeat(no)  {
    draw_set_color(16777215);
    draw_rectangle(targetx + random(w), targety + random(h), targetx + random(w), targety + random(h), 0);
    draw_set_color(0);
    draw_rectangle(targetx + random(w), targety + random(h), targetx + random(w), targety + random(h), 0);
}

